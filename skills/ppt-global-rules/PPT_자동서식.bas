Attribute VB_Name = "PPT_AutoFormat"
'============================================================
' PPT 자동 서식 매크로 (PPT 작성 전역지침 6항)
' 사용법: Alt+F11 > 파일 > 파일 가져오기 > 이 파일 선택
'         Alt+F8 > RunAllFormatting > 실행
' 저장: 매크로를 계속 쓰려면 .pptm 형식으로 저장
'============================================================
Option Explicit

Private Const MIN_FONT_SIZE As Single = 15   ' 최소 글자 크기(pt)
Private Const MARKERS As String = "□■○●◎◇◆-·※▶▷√"  ' 내어쓰기 기준 머리 기호

'---- 1. 전체를 한 번에 실행 ----
Public Sub RunAllFormatting()
    ApplyHangingIndent
    FixMinFontSize
    SetVideoAutoPlay
    MsgBox "내어쓰기, 최소 15pt 보정, 동영상 자동 재생 설정을 마쳤습니다.", vbInformation
End Sub

'---- 2. 자동 내어쓰기: 둘째 줄을 첫 글자 위치에 맞춤 ----
Public Sub ApplyHangingIndent()
    Dim sld As Slide, shp As Shape
    For Each sld In ActivePresentation.Slides
        For Each shp In sld.Shapes
            IndentShape shp
        Next shp
    Next sld
End Sub

Private Sub IndentShape(ByVal shp As Shape)
    Dim i As Long, r As Long, c As Long
    If shp.Type = msoGroup Then
        For i = 1 To shp.GroupItems.Count
            IndentShape shp.GroupItems(i)
        Next i
        Exit Sub
    End If
    If shp.HasTable Then
        For r = 1 To shp.Table.Rows.Count
            For c = 1 To shp.Table.Columns.Count
                IndentTextRange shp.Table.Cell(r, c).Shape.TextFrame2.TextRange
            Next c
        Next r
        Exit Sub
    End If
    If shp.HasTextFrame Then
        If shp.TextFrame2.HasText Then IndentTextRange shp.TextFrame2.TextRange
    End If
End Sub

Private Sub IndentTextRange(ByVal tr As TextRange2)
    Dim i As Long, p As TextRange2
    Dim baseLeft As Single, hang As Single
    Dim prefixLen As Long
    For i = 1 To tr.Paragraphs.Count
        Set p = tr.Paragraphs(i)
        If Len(Trim$(p.Text)) > 0 Then
            ' 첫 줄이 시작하는 위치(기존 들여쓰기 유지)
            baseLeft = p.ParagraphFormat.LeftIndent + p.ParagraphFormat.FirstLineIndent
            If baseLeft < 0 Then baseLeft = 0
            hang = 0
            If p.ParagraphFormat.Bullet.Visible = msoTrue Then
                ' PowerPoint 글머리표: 글자 크기 1.2배만큼 내어쓰기
                hang = p.Font.Size * 1.2
            Else
                prefixLen = MarkerPrefixLength(p.Text)
                If prefixLen > 0 Then hang = MeasurePrefix(p, prefixLen)
            End If
            If hang > 0 Then
                p.ParagraphFormat.LeftIndent = baseLeft + hang
                p.ParagraphFormat.FirstLineIndent = -hang
            End If
        End If
    Next i
End Sub

' "□ ", "○ ", "- ", "1. ", "가. ", "(1) " 등 머리 기호 + 공백 길이
Private Function MarkerPrefixLength(ByVal s As String) As Long
    Dim t As String, k As Long, lead As Long
    t = s
    Do While Len(t) > 0 And (Left$(t, 1) = " " Or Left$(t, 1) = vbTab)
        t = Mid$(t, 2): lead = lead + 1
    Loop
    If Len(t) < 2 Then Exit Function
    If InStr(MARKERS, Left$(t, 1)) > 0 Then
        k = 1
    ElseIf t Like "#.*" Or t Like "#)*" Then
        k = 2
    ElseIf t Like "##.*" Or t Like "##)*" Or t Like "(#)*" Then
        k = 3
    ElseIf Mid$(t, 2, 1) = "." Or Mid$(t, 2, 1) = ")" Then
        ' 가. 나. 다. / 가) 나) 형식(한 글자 + 점/괄호)
        If AscW(Left$(t, 1)) >= &HAC00 And AscW(Left$(t, 1)) <= &HD7A3 Then k = 2
    End If
    If k = 0 Then Exit Function
    ' 기호 뒤 공백까지 포함
    Do While k < Len(t) And Mid$(t, k + 1, 1) = " "
        k = k + 1
    Loop
    MarkerPrefixLength = lead + k
