#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PO_ROOT="${ROOT}/locales/en/LC_MESSAGES"

if [[ ! -d "${PO_ROOT}" ]]; then
  echo "Missing ${PO_ROOT}" >&2
  exit 1
fi

cd "$ROOT"

# Count fuzzy entries (msgctxt/msgid blocks marked fuzzy)
fuzzy_count="$(grep -R --include='*.po' -c '^#, fuzzy' "${PO_ROOT}" 2>/dev/null \
  | awk -F: '{s+=$2} END {print s+0}')"

# Count empty msgstr "" that are real translations (single-line empty after msgid).
# Heuristic: lines that are exactly msgstr "" and not the header (header is first msgstr in file).
# Use msgattrib if available; else Python for accuracy.
if command -v msgattrib >/dev/null 2>&1; then
  untranslated_count="$(find "${PO_ROOT}" -name '*.po' -print0 \
    | xargs -0 -I{} msgattrib --untranslated --no-wrap {} 2>/dev/null \
    | grep -c '^msgid ' || true)"
else
  untranslated_count="$(python3 - <<'PY'
from pathlib import Path

def entry_text(lines, prefix):
    parts = []
    mode = False
    for line in lines:
        if line.startswith(prefix):
            mode = True
            rest = line[len(prefix):].strip()
            if rest.startswith('"') and rest.endswith('"'):
                parts.append(rest[1:-1])
            continue
        if mode and line.startswith('"') and line.endswith('"'):
            parts.append(line[1:-1])
            continue
        if mode:
            break
    return "".join(parts)

n = 0
for po in Path("locales/en/LC_MESSAGES").rglob("*.po"):
    blocks = po.read_text(encoding="utf-8").split("\n\n")
    for block in blocks:
        lines = block.splitlines()
        if not any(l.startswith("msgid ") for l in lines):
            continue
        mid = entry_text(lines, "msgid ")
        mstr = entry_text(lines, "msgstr ")
        if mid == "":
            continue  # header
        if mstr == "":
            n += 1
print(n)
PY
)"
fi

echo "## Translation progress (locales/en)"
echo
echo "| Metric | Count |"
echo "|--------|------:|"
echo "| fuzzy | ${fuzzy_count} |"
echo "| untranslated (empty msgstr) | ${untranslated_count} |"
echo
echo "Untranslated/fuzzy do not fail the build (by design)."
exit 0
