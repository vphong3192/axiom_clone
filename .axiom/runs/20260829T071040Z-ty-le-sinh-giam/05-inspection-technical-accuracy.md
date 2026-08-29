# Inspection — Tỷ lệ sinh giảm: Việt Nam đang đi trên con đường nào?
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: 03-deliverable.md (direct, full file, before opening 03-receipts.md)

Verify scope:
- **External re-fetch: 0 of 0 possible.** One egress probe run at the start of this
  inspection — `WebFetch https://example.com` → `EGRESS_BLOCKED` ("Access to
  example.com is blocked by the network egress proxy"). Session-wide block, matching
  the preflight record in `00-brief.md` (Egress: BLOCKED, 2026-08-29T07:31:04Z). No
  source in `01-research.md` carries a URL, so there was nothing to re-fetch even had
  egress been open. **Nothing promoted to grade A. B is the ceiling for this run and
  the essay says so in the body (line 9–11) and in the last table row — correct.**
- **What I did check, exhaustively:** every numeric, date, agency name and quoted
  attribution in the ~2,890-word body traced line-by-line against `01-research.md`
  (56 figure/date/attribution instances); all arithmetic re-run by hand; all six named
  trap conditions; the confidence table cross-matched against the prose in both
  directions (prose→table for coverage, table→prose for orphan rows); `00-brief.md`
  scope/citation rules; `03-receipts.md` audited last, against the artifact.
- **What I could not check:** whether any figure is true at its origin. All findings
  below are traceability, internal-consistency and arithmetic findings, not
  source-truth findings.

## Findings

### [sources] No fabricated agency. This is the big one, and it is clean.
Every agency, publication and person named in the body appears in `01-research.md`:
GSO/Tổng cục Thống kê, VnExpress, *Lancet Regional Health – Western Pacific* (2025),
Statistics Korea/KOSIS (26/2/2025), MHLW, World Bank, Trading Economics, NBS, Duke
Economics Honors Thesis 2025, UN DESA, OECD *Society at a Glance* 2024 + the 2023
family-policy study, N-IUSSP, NBER WP 29948 (2022), UBTVQH khoá XV, Bộ Y tế, CAND/VTV/
VietNamNet, World Bank *Vietnam: Adapting to an Aging Society* (2021), Peter McDonald,
Yoon Suk-yeol, Kishida, Orbán, Đan Mạch/Na Uy/Thuỵ Điển. **No invented attribution
found.** The three rows that previously would have needed one (Na Uy, Singapore, Hong
Kong) instead say "không xác định được cơ quan gốc trong phiên nghiên cứu" — the
honest option, and it is visible in the artifact, not just claimed in receipts.

### [result] Arithmetic: all correct.
- Hungary "1,25 (2010) → 1,59 (2021) — tăng khoảng 27%": 1,59 ÷ 1,25 = 1,272 → **+27%. ✓**
  (Note: `01-research.md` pitfall #2 says "tăng gần gấp rưỡi", which is wrong by ~2×.
  The deliverable does **not** repeat research's error. Credit where due.)
- Opening "1,39 … 2,69 — gần gấp đôi": 2,69 ÷ 1,39 = 1,94. **✓**
- "Pháp hơn Ý và Tây Ban Nha tới 0,5–0,7 điểm TFR" from 1,8–1,9 vs 1,3 / 1,2:
  band is 0,5–0,7. **✓**
- Closing comparison "còn khoảng 10 năm … tức khoảng 40% (10 chia 25)": 2036 − 2026 = 10;
  10 ÷ 25 = 40%. **✓** (Denominator premise is a separate finding — see Fix 1.)
- Korea "lần tăng thật đầu tiên sau 9 năm" with the 2015 peak now printed: 2015→2024
  spans 9 years. Internally coherent. **✓**
- Dependency ratio 47,65% (2024) vs "hai người lao động gánh một người phụ thuộc"
  (=50%): consistent, no contradiction. **✓**

### [result] Six trap conditions: all six pass.
1. **TFR ≠ crude birth rate ≠ absolute births.** The essay never uses crude birth rate.
   Korea's 0,72→0,75 is called a real TFR rise; China's 9,54 triệu (+520.000) is stated
   flatly as "số ca sinh tuyệt đối tăng, không phải bằng chứng TFR tăng". The
   distinction is made explicitly on the page. **PASS**
2. **Taiwan 2024 TFR** — not quoted at all. The only Taiwan mention is qualitative
   (parental-leave law reform). Research's C-graded ~0,72 correctly held back. **PASS**
3. **China TFR labelled third-party** — "theo ước tính của bên thứ ba như World Bank và
   Trading Economics, vì Cục Thống kê Quốc gia Trung Quốc không công bố đều đặn một con
   số chính thức", range 1,0–1,15 (2021–2023), matching research line 100–101. Research's
   C-graded 2024/2025 forecast (~1,01–1,02) is not used. **PASS**
4. **Golden window 2036 read as projection** — "dự báo dân số mới nhất", "dự kiến kết
   thúc năm 2036", plus an explicit sentence: "Đây là một con số dự báo dựa trên mô hình
   dân số, không phải một mốc đã xảy ra." **PASS**
5. **Pháp lệnh 07/2025/UBTVQH15 vs Luật Dân số** — kept distinct in the body ("Nó cũng
   không phải Luật Dân số — văn bản đó vẫn là dự thảo…"), with the 8/2026 cutoff and a
   check-the-latest-status instruction; distinct rows in the table. Passage date
   3/6/2025, Điều 10, Pháp lệnh Dân số 2003, đảng viên clause — all match research
   lines 65–69. **PASS**
6. **Hungary as live dispute** — closes on "Tranh cãi tempo-vs-cohort ở Hungary vẫn mở,
   chưa ngã ngũ", both sides named. **PASS** (the *attribution inside* that paragraph is
   a separate finding — Fix 3.)

### [honesty] Grades: no A, no C, no D. Correct for this run.
34 table rows, all B, consistent with a zero-grade-A session. Research's two C-graded
items (Taiwan 2024 TFR; the Politburo notice date on NQ 21-NQ/TW) are both absent from
the deliverable — held back exactly as the grading rule requires. The one research
figure with no recoverable provenance (63% women / 8% men reducing work after birth,
research line 60–61, "dẫn theo báo trong nước") is also absent. Nothing leaked upward.

### [plan] Dates and cutoffs check out against the run date.
"tính đến 8/2026" (twice — body and table) is consistent with the run date 2026-08-29
and with research line 74. The Luật Dân số submission plan is generalised to "một kỳ
họp cuối 2025", weaker than research's conflicting 10/2025 vs 23/10/2025 — the
conservative choice, correct. All external dates match research: 26/2/2025, 20/8/2021,
3/6/2025, 25/10/2023–24/10/2026, 3/2023, 1899, 1979/1980, 2016.

---

## Required fixes

**Fix 1 — [result/sources] "Pháp duy trì mức chi khoảng 4% GDP đó liên tục từ năm 2000
đến nay — khoảng 25 năm" (line 173–174) is not in research, and it is the denominator
of the closing argument.**
`01-research.md` line 110–112 supports two separate things: (a) France's TFR held
1,8–1,9 *from 2000*, and (b) France spends *~4% GDP* on family policy — undated, no
time series. The essay splices the date from (a) onto the spend from (b) to manufacture
"25 năm đầu tư liên tục", then divides by it (10 ÷ 25 = 40%) in the paragraph the whole
ending turns on. The hedge that follows ("một phép so sánh thô về thời gian") covers the
*comparison*, not the *premise*. The table row labels the 25-year figure "suy luận nội
bộ" — but the body states it as flat fact.
*Fix:* either hedge the premise in the body the way the essay hedges its other
inferences ("mức chi ~4% GDP — nghiên cứu cho bài này không xác định được năm bắt đầu
của mức chi này…"), or drop the "liên tục từ năm 2000" claim and anchor the 25-year
denominator on something research actually records.

**Fix 2 — [sources] The steelman's load-bearing TFR values carry no year and no
issuing agency, while three other countries in the same essay get an explicit "agency
unknown" disclosure. The essay's own honesty standard is applied unevenly.**
"Pháp giữ TFR ở mức 1,8–1,9 suốt từ năm 2000 đến nay … so với Ý khoảng 1,3 và Tây Ban
Nha khoảng 1,2" (line 76–78) is present tense with no data year and no statistical
agency; the table sources it to "Duke Economics Honors Thesis 2025 (tổng hợp); UN DESA
policy brief" (the UN DESA brief itself has no year). Same gap for Hungary: 1,25 / 1,59
/ 90.000 / 92.000 have no issuing agency and the N-IUSSP analysis has no year. Contrast
Na Uy, which *does* get the inline caveat "số liệu này qua nguồn thứ cấp, chưa xác định
được cơ quan thống kê gốc". `00-brief.md` line 83–84 and the inspection plan (line 146)
require agency + publication + year on every figure precisely because research has no
URLs — and these four figures carry the essay's entire counter-evidence.
This matters beyond formatting: the 0,5–0,7 gap, and with it the steelman, is only as
current as those undated values. **Grade C, my own recall, unverifiable this session
because egress is blocked and I will not dress it as anything firmer:** France's TFR has
been reported near 1,6x for the most recent years rather than 1,8–1,9, and Italy near
1,2 rather than 1,3. I am not asserting the essay is wrong — I could not open a source
to find out. I am saying an undated present-tense "đến nay" on a figure with a known
staleness risk is exactly the claim that should carry its year.
*Fix:* attach the data year research supports to the France/Italy/Spain values (or say
plainly that the most recent year could not be verified), give the UN DESA brief a year
or mark it undetermined, and add the same treatment to the Hungary figures. Do not
invent an agency — Na Uy's wording is the model.

**Fix 3 — [sources] The Hungary paragraph puts the essay's own qualification into
N-IUSSP's mouth.**
Line 92–97: "phân tích trên N-IUSSP phản bác cách đọc đó **trên cả hai mặt**: [1] phần
lớn mức tăng TFR là hiệu ứng tempo …, **và** [2] bằng chứng hay đi kèm — số ca sinh gần
như đi ngang, 90.000 (2010) so với 92.000 (2020) — không chứng minh thêm được gì…".
Grammatically both prongs are N-IUSSP's rebuttal. But `01-research.md` (open-conflicts
section, line 242–246) records N-IUSSP's position as the opposite of prong [2]: the
skeptics hold that "hiệu ứng tempo **và số ca sinh không đổi mới là chỉ số đáng tin
hơn**" — the flat birth count is their evidence, not something they dismiss. The
*reasoning* in prong [2] (flat births are explained by a shrinking cohort of women of
childbearing age, so they are not independent proof) is sound and is supported by
research line 135–137 — but it is the essay's inference, not N-IUSSP's stated argument.
The table row inherits the same problem, sourcing "không phải bằng chứng trực tiếp cho
tempo" to "phân tích N-IUSSP (phản biện)".
*Fix:* split the two. Attribute the tempo argument to N-IUSSP; mark the birth-count
qualification as internal inference (the essay already does this cleanly twice
elsewhere — the McDonald urban/rural reading and the OECD/France reconciliation), and
correct the corresponding table row's source column.

**Fix 4 — [result] The opening glosses period TFR as completed lifetime fertility,
which is the exact distinction the Hungary paragraph later makes load-bearing.**
Line 3: "một phụ nữ trung bình sinh 1,39 con **trong đời**". Line 93 then explains that
a TFR rise is "không phải mức sinh trọn đời từng thế hệ tăng thật" — i.e. TFR is a
period measure, not lifetime/cohort fertility. Both statements are about the same
quantity and they cannot both stand. `01-research.md` records 1,39 only as
"TFR … con/phụ nữ", never as lifetime births. This is the essay's first sentence and its
hook, so it is worth getting right.
*Fix:* use the unit the rest of the essay uses ("1,39 con/phụ nữ", "mức sinh hiện tại
tương đương 1,39 con/phụ nữ") rather than "sinh … trong đời".

## Minor issues (not blocking on their own; fix while in there)

- Line 51–54: "Suốt khoảng 15–20 năm … **trong khi TFR vẫn giảm**, từ 1,08 (2005) qua
  một đỉnh tạm thời 1,24 (2015) xuống 0,72 (2023)" — the series *rose* ~15% over the
  first decade of that spending period. The peak is disclosed in the same sentence
  (good faith, and it fixes a worse earlier version), but "vẫn giảm" describes a net
  outcome as if it were an uninterrupted one. "kết thúc thấp hơn hẳn điểm xuất phát"
  or "giảm ròng" would be exact.
- The Korea table row prints "1,08 (2005) → 0,72 (2023) → 0,75 (2024)" and omits the
  1,24 (2015) peak the body relies on — so the table shows the monotone path the body
  just corrected. Add the 2015 point to the row.
- Singapore's 0,97 and Hong Kong's 0,73 appear in the body (line 70–72) with no
  attribution marker at all; the "agency unknown" disclosure exists only in the table.
  Na Uy got its caveat inline. Same treatment, or accept the table as sufficient for
  all three and drop Na Uy's inline caveat — but be consistent.
- Line 54: "Năm 2023, cựu Tổng thống Yoon Suk-yeol công khai gọi…" — he was the sitting
  president in 2023. Research has the same slip; the reader-facing fix is
  "Tổng thống Hàn Quốc khi đó, Yoon Suk-yeol,".
- Line 178: "(1,91 và tiếp tục giảm)" is a forward-looking assertion (research supports
  1,96→1,91, a two-point decline, and "mức thấp nhất trong lịch sử thống kê"). It has no
  table row. Either soften to the observed trend or add the row.
- Line 165–166: "khác với Hàn Quốc năm 2023 hay Nhật Bản năm 2005" — Japan's 2005 trough
  (1,26, research line 96) is never given in the body, so the reference is opaque and
  unsourced on the page.
- Line 19: "Đông Á, kể cả Việt Nam" — Vietnam is Southeast Asia; research frames the
  low-fertility trap as an Đông Á literature. A three-word fix ("Đông Á — và cả Việt
  Nam —").

## Receipts audit (opened after the findings above were fixed)

`03-receipts.md` claims 12 round-1 fixes plus 8 coach-pass changes. I checked each
against the artifact: **items 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12 and coach-points 2, 4,
5, 6, 8 are all visible in `03-deliverable.md` as described** — the 27% figure, the 2015
peak, the three "cơ quan gốc không xác định" rows, "8/2026" in both places, the
France synthesis rewrite, the trajectory-not-level contrast, the single 2034–2036
window, the McDonald urban/rural paragraph with its own table row, the "gỡ rào" bridge,
the absence of "WebFetch"/"egress"/"đầu 2026", and Hungary moved ahead of Doepke. The
dropped 63%/8% figure is genuinely gone from both body and table. Nothing in receipts
asserts a step I cannot see the result of, and receipts correctly declines to restate
its own unverified word count as fact.
Two notes: receipts point 3 says the Hungary flat-birth explanation is "attributed by
the same source" — that is precisely the attribution Fix 3 disputes, and the receipt
does not make it true. Receipts' word-count discussion is the `text` axis's business,
not mine; the human-approved length change is recorded in `00-brief.md`.

## Verdict: FIX-IT

No fabrication, no faked step, no leaked C or D, all arithmetic correct, and all six
named traps handled — this is a careful piece and the failure modes this axis most
fears are absent. But four defects are real and load-bearing, not cosmetic:

1. "Pháp duy trì mức chi ~4% GDP liên tục từ năm 2000 — khoảng 25 năm" is a splice of
   two separate research facts, stated as flat fact, and it is the denominator of the
   essay's closing arithmetic.
2. The France/Italy/Spain and Hungary figures — the entire steelman — carry no data
   year and no issuing agency, while Na Uy/Singapore/Hong Kong get an explicit
   provenance disclosure. Uneven application of the essay's own standard, on the
   numbers that matter most, against an explicit rule in `00-brief.md`.
3. The Hungary paragraph attributes to N-IUSSP a position research records as the
   opposite of that source's own argument; the table row repeats it.
4. The opening describes period TFR as lifetime fertility, contradicting the
   period-vs-cohort distinction the essay itself makes load-bearing 90 lines later.

Fix all four plus the seven minors, then re-inspect from scratch. Nothing here requires
new research or an open egress connection — all four are fixable against the existing
`01-research.md`, and none of them justifies promoting a single claim above B.
