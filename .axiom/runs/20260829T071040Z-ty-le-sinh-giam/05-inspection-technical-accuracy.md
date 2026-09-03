# Inspection — Tỷ lệ sinh giảm: Việt Nam đang đi trên con đường nào?
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: 03-deliverable.md (direct, all 239 lines)

Verify scope:
- **External re-fetch: impossible this session.** Probed once — `WebFetch https://www.nber.org/papers/w29948` → `EGRESS_BLOCKED`. This matches the session-wide block recorded in `01-research.md` (lines 3–8: GSO, OECD, NIUSSP, thuvienphapluat.vn, vietnamnews.vn, PMC and example.com all blocked). **No source in this run can be promoted to grade A. B is the honest ceiling, and the essay says so (lines 10–12, table row 239). That is correct behaviour, not a defect, and I do not fail the work for it.**
- **What I did check, exhaustively:** every figure, date, span, agency name, ratio and comparative in the prose (lines 1–202) traced line-by-line against `01-research.md`; every arithmetic operation re-run by hand; all 32 confidence-table rows (lines 206–239) checked in both directions against the body; the six named trap conditions; all dates against the run date 2026-08-29.
- **Order of work:** findings below were reached from `03-deliverable.md` and `01-research.md` alone. `03-receipts.md` was opened only afterwards, and is audited as a claim (see "Receipts audit"), not used as a briefing.
- **Not checked (other axes):** prose style, sentence length, section proportions, overall word count.

## Findings

### [result] Two defects that are false or unsupported as shipped

**A1. "TFR đã giảm hai năm liên tiếp (1,96 rồi 1,91)" — line 200. Unsupported, and inconsistent with the essay's own opening.**
`01-research.md` records exactly two Vietnamese TFR values: 1,96 (2023) and 1,91 (2024) (research line 14). Two values evidence **one** decline. "Giảm hai năm liên tiếp" requires a 2022 figure that research never records — I grepped the deliverable: no 2022 datum appears anywhere. The essay's own lead states the series correctly as a single step: "TFR 1,91 con/phụ nữ năm 2024, **giảm từ 1,96 năm 2023**" (lines 5–6). The same two numbers are therefore characterised as one decline on line 5 and as two on line 200. Confidence-table row 208 supports only the one-step reading ("1,96 (2023) → 1,91 (2024)"), so the table does not carry the closing claim either. This is load-bearing: it is the final paragraph's contrast against France ("không phải một mức đã ổn định suốt hai thập kỷ như của Pháp").

**A2. "0,5–0,7 điểm TFR nằm ngay quanh mức sinh thay thế (2,1) ... ranh giới giữa một dân số tự thay thế và một dân số co lại" — lines 141–144, and table row 232 which asserts the same.**
The arithmetic producing 0,5–0,7 is correct (France 1,8–1,9 vs Italy ~1,3 / Spain ~1,2 → min 1,8−1,3 = 0,5; max 1,9−1,2 = 0,7 — verified against research lines 110–111). The inference built on it is not. A *difference* of 0,5–0,7 points does not "lie around" a *level* of 2,1; those are different quantities. And the demographic payoff is false on the essay's own figures: France, the high end of the gap, is 1,8–1,9 — itself below replacement. Closing the France–Italy gap moves no population across the 2,1 boundary, because neither side of the gap is at 2,1. The claim that this gap is "the line between a self-replacing population and one that shrinks across generations" is contradicted by the numbers three paragraphs above it.