End Function

' 머리 기호의 실제 화면 너비(pt) 측정, 실패하면 글자 수로 근사
Private Function MeasurePrefix(ByVal p As TextRange2, ByVal n As Long) As Single
    Dim w As Single
    On Error Resume Next
    w = p.Characters(n + 1, 1).BoundLeft - p.Characters(1, 1).BoundLeft
    On Error GoTo 0
    If w <= 0 Then w = p.Font.Size * 0.9 * n
    MeasurePrefix = w
End Function

'---- 3. 최소 글자 크기 보정 (15pt 미만 -> 15pt) ----
Public Sub FixMinFontSize()
    Dim sld As Slide, shp As Shape
    For Each sld In ActivePresentation.Slides
        For Each shp In sld.Shapes
            FontShape shp
        Next shp
    Next sld
End Sub

Private Sub FontShape(ByVal shp As Shape)
    Dim i As Long, r As Long, c As Long
    If shp.Type = msoGroup Then
        For i = 1 To shp.GroupItems.Count
            FontShape shp.GroupItems(i)
        Next i
        Exit Sub
    End If
    If shp.HasTable Then
        For r = 1 To shp.Table.Rows.Count
            For c = 1 To shp.Table.Columns.Count
                FontRange shp.Table.Cell(r, c).Shape.TextFrame2.TextRange
            Next c
        Next r
        Exit Sub
    End If
    If shp.HasTextFrame Then
        If shp.TextFrame2.HasText Then FontRange shp.TextFrame2.TextRange
    End If
End Sub

Private Sub FontRange(ByVal tr As TextRange2)
    Dim i As Long
    For i = 1 To tr.Runs.Count
        If tr.Runs(i).Font.Size < MIN_FONT_SIZE Then tr.Runs(i).Font.Size = MIN_FONT_SIZE
    Next i
End Sub

'---- 4. 동영상 자동 재생: 슬라이드가 나타나면 바로 재생 ----
Public Sub SetVideoAutoPlay()
    Dim sld As Slide, shp As Shape
    For Each sld In ActivePresentation.Slides
        For Each shp In sld.Shapes
            If IsVideo(shp) Then MakeAutoPlay sld, shp
        Next shp
        ' 전환 효과 통일: 페이드 0.5초
        With sld.SlideShowTransition
            .EntryEffect = ppEffectFadeSmoothly
            .Duration = 0.5
        End With
    Next sld
End Sub

Private Function IsVideo(ByVal shp As Shape) As Boolean
    On Error Resume Next
    If shp.Type = msoMedia Then
        IsVideo = (shp.MediaType = ppMediaTypeMovie)
    ElseIf shp.Type = msoPlaceholder Then
        If shp.PlaceholderFormat.ContainedType = msoMedia Then
            IsVideo = (shp.MediaType = ppMediaTypeMovie)
        End If
    End If
    On Error GoTo 0
End Function

Private Sub MakeAutoPlay(ByVal sld As Slide, ByVal shp As Shape)
    Dim i As Long, eff As Effect
    ' 기존 재생 효과 제거(클릭 시 재생 등)
    For i = sld.TimeLine.MainSequence.Count To 1 Step -1
        Set eff = sld.TimeLine.MainSequence(i)
        If eff.Shape.Name = shp.Name And eff.EffectType = msoAnimEffectMediaPlay Then eff.Delete
    Next i
    ' 슬라이드 진입과 동시에 재생, 맨 앞 순서로 이동
    Set eff = sld.TimeLine.MainSequence.AddEffect(shp, msoAnimEffectMediaPlay, , msoAnimTriggerWithPrevious)
    eff.MoveTo 1
    On Error Resume Next
    shp.AnimationSettings.PlaySettings.PlayOnEntry = msoTrue
    shp.AnimationSettings.PlaySettings.HideWhileNotPlaying = msoFalse
    On Error GoTo 0
End Sub
