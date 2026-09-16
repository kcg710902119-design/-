# 諸葛亮 上疏 — 이 PC의 자동 열기 등록을 지운다. (상소창 자체는 그대로 남는다)

$ErrorActionPreference = 'Stop'
$TaskName = '제갈량상소문'

if (Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue) {
    Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
    Write-Host "${TaskName} 등록을 지웠습니다. 이 PC에서는 더 이상 자동으로 뜨지 않습니다."
} else {
    Write-Host "${TaskName} 등록이 없습니다. 지울 것이 없습니다."
}