**A3. Confidence table attributes figures to agencies research does not record for them.**
- Row 218 lists Angel Plan 1994 and the 2001 split (3,7% family vs 55,6% elderly) together with TFR 1,15 / 686.061 births, and sources the whole row to "Bộ Y tế, Lao động và Phúc lợi Nhật Bản (MHLW)". Research attributes MHLW **only** to the TFR/births bullet (research lines 22–24); the Angel Plan and 2001 budget-split figures appear in a separate bullet (research lines 94–98) with **no agency recorded at all**.
- Row 216 sources the full Korean series 1,08 (2005) → 1,24 (2015) → 0,72 (2023) → 0,75 (2024) to "Statistics Korea (KOSIS), công bố 26/2/2025". Research attributes that 26/2/2025 release only to the 0,72→0,75 pair (research lines 19–21); the 2005 and 2015 values come from an unattributed bullet (research lines 83–91).
- Row 237 sources both the 47,65% figure **and** the "50% threshold equivalence" to World Bank. Research records only the 47,65% as World Bank (research line 157); the 50% equivalence is the writer's own (correct) derivation.
This matters because the essay sets its own standard elsewhere and meets it — Singapore, Hong Kong, Norway and Hungary all carry an explicit "cơ quan thống kê gốc không xác định được" caveat (lines 82–84, 108–110, 127–128). Applying agency names by adjacency to comparable figures that research left unattributed is the same standard applied unevenly, in the direction of claiming more provenance than exists.

### [result] What checks out — everything else

Verified correct against research, same number, same year, same agency:
Vietnam TFR 1,91/1,96, 32/63 provinces, replacement 2,1, urban 1,67 / rural 2,08, Đông Nam Bộ 1,48, ĐBSCL 1,62, TP.HCM 1,39, Hà Giang 2,69, house prices Hà Nội ~70% / TP.HCM ~37% (2019–2024, VnExpress); Korea 1,08/1,24/0,72/0,75 + Statistics Korea 26/2/2025 + Yoon 2023 + "hàng trăm tỷ USD trong 15–20 năm" (correctly kept qualitative, exactly as research line 89 recommends after finding the totals irreconcilable at 155,7–283 tỷ USD); Japan Angel Plan 1994, 3,7%/55,6% (2001), Kishida 3/2023 ~22,3 tỷ USD/năm, TFR 1,15 (2024), 686.061 births, first under 700.000 since 1899; China 1979/1980 → 2016 → 20/8/2021, 9,54 triệu births 2024, +520.000 (internally consistent: implies 9,02M in 2023), first rise in 7 years, Dragon-year attribution; Singapore 13.000 SGD / 0,97; Hong Kong 20.000 HKD / 25.10.2023–24.10.2026 / 0,73 (2024); Taiwan 0,87 (2023); France 1,8–1,9 since 2000 / Italy ~1,3 / Spain ~1,2 / ~4% GDP / Duke Econ Honors 2025 + UN DESA; OECD 1.000 USD PPP ↔ +1,0–1,6% with the unit ambiguity flagged exactly as research left it; Doepke/Hannusch/Kindermann/Tertilt NBER WP 29948 (2022); Hungary 1,25 (2010) → 1,59 (2021), births 90.000 (2010) vs 92.000 (2020); Norway 1,98 (2009) → 1,40 (2023); Pháp lệnh 07/2025/UBTVQH15, UBTVQH khoá XV, passed and effective 3/6/2025, amending Điều 10 Pháp lệnh Dân số 2003; golden window ending 2036, 3 years earlier than the 2019 projection; overlap 2034–2036; ageing to 2049; super-aged 2050–2074; 47,65% (2024); World Bank *Vietnam: Adapting to an Aging Society* (2021), +1,4–4,6% GDP, −0,9 điểm phần trăm 2020–2050 vs the prior 15 years.

Arithmetic re-run and correct: 2,69/1,39 = 1,94 → "gần gấp đôi" ✓. 1,59/1,25 = +27,2% → "khoảng 27%" ✓. 2 workers : 1 dependent = 50% dependency ratio ✓ (and 50 − 47,65 = 2,35 points → "một khoảng ngắn" ✓). France−Italy/Spain gap 0,5–0,7 ✓ (the number; not the inference — A2). 2026 → 2036 ≈ "khoảng một thập kỷ" ✓. 9,54M − 0,52M = 9,02M ✓.

**No splice found** of the kind that produced the previously-cut "~25 năm" span: I grepped for it and for the 40% arithmetic — both are absent (line 200 excepted, see A1, which is the one remaining span-style overreach).

### [sources] Six trap conditions

