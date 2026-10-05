---
name: ppt-global-rules
description: "PPT·슬라이드·발표자료·프레젠테이션을 만들거나 고칠 때 항상 먼저 읽는 사용자 전역 디자인 지침. 제목 왼쪽 위 25pt, 본문 16pt, 최소 15pt, 흰 배경, 내용별 레이아웃(좌우 비교·단계·숫자 강조·카드·핵심 메시지), 발표자 멘트 '/' 끊어읽기, 동영상 자동 재생, 자동 내어쓰기 VBA 제공 규칙을 담는다. slide-master-ppt 스킬과 함께 적용하며 충돌 시 이 지침이 우선한다."
---
# PPT 작성 전역지침 (모든 PPT 작업에 항상 적용)


> 이 지침은 PPT·슬라이드·발표자료를 만드는 **모든 요청**에 적용한다.
> 사용자가 따로 다르게 말하지 않는 한 예외 없이 지킨다.

## 0. 사용 도구
- PPT 제작은 **`slide-master-ppt` 스킬**을 사용한다.
- 스킬의 기본값(글자 크기·색상 등)과 이 지침이 다르면 **이 지침을 우선**한다.

## 1. 모든 슬라이드 공통 디자인 규칙 (일관 유지)

| 항목 | 규칙 |
| --- | --- |
| 제목 위치 | 모든 슬라이드의 **왼쪽 위**에 같은 좌표로 고정 |
| 제목 글자 | **25pt**, 굵게, 최대 **2줄** |
| 본문 글자 | **16pt** 기준 |
| 최소 글자 | 슬라이드 안 모든 글자 **15pt 이상** (출처·주석 포함) |
| 배경 | **흰색** (#FFFFFF) |
| 폰트 | 맑은 고딕(Malgun Gothic) — 깔끔하고 가독성 높은 한국어 폰트 |
| 색상 | 기본 3색 + 강조 1색만 사용, 전 슬라이드 동일 팔레트 |
| 여백 | 상하좌우 여백 동일 값 유지(예: 좌우 60px, 상 40px, 하 40px / 1280×720 기준) |
| 도형 | 같은 모서리(둥근 정도)·같은 선 굵기·같은 그림자 여부로 통일 |
| 정렬 | 제목·본문 왼쪽 정렬 기준, 숫자 강조는 가운데 정렬 허용 |

### 권장 기본 팔레트
- 진한 남색(제목·주요 글자): #0B2545
- 기본 파랑(도형·구분): #1D4E89
- 본문 회색: #41536B
- 연한 바탕(카드 배경): #F4F7FB
- 강조 빨강(핵심 1곳만): #C1272D

## 2. 내용 성격별 레이아웃 선택 (같은 레이아웃 반복 금지)

| 내용 성격 | 레이아웃 |
| --- | --- |
| 비교 내용 | **좌우 비교** (왼쪽 A / 오른쪽 B) |
| 과정 설명 | **단계·프로세스** (①→②→③ 화살표 흐름) |
| 주요 수치 | **숫자 강조** (큰 숫자 + 짧은 설명) |
| 여러 항목 | **카드 형태** (2~4장 카드) |
| 핵심 결론 | **핵심 메시지 크게 강조** (화면 중앙 큰 문장 1개) |

- 기준(첫) 슬라이드의 디자인 스타일은 유지하고, **레이아웃만** 내용에 맞게 바꾼다.
- 연속된 두 슬라이드가 같은 레이아웃이 되지 않도록 배치한다.

## 3. 화면 구성 규칙
1. 본문 영역은 슬라이드당 **최대 3개**.
2. 한 슬라이드에는 **핵심 메시지 1개만** 강조한다.
3. 불필요한 **장식용 도형은 쓰지 않는다**.
4. 작은 글씨로 화면을 가득 채우지 않는다 — 한 화면 정보량을 줄인다.
5. 중요한 사실(숫자·결론)은 **시각적으로 크게** 강조한다.
6. **숫자와 사실은 원본 자료에 있는 것만** 쓴다(추정·가공 금지, 없으면 비워 두고 알림).
7. 한국어 단어가 **중간에서 어색하게 줄바꿈되지 않게** 한다.
   - 숫자+단위(3.4억 원, 50%), 날짜, 기관명은 한 줄에 둔다.
   - 넘치면 ① 문장 줄이기 → ② 상자 너비 조정 → ③ 강제 줄바꿈 순서로 해결.

## 4. 발표자용 멘트 (모든 슬라이드 노트에 작성)
- 끊어 읽을 곳에 **“ / ”** 를 넣는다.
- 생각 단위마다 **문단 줄바꿈(엔터)** 을 넣는다.
- 한 문단은 1~2문장, 소리 내어 읽기 쉬운 말투로 쓴다.

예시
```
오늘은 / 송도 아파트 세 채의 / 보유 현황을 말씀드리겠습니다.

먼저 / 공시가격 합계를 보시면 / 약 16억 6천만 원입니다.

다음 장에서 / 임대 수입을 / 자세히 보겠습니다.
```

## 5. 다음 장 전환 시 동영상 자동 재생
- 동영상이 들어간 모든 슬라이드는 **슬라이드가 나타나면 자동 재생**되게 설정한다.
  - 수동 설정: 동영상 선택 → [재생] 탭 → 시작: **자동 실행**
- 모든 슬라이드 전환은 동일 효과(예: 밝기 변화/페이드, 0.5초)로 통일한다.
- 일괄 설정은 아래 VBA의 `SetVideoAutoPlay`(동영상 자동재생)를 실행한다.

## 6. 자동 내어쓰기 VBA
- 파일: 같은 폴더의 `PPT_자동서식.bas` (없으면 이 문서 아래 VBA 원문을 사용)
- 들어 있는 기능 (PowerPoint에서 한 번에 실행 가능)
  1. `ApplyHangingIndent` (자동 내어쓰기) — 모든 텍스트 상자의 둘째 줄을 첫 글자 위치에 맞춤
  2. `SetVideoAutoPlay` (동영상 자동재생) — 모든 동영상을 슬라이드 진입 시 자동 재생
  3. `FixMinFontSize` (최소 15pt 보정) — 15pt 미만 글자를 15pt로 올림
  4. `RunAllFormatting` (전체 한 번에) — 위 3가지를 한 번에 실행
- 사용법(비개발자용)
  1. PowerPoint에서 `Alt + F11` → VBA 창 열림
  2. [파일] → [파일 가져오기] → `PPT_자동서식.bas` 선택
  3. `Alt + F8` → `RunAllFormatting` 선택 → [실행]
  4. 매크로 이름은 한글이 깨지지 않도록 영어로 지었다.
  5. 저장 시 매크로를 계속 쓰려면 `.pptm` 형식으로 저장

PPT를 만들 때마다 위 VBA 코드도 함께 제공한다.

## 7. 작성 후 점검표
- [ ] 모든 제목이 왼쪽 위 같은 위치, 25pt, 2줄 이내
- [ ] 본문 16pt, 모든 글자 15pt 이상
- [ ] 배경 흰색, 색상·여백·도형·정렬 통일
- [ ] 내용별 레이아웃이 다르고, 같은 레이아웃이 연속되지 않음
- [ ] 슬라이드당 본문 영역 3개 이하, 핵심 메시지 1개
- [ ] 장식용 도형 없음, 정보 과다 없음
- [ ] 모든 숫자·사실이 원본 자료와 일치
- [ ] 단어·숫자+단위가 줄 사이에서 끊긴 곳 없음
- [ ] 모든 슬라이드에 “/”·문단 구분된 발표자 멘트
- [ ] 동영상 자동 재생 설정, VBA 코드 함께 제공

## 부록: 자동 서식 VBA 원문

```vba
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
```
