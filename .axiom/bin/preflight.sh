#!/usr/bin/env bash
# AXIOM v10 — preflight. Usage: .axiom/bin/preflight.sh [run-dir]
#
# Answers one question before the line starts: what truth-ceiling is reachable in
# this environment? Grade A means "a source was opened and read". Where egress is
# blocked, no claim in the whole run can legitimately reach A — and that is worth
# knowing at triage, not after a research station has already been spent on it.

set -uo pipefail
RUN="${1:-}"
probe() { curl -sS -o /dev/null -w '%{http_code}' --max-time 12 "$1" 2>/dev/null; }

open=0; blocked=0
for u in https://example.com https://en.wikipedia.org https://www.oecd.org; do
  code=$(probe "$u")
  if [ "$code" = "000" ] || [ -z "$code" ]; then blocked=$((blocked+1)); else open=$((open+1)); fi
done

echo "AXIOM preflight"
if [ "$open" -gt 0 ]; then
  ceiling="A"
  echo "  egress: OPEN ($open/3 probes reachable)"
  echo "  truth-ceiling: A — sources can be opened and read; grade A is earned, not assumed."
else
  ceiling="B"
  echo "  egress: BLOCKED (0/3 probes reachable)"
  echo "  truth-ceiling: B — no source can be opened at origin this session."
  echo
  echo "  What this means for the run:"
  echo "   - Research may use WebSearch (it does not use this session's egress) but"
  echo "     must cap every fact at B. A source read only as a search snippet is not A."
  echo "   - The technical-accuracy inspection axis cannot re-verify at source. Its job"
  echo "     becomes labelling and hedging discipline, not verification."
  echo "   - The deliverable must state the ceiling in its own body, not only in the"
  echo "     manifest. Shipping B-grade work is legitimate; hiding that it is B is not."
  echo "   - This is an environment network policy, not a fault to route around."
fi

if [ -n "$RUN" ] && [ -d "$RUN" ]; then
  { echo; echo "## Preflight"; echo;
    echo "- Egress: $([ "$open" -gt 0 ] && echo OPEN || echo BLOCKED) ($(date -u '+%Y-%m-%dT%H:%M:%SZ'))";
    echo "- Truth-ceiling for this run: **$ceiling**"; } >> "$RUN/00-brief.md"
  echo
  echo "  recorded in $RUN/00-brief.md"
fi