1. **TFR vs crude birth rate vs absolute births — PASS.** Line 7 defines TFR as a single-year measure. China's rise is labelled "số ca sinh **tuyệt đối** tăng, không phải bằng chứng TFR tăng" (line 79). Korea's 0,75 is labelled a real TFR rise but attributed to post-COVID marriage rebound, not cash (lines 66–69). Hungary is the textbook case and is handled as one.
2. **Taiwan 2024 not quoted as firm — PASS.** Lines 85–88 name the conflict and state on the page that no 2024 TFR is used; table row 224 says the same.
3. **China TFR labelled a third-party estimate — PASS.** Lines 75–77 name World Bank and Trading Economics and state NBS does not publish a regular official figure; row 220 repeats it.
4. **Golden-window date read as a projection — PASS.** "dự kiến kết thúc năm 2036" plus an explicit sentence that this is a model projection, not an event that happened (lines 173–175); "dự kiến" applied consistently to 2034–2036 at both mentions (lines 175, 192); row 235 flags "là dự báo, không phải số đo".
5. **Pháp lệnh 07/2025 never conflated with the draft Luật Dân số — PASS.** Lines 160–162 separate them explicitly.
6. **Hungary left as a live dispute — PASS.** Government-cited evidence presented first, N-IUSSP's tempo rebuttal second, closing on "vẫn mở, chưa ngã ngũ" (lines 116–117).

### [plan] Attribution direction

Checked each named attribution against the position research records for that source. N-IUSSP: research (lines 133–137) records it arguing the rise is mostly tempo and treating the flat birth count as the *more reliable* indicator; the essay attributes exactly that (lines 110–114) — direction correct. Doepke et al.: research (lines 122–128) records the reversed employment–fertility correlation and a positive gender-equality/fertility relation; the essay attributes both, not the opposite. OECD: research records "small but non-zero"; essay says the same. Norway is used only as a limit on the pro-policy case (lines 125–128) — the direction research assigns it (research lines 141–145). No source is credited with a position research assigns to its opposite.

### [honesty] Table ↔ prose, both directions

No row asserts more than the body earns except A3's provenance and A2's row 232. Two body claims are load-bearing but under-covered by the table: the "hai năm liên tiếp" characterisation (A1, no row) and the second Doepke use at lines 40–44 ("mức sinh phục hồi đúng ở nơi bình đẳng giới trong gia đình tăng"), which is explicitly framed as the sturdier evidence for the whole mechanism while row 227 covers only the employment–fertility reversal. Every one of the 32 rows is graded B; none is C or D; no claim is dressed above its evidence-level.

## Receipts audit (opened after the findings above were fixed)

