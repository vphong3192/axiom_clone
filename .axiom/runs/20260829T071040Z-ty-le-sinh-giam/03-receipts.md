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

## FIX-IT round 1 (2026-08-29) — both axes returned FIX-IT, addressed below

Both inspection reports were read in full before editing. No tool has a word
counter in this session (no shell available to me this round), so line/word
counts below are estimates from reading the file, not measurements — flagged
as such, per the instruction not to state a precise number I have not counted.

**Correction to this file's own prior claim (audited and found wrong by the
text inspector):** point 8 above said the post-pass body measured "~2.850
tokens." That number was self-reported and never independently checked; the
human-approved, gate-recorded figure for the same text is **2.704 từ**
(`00-brief.md`). I cannot resolve which of the two is right without a shell
to count — I am not restating either as fact here. After this round's edits
(net addition, see below), my best non-precise estimate is that the body sits
somewhere in the **high 2,700s to low 2,900s** words. I did not verify this
by machine count; treat it as a range, not a measurement.

1. **Hungary "gần gấp rưỡi" → "tăng khoảng 27%".** Fixed at the sentence
   reporting 1,25→1,59. 1,59÷1,25 = 1,27 = +27%; "gấp rưỡi" (×1,5) was wrong
   by roughly a factor of two. No other change to the surrounding numbers.
2. **Korea "giảm liên tục" fixed.** Now reads "TFR vẫn giảm, từ 1,08 (2005)
   qua một đỉnh tạm thời 1,24 (2015) xuống 0,72 (2023)" — matches
   `01-research.md` line 20 (2015 peak) and removes the contradiction with the
   "lần tăng thật đầu tiên sau 9 năm" sentence three lines later.
3. **Three confidence-table rows (Na Uy, Singapore, Hong Kong) — invented
   agency names removed.** Replaced "Cơ quan thống kê Na Uy / Singapore / Hong
   Kong, dẫn qua báo chí" with "Nguồn thứ cấp qua tìm kiếm; không xác định
   được cơ quan gốc trong phiên nghiên cứu" for all three, matching the honest
   pattern already used for the Korea-spending and China-TFR rows. Because the
   Norway row is the sole support for "chính sách tốt là điều kiện cần chứ
   không đủ," I also softened that in-body claim: added "— số liệu này qua
   nguồn thứ cấp, chưa xác định được cơ quan thống kê gốc" right before it,
   and changed "là điều kiện cần" to "dường như là điều kiện cần" so the
   claim's strength now matches what the sourcing can actually carry.
4. **"đầu 2026" → "8/2026" in both places it appeared** (body, in the Luật
   Dân số passage; and the matching confidence-table row). Matches
   `01-research.md` line 74 and the run date (2026-08-29). While in there, I
   also removed the two production-voice phrases in the same sentence ("dữ
   liệu thu thập cho bài này," "trong phiên viết bài này") and rewrote the
   framing so an August-2026 reader isn't told a late-2025 hearing is still
   forthcoming — it now says plainly that the draft has not been passed as of
   8/2026, per the data found, and to check the current status.
5. **France contradiction resolved.** The trunk's synthesis sentence
   previously said Pháp's decades "tích luỹ thành khác biệt lớn" (accumulated
   into the gap); the closing arithmetic said the same 25 years were spent
   only holding the gap, not creating it from zero. Since the closing
   argument depends on the second reading, I rewrote the synthesis sentence to
   match it: sustained spending "chỉ giữ được một khác biệt lớn... chứ không
   cho biết chính khoản chi này đã tạo ra khoảng cách đó ngay từ đầu." Both
   passages now say the same thing.
