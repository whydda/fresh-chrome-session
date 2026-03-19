#!/bin/zsh
set -euo pipefail

START_URL="${1:-about:blank}"

if [ ! -d "/Applications/Google Chrome.app" ]; then
  echo "Google Chrome.app not found in /Applications"
  exit 1
fi

PROFILE_DIR="$(mktemp -d /tmp/chrome-fresh-session.XXXXXX)"

echo "Launching Chrome with isolated profile: ${PROFILE_DIR}"
open -na "Google Chrome" --args \
  --user-data-dir="${PROFILE_DIR}" \
  --new-window \
  "${START_URL}"

echo "Done. This Chrome window uses a fresh session profile."
