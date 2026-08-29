# Receipts — coach improvement pass (2026-08-29)

Sidecar file. Not part of the published artifact and not required reading for the
inspector's verdict — `03-deliverable.md` now contains only the essay and the
confidence table, so the inspector's judgment isn't pre-briefed by this file
(fixes the R5 risk `04-coach.md` flagged: the old in-file "Receipts" section told
the inspector, in the same document it was grading, that every criterion had
already been met).

## ⚠️ Deviation found during this pass — flagged, not silently fixed (Axiom 7/8)

While rewriting, I measured the body's actual length directly (space-separated
tokens, via `rg -o '\S+' | count`) instead of trusting the prior self-reported
figure. Two numbers, both measured the same way for calibration:

- `01-research.md`: self-reported "3.488 từ" in `00-brief.md`; directly measured
  **3.617 tokens** — within ~4%, confirming this pipeline's "từ" count is plain
  space-token counting (the same convention MS Word/Google Docs use for
  Vietnamese), not linguistic word-segmentation.
- `03-deliverable.md` body (everything above "## Bảng độ tin cậy"), same method,
  measured **after** this pass: **~2.850 tokens**. The pre-existing body (before
  this pass) I reconstructed the same way comes to roughly **~2.300 tokens**.

Either number is **not** "1.290 từ" as the previous `Receipts` section claimed —
that self-report was off by roughly 2×, and it went unquestioned through design,
assembly's own audit, and the coach pass (which correctly *suspected* the
convention was shaky in Honesty #4, but did not measure it). The approved budget
for this run is 1050–1450 words. The body is **not** in that range** even after
this pass's trims (removing the 63%/8% figure, shortening the opening,
compressing the Singapore/Hong Kong sentence saved roughly 150–200 tokens total)
— because the additions the coach required (the France–Italy reconciliation,
the corrected Hungary causal chain, the Luật Dân số cutoff note, and the "wow"
arithmetic paragraph) add back roughly as many tokens as were cut, and the
pre-existing body was already ~900 tokens over the ceiling before any of that.

**What I did with this finding:** I did not perform an emergency 50%+ rewrite to
force the number down, for two reasons: (1) it was not part of the eight
numbered instructions for this pass, and unilaterally taking it on would itself
be an unannounced scope change (Axiom 8); (2) the parent instruction for this
pass explicitly said "cut repetition, never load-bearing evidence" — at this
essay's density, a cut of that size would have to remove sourced, attributed
claims, which is exactly what was ruled out. **Recommendation:** this needs an
explicit decision at the next gate — either accept the longer length as a scope
amendment for a data-dense comparative piece (and correct the stated budget), or
commission a dedicated condensation pass with its own budget. I am surfacing
this in my final response to the orchestrator, not just in this file.

## What changed, by numbered point

1. **Receipts moved out.** The old `### Receipts` section (including the lines
   that pre-answered inspection criteria — "steelman viết ở mức mạnh nhất",
   "Hungary trình bày là tranh cãi mở", tool names) is gone from
   `03-deliverable.md`. This file replaces it. `03-deliverable.md` now ends with
   the confidence table.
2. **Steelman's strongest line answered.** Added a paragraph directly after the
   Na Uy sentence that asks "is 0,5–0,7 TFR really 'small'?" and answers it: the
   OECD figure is a *marginal* per-$1,000 effect, France's spend is a *sustained,
   cumulative, multi-decade* one — the two aren't the same unit, so they don't
   contradict — but the essay also states plainly that this reconciliation does
   **not** prove policy explains the whole 0,5–0,7 gap, since the research this
   piece draws on doesn't quantify labor-market structure, youth unemployment or
   family norms as confounders. Restructured so Na Uy no longer closes the
   steelman block: it now opens the qualifying paragraph that follows the
   steelman, so the pro-structural-policy evidence (France, OECD, Doepke,
   Hungary) gets to finish its own block before being qualified.
3. **Hungary causal slip fixed.** The essay no longer says births went flat
   *because of* the tempo effect. It now says N-IUSSP's tempo explanation is
   about the TFR rise (women bunching births later), and separately, that the
   flat birth count is attributed by the same source mainly to a shrinking
   cohort of women of childbearing age (migration, age structure) — not
   presented as proof of tempo. The essay now says this makes the tempo-vs-cohort
   dispute more open, not less, matching `01-research.md`.
4. **63%/8% figure dropped.** No agency, publication or year was recoverable
   from `01-research.md` ("khảo sát trong nước dẫn lại" only). Cut the sentence
   entirely rather than keep it bare; removed the matching row from the
   confidence table. The McDonald-theory paragraph now ends one sentence earlier
   without it — no replacement claim was substituted in its place.
5. **OECD unit ambiguity resolved by disclosure.** The sentence and the
   confidence-table row now say the source doesn't specify whether "1,0–1,6%" is
   relative-percent or percentage-points of TFR, and instruct reading it as a
   rough band, not a precise constant. No new number was invented.
6. **Luật Dân số cutoff stated.** The sentence now says plainly that "cuối 2025"
   is the position found during research (early 2026), not verified against the
   current (mid/late-2026) status, and that the reader should check the latest
   status themselves. Same caveat added to the matching confidence-table row.
7. **Opening trimmed.** Cut from ~180 words / three disclosure sentences to one
   plain-language disclosure sentence with no tool names ("WebFetch",
   "egress-proxy" removed) — it now says only that every figure was checked
   across secondary sources but never opened at the source, hence grade B not A.
8. **Wow taken.** Added a paragraph after the "cửa sổ chưa đóng hẳn" line that
   multiplies the two numbers already in the piece: France sustained its ~4%-
   GDP family policy for roughly 25 years just to *hold* its lead over southern
   Europe; Vietnam's remaining window before the aging phase begins is roughly
   10 years (to 2036) — about 40% of that (10÷25 shown explicitly, not just
   asserted) — to do more than hold, starting from a lower and falling TFR. Kept
   at grade B, labeled explicitly as a rough time comparison and not a
   demographic forecasting model (no claim that structural effects accumulate
   linearly was invented). Both new inferential rows were added to the
   confidence table (grade B, sourced as "internal inference from two rows
   already in this table," not a new external fact).

Other confidence-table edits made as a direct consequence of 3, 4, 5 and 6
above (Hungary row, OECD row, Luật Dân số row) are listed in the diff; no other
rows were touched, and no claim's grade was raised or lowered without a reason
tied to one of the eight points.
