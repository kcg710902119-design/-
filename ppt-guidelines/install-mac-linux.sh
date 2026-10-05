#!/usr/bin/env bash
# PPT 전역지침을 이 PC의 Claude Code 전역지침(~/.claude/CLAUDE.md)에 등록한다.
# 여러 번 실행해도 한 번만 등록된다. 지침 파일이 바뀌면 다시 실행하면 최신본으로 갱신된다.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/ppt-guidelines"
mkdir -p "$DEST"
cp "$SRC/PPT_작성_전역지침.md" "$SRC/PPT_자동서식.bas" "$DEST/"
LINE='@~/.claude/ppt-guidelines/PPT_작성_전역지침.md'
touch "$HOME/.claude/CLAUDE.md"
if ! grep -qF "$LINE" "$HOME/.claude/CLAUDE.md"; then
  printf '\n# PPT 작성 전역지침\n%s\n' "$LINE" >> "$HOME/.claude/CLAUDE.md"
fi
echo "완료: $HOME/.claude/CLAUDE.md 에 PPT 전역지침이 등록되었습니다."
