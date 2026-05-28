#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="youtingrui-paper-prompting"
DEST_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
DEST="$DEST_ROOT/$SKILL_NAME"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$DEST_ROOT"
rm -rf "$DEST"
mkdir -p "$DEST"

cp -R "$SRC_DIR"/. "$DEST"/
rm -rf "$DEST/.git"

echo "Installed $SKILL_NAME to $DEST"
