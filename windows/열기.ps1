# 諸葛亮 上疏 — 오늘의 상소창을 기본 브라우저로 연다.
# 하루에 한 번만 연다. (오전 9시 트리거와 로그온 트리거가 겹쳐도 두 번 뜨지 않는다)
# 집 PC든 사무실 PC든 같은 주소를 열므로, 같은 날에는 같은 상소가 보인다.

$ErrorActionPreference = 'Stop'

$Url      = 'https://claude.ai/artifact/MYg7G3jhfjFVxSLrqYu83n'
$StateDir = Join-Path $env:LOCALAPPDATA 'ZhugeSangso'
$Marker   = Join-Path $StateDir 'last-open.txt'
$Today    = (Get-Date).ToString('yyyy-MM-dd')

if (-not (Test-Path -LiteralPath $StateDir)) {
    New-Item -ItemType Directory -Path $StateDir -Force | Out-Null
}

# -Force 를 주면 같은 날이라도 다시 연다.
$force = $args -contains '-Force'

if (-not $force -and (Test-Path -LiteralPath $Marker)) {
    $last = (Get-Content -LiteralPath $Marker -Raw -ErrorAction SilentlyContinue).Trim()
    if ($last -eq $Today) {
        Write-Host "${Today} 의 상소는 이미 펴 두었습니다. 다시 열려면 -Force 를 주십시오."
        exit 0
    }
}

Set-Content -LiteralPath $Marker -Value $Today -Encoding UTF8
Start-Process $Url
Write-Host "${Today} 의 상소창을 열었습니다."
