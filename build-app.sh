#!/bin/zsh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_NAME="Fresh Chrome.app"
APP_PATH="${SCRIPT_DIR}/${APP_NAME}"
APPLE_SCRIPT="${SCRIPT_DIR}/FreshChrome.applescript"

if ! command -v osacompile >/dev/null 2>&1; then
  echo "osacompile not found"
  exit 1
fi

rm -rf "${APP_PATH}"
osacompile -o "${APP_PATH}" "${APPLE_SCRIPT}"

echo "Built: ${APP_PATH}"
echo "Double-click '${APP_NAME}' to launch a fresh Chrome session."
