#!/usr/bin/env bash
# 전역지침(작업 규칙·PPT)을 이 PC의 Claude Code 전역지침(~/.claude/CLAUDE.md)에 등록한다.
# 여러 번 실행해도 한 번만 등록된다. 지침 파일이 바뀌면 다시 실행하면 최신본으로 갱신된다.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/ppt-guidelines"
mkdir -p "$DEST"
cp "$SRC/전역지침_작업규칙.md" "$SRC/PPT_작성_전역지침.md" "$SRC/PPT_자동서식.bas" "$DEST/"
touch "$HOME/.claude/CLAUDE.md"
for NAME in 전역지침_작업규칙.md PPT_작성_전역지침.md; do
  LINE="@~/.claude/ppt-guidelines/$NAME"
  if ! grep -qF "$LINE" "$HOME/.claude/CLAUDE.md"; then
    printf '\n%s\n' "$LINE" >> "$HOME/.claude/CLAUDE.md"
  fi
done
echo "완료: $HOME/.claude/CLAUDE.md 에 전역지침(작업 규칙·PPT)이 등록되었습니다."
