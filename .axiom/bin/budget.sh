#!/usr/bin/env bash
# AXIOM v10 — budget check. Usage: .axiom/bin/budget.sh <run-dir> [body-min] [body-max]
#
# Recomputes what the artifacts actually weigh. Run it after every writing station.
# An agent's report of its own word count is a claim, not a measurement: on the first
# run of this script's own repo, a station reported "~1,290 words" for a body that
# measured 2,191. Budgets that are only written in prose do not hold.
#
# Counts are whitespace tokens — the same unit a word processor reports, and the unit
# a Vietnamese brief means by "từ".

set -uo pipefail
RUN="${1:-}"; MIN="${2:-}"; MAX="${3:-}"
[ -n "$RUN" ] && [ -d "$RUN" ] || { echo "budget: run dir not found: '${RUN}'" >&2; exit 2; }
RUN="${RUN%/}"; fail=0

count() { [ -f "$1" ] && wc -w < "$1" | tr -d ' ' || echo 0; }
# body = the deliverable up to its confidence table (that table is not the essay)
body_count() {
  local f="$1"; [ -f "$f" ] || { echo 0; return; }
  awk 'tolower($0) ~ /^#+ .*(bảng độ tin cậy|confidence table|ghi chú độ tin cậy)/{exit} {print}' "$f" | wc -w | tr -d ' '
}
row() { printf '  %-26s %6s  %s\n' "$1" "$2" "$3"; }

DELIV=$(find "$RUN" -maxdepth 1 -name '03-deliverable.*' -type f | sort | head -1)
BODY=$(body_count "$DELIV")

echo "AXIOM budget · $RUN"
row "01-research.md" "$(count "$RUN/01-research.md")" "≤ 2× body"
row "00-brief.md (incl. plan)" "$(count "$RUN/00-brief.md")" ""
row "03-deliverable body" "$BODY" "${MIN:+$MIN–$MAX}"
row "03-receipts.md" "$(count "$RUN/03-receipts.md")" "sidecar — not inspected as the work"

if [ -n "$MIN" ] && [ -n "$MAX" ]; then
  if [ "$BODY" -lt "$MIN" ] || [ "$BODY" -gt "$MAX" ]; then
    echo; echo "  BUDGET MISS · body is $BODY against $MIN–$MAX."
    echo "  This is a decision, not a formality: condense, or get the longer length approved."
    fail=1
  fi
fi
RES=$(count "$RUN/01-research.md")
if [ "$BODY" -gt 0 ] && [ "$RES" -gt $((BODY * 2)) ]; then
  echo "  NOTE · research ($RES) exceeds 2× the body ($BODY) — the fact store outweighs the work."
fi
[ "$fail" -eq 0 ] && echo && echo "  within budget." || true
exit $fail