Verified true: the "~25 năm" splice and the 10÷25≈40% closing paragraph are gone (grep: zero matches); the France passages at lines 130–145 and 146–155 now both say the gap cannot be decomposed; Norway appears only as counter-example (line 104 lists "Đan Mạch và Thuỵ Điển"); Taiwan is restored with an on-the-page exclusion reason; the Hong Kong row carries only 0,73 (2024); the seven named jargon phrases return zero matches; no grade exceeds B. Line references in receipts run ~1 line ahead of the file throughout (e.g. the T20 row is at 232, not 233; Taiwan's row at 224, not 225) — cosmetic drift, not a false claim.

Two receipt assertions do **not** hold up:
- Receipts lines 36–37 call the closing "plain fact that Vietnam's TFR fell two years running (1,96→1,91, **already sourced**)". It is not already sourced — see A1. The receipt names the exact sentence I flag and certifies it, which is the reverse of the case.
- Receipts lines 72–73 state the migration/age-structure explanation "is now marked explicitly as the essay's own added point, not N-IUSSP's stated argument" (essay lines 114–116). `01-research.md` lines 135–137 place that explanation **inside** the N-IUSSP argument ("vì số phụ nữ trong độ tuổi sinh đẻ giảm do di cư và cơ cấu tuổi, tổng số ca sinh gần như đi ngang"). The essay therefore disclaims a point research does attribute to the source. This errs toward claiming *less* credit, so it is not a FIX-IT, but the receipt's account of it is wrong.

The two gaps receipts admit (T8 proportions, T17 sentence density) are outside this axis; I verified they are neither dressed up nor hidden — they are stated plainly. I did not find a third undisclosed gap on this axis beyond A1–A3.

## Minors (not FIX-IT — listed for the record, no re-inspection required)

- Line 3: "mức sinh **hiện tại** là 1,39" for a 2024 survey figure read in August 2026. The parenthetical names the survey, so no reader is misled; "hiện tại" is loose.
- Lines 40–44: "Doepke ... **ghi nhận** ... mức sinh phục hồi" reads as a documented finding; research (line 125) records it as what the authors **lập luận**. One notch stronger than the record; the surrounding hedges keep it inside B.
- Line 66: "lần tăng thật đầu tiên sau 9 năm" reproduces research line 19–20 verbatim. Read as "9 consecutive declining years" it is off by one against the essay's own 2015 peak (2016–2023 = 8 declines); read as "9 years after 2015" it is right. Research carries the same ambiguity, so this is inherited, not introduced.
- Line 3: research (lines 46–50) flags that TP.HCM's figure varies by release (1,35, or 1,43–1,60 from a different survey) and asked the writer to pin the year. The essay states 1,39 firmly against a named survey with no variance note, while flagging the analogous Taiwan conflict. The lead survives either way (2,69/1,55 is still "gần gấp đôi"), so this is presentation, not error.
- Line 85: "TFR **giữ** 0,87 năm 2023" implies a held-flat value; research records 0,87 for 2023 with no 2022 comparator.
- Line 81: Singapore's "13.000 SGD cho con thứ ba" drops research's "trở lên".
- Lines 162: the body states "tính đến tháng 8/2026, dự thảo này vẫn chưa được Quốc hội thông qua" flatly, while row 234 correctly caveats "chưa xác minh lại được tại nguồn gốc". Given egress is blocked, a current-status negative is an absence-of-evidence claim; the table hedges it and the body does not.

## Verdict: FIX-IT

Three defects are checkably false or unsupported as shipped. Everything else on this axis — every other figure, date, agency, span and ratio, all six trap conditions, and both directions of the confidence table — verified clean against `01-research.md`, and the essay's B ceiling is stated correctly and honestly.

Required fixes, complete list:

1. **Line 200** — remove or correct "đã giảm hai năm liên tiếp (1,96 rồi 1,91)". Research supports one recorded decline (2023 → 2024) and no 2022 figure. Either state it as the single decline the lead already states, or add a sourced 2022 value. The France contrast in the same sentence must be re-worded to match whichever is chosen. (Note for Assembly: `03-receipts.md` lines 36–37 certify this claim as "already sourced" — it is not.)
2. **Lines 141–144 and confidence-table row 232** — the claim that a 0,5–0,7-point *gap* "nằm ngay quanh mức sinh thay thế (2,1)" and marks "ranh giới giữa một dân số tự thay thế và một dân số co lại" is false on the essay's own figures: France at 1,8–1,9 is itself below 2,1, so neither end of the gap sits at replacement. Rewrite the demographic-significance argument so it does not depend on that boundary, or cut it. Row 232 must be rewritten with it.
3. **Confidence-table rows 216, 218, 237** — narrow each source cell to what `01-research.md` actually attributes, or add the same "cơ quan thống kê gốc không xác định được" caveat the essay already applies to Singapore, Hong Kong, Norway and Hungary:
   - row 218: MHLW covers TFR 1,15 (2024) and 686.061 births only — not Angel Plan 1994 and not the 2001 3,7%/55,6% split;
   - row 216: the Statistics Korea 26/2/2025 release covers 0,72 (2023) → 0,75 (2024) only — not the 2005 and 2015 values;
   - row 237: World Bank covers 47,65% (2024) only — the 50% threshold equivalence is the writer's derivation and should be marked as such (the derivation itself is arithmetically correct).

Not required, but if row 227 is touched anyway: it does not currently cover the second Doepke claim carried at lines 40–44.
