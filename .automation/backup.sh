#!/bin/bash
# Saves and uploads the vault to GitHub. Run every hour by macOS (launchd job "com.secondbrain.backup").
cd "$HOME/Second Brain" || exit 1
echo "--- $(date '+%Y-%m-%d %H:%M')"
/usr/bin/git add -A
if /usr/bin/git diff --cached --quiet; then
  echo "No changes to save."
else
  /usr/bin/git commit -q -m "Auto backup $(date '+%Y-%m-%d %H:%M')" && echo "Saved a new version."
fi
/usr/bin/git push -q origin main && echo "GitHub is up to date."
