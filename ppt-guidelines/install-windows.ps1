# PPT 전역지침을 이 PC의 Claude Code 전역지침(%USERPROFILE%\.claude\CLAUDE.md)에 등록한다.
# 여러 번 실행해도 한 번만 등록된다. 지침 파일이 바뀌면 다시 실행하면 최신본으로 갱신된다.
# 실행: 이 파일 우클릭 > "PowerShell에서 실행"
$ErrorActionPreference = "Stop"
$src  = Split-Path -Parent $MyInvocation.MyCommand.Path
$root = Join-Path $env:USERPROFILE ".claude"
$dest = Join-Path $root "ppt-guidelines"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item (Join-Path $src "PPT_작성_전역지침.md") $dest -Force
Copy-Item (Join-Path $src "PPT_자동서식.bas") $dest -Force
$claude = Join-Path $root "CLAUDE.md"
if (-not (Test-Path $claude)) { New-Item -ItemType File -Path $claude | Out-Null }
$line = "@~/.claude/ppt-guidelines/PPT_작성_전역지침.md"
$body = Get-Content $claude -Raw -Encoding UTF8
if ($null -eq $body -or -not $body.Contains($line)) {
    Add-Content -Path $claude -Value "`r`n# PPT 작성 전역지침`r`n$line" -Encoding UTF8
}
Write-Host "완료: $claude 에 PPT 전역지침이 등록되었습니다."
Read-Host "엔터를 누르면 창이 닫힙니다"
