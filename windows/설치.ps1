# 諸葛亮 上疏 — 이 PC에 '매일 오전 9시 + 로그온 시' 자동 열기를 등록한다.
#
#   쓰는 법 : 이 파일에서 마우스 오른쪽 > "PowerShell에서 실행"
#   또는     : powershell -ExecutionPolicy Bypass -File "설치.ps1"
#
#   집 PC와 사무실 PC에서 각각 한 번씩 실행하면 된다.
#   관리자 권한은 필요 없다. (현재 사용자 계정에만 등록된다)

$ErrorActionPreference = 'Stop'

$TaskName = '제갈량상소문'
$Opener   = Join-Path $PSScriptRoot '열기.ps1'

if (-not (Test-Path -LiteralPath $Opener)) {
    Write-Error "열기.ps1 을 찾지 못했습니다. 같은 폴더에 두고 다시 실행하십시오. (찾은 곳: ${Opener})"
    exit 1
}

$action = New-ScheduledTaskAction `
    -Execute 'powershell.exe' `
    -Argument ('-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}"' -f $Opener)

# 오전 9시
$t1 = New-ScheduledTaskTrigger -Daily -At 9:00AM
# 로그온 1분 뒤 (9시에 PC가 꺼져 있었으면 켜자마자 뜬다)
$t2 = New-ScheduledTaskTrigger -AtLogOn
$t2.Delay = 'PT1M'

$settings = New-ScheduledTaskSettingsSet `
    -StartWhenAvailable `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -ExecutionTimeLimit (New-TimeSpan -Minutes 5)

if (Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue) {
    Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
    Write-Host "이미 있던 등록을 지우고 새로 등록합니다."
}

Register-ScheduledTask `
    -TaskName $TaskName `
    -Description '촉한 승상 제갈량이 올리는 오늘의 상소문을 연다.' `
    -Action $action `
    -Trigger @($t1, $t2) `
    -Settings $settings | Out-Null

$task = Get-ScheduledTask -TaskName $TaskName
$info = Get-ScheduledTaskInfo -TaskName $TaskName

Write-Host ""
Write-Host "등록을 마쳤습니다."
Write-Host ("  작업 이름  : {0}" -f $task.TaskName)
Write-Host ("  상태        : {0}" -f $task.State)
Write-Host ("  다음 실행   : {0}" -f $info.NextRunTime)
Write-Host ""
Write-Host "지금 바로 한 번 열어 보려면 :"
Write-Host ('  powershell -ExecutionPolicy Bypass -File "{0}" -Force' -f $Opener)
