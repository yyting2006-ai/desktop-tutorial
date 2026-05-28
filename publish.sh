#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: ./publish.sh <github-remote-url>"
  echo "Example: ./publish.sh git@github.com:YOUR_NAME/youtingrui-paper-prompting-skill.git"
  exit 1
fi

REMOTE_URL="$1"

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git branch -M main
git push -u origin main
