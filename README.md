# Claude 전역지침 보관소

집·사무실 어디서나 같은 지침으로 Claude(챗·코워크·코드)를 쓰기 위한 저장소입니다.

## 들어 있는 것
| 파일 | 내용 |
| --- | --- |
| `ppt-guidelines/전역지침_작업규칙.md` | 응답·엑셀·한글(HWP) 작업 규칙 (개인정보 제외) |
| `ppt-guidelines/PPT_작성_전역지침.md` | PPT 작성 전역지침(원본) |
| `ppt-guidelines/PPT_자동서식.bas` | PowerPoint 자동 내어쓰기·동영상 자동재생·최소 15pt VBA |
| `ppt-global-rules.zip` | claude.ai에 올리는 스킬 파일(챗·코워크·코드 자동 동기화) |
| `CLAUDE.md` | 이 저장소로 여는 Claude Code에 지침 자동 적용 |
| `ppt-guidelines/install-*.ps1 / .sh` | 집·사무실 PC Claude Code 전역 등록 |

## 처음 한 번만 하면 되는 일
1. **챗·코워크·코드 공통(계정 동기화)**
   claude.ai → 설정 → 기능(Capabilities) → 스킬 → **스킬 업로드** → `ppt-global-rules.zip` 선택
   → 집·사무실 어느 기기에서 로그인해도 자동 적용됩니다.
2. **집 PC, 사무실 PC의 Claude Code(각 PC에서 1회)**
   이 저장소를 내려받은 뒤
   - 윈도우: `ppt-guidelines/install-windows.ps1` 우클릭 → PowerShell에서 실행
   - 맥: 터미널에서 `bash ppt-guidelines/install-mac-linux.sh`

## 지침을 고치고 싶을 때
`ppt-guidelines/PPT_작성_전역지침.md`를 고친 뒤 Claude에게
"스킬 zip 다시 만들고 저장해줘"라고 하면 됩니다. 이후 1번 업로드와 2번 실행만 다시 하면 됩니다.
