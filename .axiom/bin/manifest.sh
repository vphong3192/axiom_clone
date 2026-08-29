#!/usr/bin/env bash
# AXIOM v10 — proof-package generator.  Usage: .axiom/bin/manifest.sh <run-dir>
#
# Writes <run-dir>/manifest.md from what is actually on disk: the deliverable's own
# confidence table, the receipts index with fingerprints, every verdict, the declared
# verify scope, and the human sign-off. Everything here is mechanical — nothing is
# re-narrated by a model, so the manifest cannot drift from the artifacts (R4).

set -uo pipefail
RUN="${1:-}"
[ -n "$RUN" ] && [ -d "$RUN" ] || { echo "manifest: run dir not found: '${RUN}'" >&2; exit 2; }
RUN="${RUN%/}"
OUT="$RUN/manifest.md"
DELIV=$(find "$RUN" -maxdepth 1 -name '03-deliverable.*' -type f | sort | head -1)

{
  echo "# Proof package — $(basename "$RUN")"
  echo
  echo "Generated $(date -u '+%Y-%m-%dT%H:%M:%SZ') by \`.axiom/bin/manifest.sh\` from the"
  echo "artifacts on disk. Nothing below is re-narrated from memory."
  echo

  echo "## Confidence list"
  echo
  if [ -n "$DELIV" ] && grep -qiE '^#{2,4} .*(confidence|tin c)' "$DELIV"; then
    awk 'BEGIN{p=0} /^#+ .*([Cc]onfidence|tin c)/{p=1} p' "$DELIV"
  else
    echo "> **Missing.** The deliverable has no confidence section. Assembly must end"
    echo "> \`03-deliverable.*\` with a claim · grade · source table (Axioms 5, 6)."
  fi
  echo

  echo "## Assumptions"
  echo
  if [ -n "$DELIV" ] && grep -qiE '^#{2,4} .*([Aa]ssumption|[Gg]iả định)' "$DELIV"; then
    awk 'BEGIN{p=0} /^#+ .*([Aa]ssumption|[Gg]i)/{p=1;next} /^#+ /{p=0} p' "$DELIV"
  else
    echo "_None stated in the deliverable._  <!-- orchestrator: replace if any assumption is open -->"
  fi
  echo

  echo "## Verdicts"
  echo
  found=0
  for f in "$RUN"/05-inspection*.md; do
    [ -f "$f" ] || continue
    case "$f" in *.sha) continue;; esac
    found=1
    v=$(grep -m1 '^##[[:space:]]*Verdict' "$f" | grep -oE 'PASS|FIX-IT|REJECT' | head -1)
    ax=$(grep -m1 -i '^Axis:' "$f" | sed 's/^[Aa]xis:[[:space:]]*//')
    echo "- \`$(basename "$f")\` — **${v:-UNPARSED}**${ax:+ · axis: ${ax}}"
    grep -m1 -i '^Verify scope:' "$f" | sed 's/^/  - /'
  done
  [ "$found" -eq 1 ] || echo "- **none** — no inspection artifact exists (the gate will stay shut)."
  echo

  echo "## Receipts index"
  echo
  echo "| file | bytes | sha256 (first 12) |"
  echo "|---|---:|---|"
  find "$RUN" -maxdepth 1 -type f ! -name 'manifest.md' | sort | while read -r f; do
    printf '| `%s` | %s | `%s` |\n' "$(basename "$f")" "$(wc -c <"$f")" "$(sha256sum "$f" | cut -c1-12)"
  done
  echo

  echo "## Verification limits"
  echo
  echo "- Every check in this pipeline was run by **same-family models**. That removes"
  echo "  only part of a shared blind spot: a mistake the whole model family makes is"
  echo "  one no station here can catch. A different-vendor model — or your own eyes —"
  echo "  remains the last valuable gate."
  echo "- Maker and inspector ran on **different** models (\`/axiom\` enforces this)."
  echo "- Grade **A** means a source was opened and read during this run. Where the"
  echo "  inspection reports a blocked fetch, the truth-ceiling for those claims is **B**."
  echo

  echo "## Human sign-off"
  echo
  if [ -s "$RUN/06-signoff.md" ]; then
    sed 's/^/> /' "$RUN/06-signoff.md"
  else
    echo "> **Not signed off.** Nothing may ship until the human principal approves"
    echo "> (\`06-signoff.md\`)."
  fi
} > "$OUT"

echo "manifest: wrote $OUT ($(wc -w <"$OUT") words)"
