#!/usr/bin/env bash
# AXIOM v10 — prepare an inspection round. Usage: .axiom/bin/inspect-prep.sh <run-dir>
#
# Run this before EVERY inspection, including every re-inspection after a FIX-IT.
# It does the two things an orchestrator must not be trusted to remember:
#
#   1. Archives any existing 05-inspection*.md to .round<N>.bak. A previous round's
#      verdict left in place is readable by the gate as the current one — and the
#      fingerprint does not catch it, because the fingerprint proves the deliverable
#      has not changed since it was pinned, not that the report is about this draft.
#   2. Pins the fingerprint of the exact bytes about to be inspected.
#
# It prints the sha for the inspectors to record as `Inspected-sha:` in their reports.

set -uo pipefail
RUN="${1:-}"
[ -n "$RUN" ] && [ -d "$RUN" ] || { echo "inspect-prep: run dir not found: '${RUN}'" >&2; exit 2; }
RUN="${RUN%/}"

mapfile -t DELIV < <(find "$RUN" -maxdepth 1 -name '03-deliverable.*' -type f | sort)
[ ${#DELIV[@]} -gt 0 ] || { echo "inspect-prep: no 03-deliverable.* to inspect" >&2; exit 2; }

# next round number = one more than the highest already archived
n=1
for f in "$RUN"/05-inspection*.round*.bak; do
  [ -e "$f" ] || continue
  r=$(printf '%s' "$f" | sed -n 's/.*\.round\([0-9][0-9]*\)\.bak$/\1/p')
  [ -n "$r" ] && [ "$r" -ge "$n" ] && n=$((r + 1))
done

archived=0
for f in "$RUN"/05-inspection*.md; do
  [ -e "$f" ] || continue
  mv "$f" "${f%.md}.round${n}.bak"
  echo "  archived $(basename "$f") → $(basename "${f%.md}.round${n}.bak")"
  archived=$((archived + 1))
done
[ "$archived" -eq 0 ] && echo "  no previous reports to archive (round 1)"

( cd "$RUN" && sha256sum 03-deliverable.* > 05-inspection.sha )
SHA=$(awk '{print $1}' "$RUN/05-inspection.sha" | head -1)

echo "  pinned $(basename "${DELIV[0]}") @ ${SHA}"
echo
echo "Give every inspector this line to record in its report:"
echo "  Inspected-sha: ${SHA}"