6. **Line ~158-160 (Vietnam "lower starting point") fixed.** The essay no
   longer claims Vietnam's 1,91 is a lower TFR than France's printed 1,8–1,9
   (it manifestly isn't). Reworded to contrast trajectory instead of level:
   Vietnam must reverse a falling TFR (1,91 and still falling), not just hold
   a level that has been comparatively stable for decades like France's.
7. **Window dates reconciled.** The aging-phase reference that previously said
   "trước khi bước hẳn vào giai đoạn già hoá dự kiến 2034" (implying 2034 as
   a second, competing closing date) now reads "trước khi cơ cấu vàng khép lại
   hẳn trong cửa sổ chồng lấn 2034–2036 đã nêu ở trên" — one window, not two
   dates. Also fixed the dangling antecedent at "dự kiến kéo dài đến 2049" by
   naming its subject explicitly ("giai đoạn già hoá này dự kiến kéo dài đến
   2049"). Added one sentence reconciling "cửa sổ chưa đóng hẳn" with "một
   thập kỷ có thể là quá ngắn": the window is open for the decision to invest,
   not for seeing the result — stated on the page, not left for the reader to
   infer.
8. **Repetition cut.** Removed the fourth, purely restated instance of the
   thesis in the closing sentence ("còn tiền mặt và khẩu hiệu đã được thử
   khắp khu vực mà không hiệu quả"), keeping the first three (failure
   catalogue close, trunk synthesis, bridge). Removed the duplicate "tác động
   cận biên của nó nhỏ" verdict from the paragraph immediately before the
   synthesis paragraph, keeping only the honest-limitation concession
   ("không có đủ bằng chứng để nói chính sách một mình giải thích được toàn
   bộ khoảng cách"). Also dropped the redundant "chưa đến một nửa, cụ thể"
   gloss beside the exact 40% figure.
9. **Causes movement expanded and illustrated.** Added a paragraph applying
   the McDonald mechanism to Vietnam's own already-sourced urban/rural TFR
   gap (1,67 vs 2,08, GSO 2024) — framed explicitly as an internal inference,
   not a new measurement, and added as its own confidence-table row. This
   directly answers the finding that the mechanism the whole trunk depends on
   had six unillustrated lines. I did not reinstate the 63%/8% figure cut in
   the previous round (still no specific agency/publication/year recoverable
   from research for it) — the illustration instead reuses data already in
   the table. I tightened the paragraph once after a self-check found it
   over-hedged (three separate disclaimers saying "this is inference, not
   measurement"); it now says so twice, not three times, to avoid repeating
   the exact repetition problem being fixed elsewhere. I did not attempt to
   force the body back to the approved 30/45/25 split exactly — at this
   length that would mean cutting sourced steelman material the same
   inspection called "genuinely argued, not staged," which the instructions
   for this round did not ask for and I did not take on unannounced.
10. **Line ~131 fixed.** "còn khẩu hiệu là hầu hết những gì đã có" (which
    contradicted the trunk's own "gỡ rào" classification of Pháp lệnh 07/2025,
    established two paragraphs earlier) is replaced with "còn biện pháp mới
    nhất của Việt Nam mới dừng ở gỡ rào chứ chưa phải đầu tư cấu trúc" — same
    bridge function, now consistent with the trunk.
11. **Jargon finished.** Removed "WebFetch", "egress", "log egress-proxy" from
    the confidence table (the two rows that still carried them: the Luật Dân
    số row and the closing B-ceiling row) and made the table header fully
    Vietnamese ("Nhận định | Mức độ tin cậy | Nguồn"). Grep-checked after
    editing: no instance of "WebFetch," "egress," or "đầu 2026" remains
    anywhere in the file.
12. **Steelman reordered, Hungary tightened.** Moved Hungary ahead of Doepke
    et al. so the pro-structural block now closes on Doepke's positive
    finding rather than on Hungary's unresolved tempo-vs-cohort dispute (the
    text inspector's complaint that the block "ends on its weakest item").
    Tightened Hungary from a double hedge ("cần đọc thận trọng hơn thế... vẫn
    mở, chưa ngã ngũ — không phải một thành công chính sách đã được xác nhận
    sạch sẽ theo hướng nào") to a single closing sentence ("Tranh cãi
    tempo-vs-cohort ở Hungary vẫn mở, chưa ngã ngũ."), making the point once.
    Also replaced the register outlier "Nhưng khoan đã:" with "Nhưng cần hỏi
    ngược lại:" and aligned the Singapore year between body and table
    ("0,97 (giữ nguyên từ 2023)").

**Opening reordered** (a finding, not separately numbered above): the
grade-B disclosure was the closing sentence of the opening block, meaning a
disclaimer was the last thing before the first heading. Split the opening
into three short paragraphs — the hook and figures, then the disclosure as
its own line, then the framing question last — so the question, not the
caveat, is what carries the reader into the first section.

**What I did not touch:** the argument structure, the choice of countries,
the steelman's substance, and any claim's grade. Every edit above is a local
wording, ordering, or table-provenance fix; no new source was opened (egress
remains blocked this run) and no claim was promoted above B.
