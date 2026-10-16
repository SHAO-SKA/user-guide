#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

POT_DIR="_build/gettext"

echo "==> Cleaning previous catalogs in ${POT_DIR}"
rm -rf "${POT_DIR}"

echo "==> Extracting gettext catalogs into ${POT_DIR}"
sphinx-build -b gettext . "${POT_DIR}"

echo "==> Updating locales/en from ${POT_DIR}"
sphinx-intl update -p "${POT_DIR}" -l en

echo "==> Done. Edit msgstr under locales/en/LC_MESSAGES/ then run: make html-en"
