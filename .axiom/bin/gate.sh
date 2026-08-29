#!/usr/bin/env bash
# AXIOM v10 — Safety Gate. Deterministic; do not reason past a FAIL.
#
#   .axiom/bin/gate.sh <run-dir>              full gate (requires human sign-off)
#   .axiom/bin/gate.sh --pre-signoff <run-dir>  checks 1-3 only, before asking the human
#
# Exit 0 = gate open. Non-zero = gate shut.

set -uo pipefail

PRE=0
if [ "${1:-}" = "--pre-signoff" ]; then PRE=1; shift; fi
RUN="${1:-}"

[ -n "$RUN" ] && [ -d "$RUN" ] || { echo "GATE SHUT · run dir not found: '${RUN}'"; exit 2; }
RUN="${RUN%/}"

fail=0
ok()   { printf '  \033[32mok\033[0m    %s\n' "$1"; }
bad()  { printf '  \033[31mFAIL\033[0m  %s\n' "$1"; fail=1; }

echo "AXIOM gate · $RUN"

# --- 0 · the deliverable itself -----------------------------------------------
mapfile -t DELIV < <(find "$RUN" -maxdepth 1 -name '03-deliverable.*' -type f | sort)
if [ ${#DELIV[@]} -eq 0 ]; then
  bad "no 03-deliverable.* in the run folder — nothing to ship"
else
  ok "deliverable: $(printf '%s ' "$(basename "${DELIV[0]}")")"
fi

# --- 1 · inspection artifacts exist and carry a real verdict -------------------
mapfile -t INSP < <(find "$RUN" -maxdepth 1 -name '05-inspection*.md' -type f | sort)
if [ ${#INSP[@]} -eq 0 ]; then
  bad "no 05-inspection*.md — the inspection did not run (R4)"
else
  for f in "${INSP[@]}"; do
    b=$(basename "$f")
    grep -qi '^Inspector:' "$f" \
      || bad "$b · no 'Inspector:' line — cannot confirm the inspector wrote this"
    v=$(grep -m1 '^##[[:space:]]*Verdict' "$f" | grep -oE 'PASS|FIX-IT|REJECT' | head -1)
    case "$v" in
      PASS)   ok "$b · PASS" ;;
      "")     bad "$b · no parsable '## Verdict:' line" ;;
      *)      bad "$b · verdict is $v — back to Assembly, then re-inspect from scratch" ;;
    esac
  done
fi

# --- 2 · the inspected bytes are the shipping bytes ----------------------------
SHA="$RUN/05-inspection.sha"
if [ ! -f "$SHA" ]; then
  bad "05-inspection.sha missing — no fingerprint was taken before inspecting"
elif [ ${#DELIV[@]} -gt 0 ]; then
  recorded=$(awk '{print $1}' "$SHA" | sort | tr '\n' ' ')
  actual=$(sha256sum "${DELIV[@]}" | awk '{print $1}' | sort | tr '\n' ' ')
  if [ "$recorded" = "$actual" ]; then
    ok "fingerprint matches — inspected bytes == shipping bytes"
  else
    bad "fingerprint MISMATCH — the deliverable changed after inspection; re-inspect"
  fi
fi

# --- 3 · the human sign-off ----------------------------------------------------
if [ "$PRE" -eq 1 ]; then
  printf '  \033[33m--\033[0m    sign-off not checked (--pre-signoff)\n'
elif [ ! -s "$RUN/06-signoff.md" ]; then
  bad "06-signoff.md missing or empty — the human principal has not approved"
else
  ok "human sign-off recorded"
fi

echo
if [ "$fail" -eq 0 ]; then
  [ "$PRE" -eq 1 ] && echo "GATE READY · checks 1-3 pass; now present the proof package for sign-off." \
                   || echo "GATE OPEN · ship it, with the proof package attached."
  exit 0
fi
echo "GATE SHUT · do not ship. Fix the FAIL lines above and re-run."
exit 1
