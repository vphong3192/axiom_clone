# Inspection — Tỷ lệ sinh giảm: Việt Nam đang đi trên con đường nào?
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: `03-deliverable.md` (direct, full text, body + confidence table)

Verify scope:
- **External re-fetch: 0 sources opened. Attempted and blocked.** One probe run at the
  start of this pass: `WebFetch https://example.com` → `EGRESS_BLOCKED`. Consistent with
  the run-wide diagnosis in `00-brief.md` ("Chẩn đoán egress"): every host 403s at the
  proxy, Bash `curl` identically. **No claim in this artifact can be promoted to grade A
  by me, and I do not treat the absence of grade A as a defect** — B is the honest
  ceiling for this run and the essay says so in the body (lines 9–11) and in the last
  table row.
- **What I could check, and did, exhaustively:** every numeral, year, date, agency name
  and legal-document identifier in the body traced one-by-one against `01-research.md`
  (39 distinct figures/dates); every confidence-table row (26 rows) matched back to both
  the prose and research; all four arithmetic operations the argument rests on re-run by
  hand; internal consistency of the prose against itself.
- **What I could not check:** whether `01-research.md` itself is true. Research is
  snippet-derived, unopened at source, self-declared B. My findings below are therefore
  "the essay is/is not faithful to its fact store and to arithmetic", never "the world
  is thus".
- Read after forming findings, as an audit target only: `03-receipts.md`. Read for plan
  conformance: `00-brief.md`. Targeted grep only: `04-coach.md`.

## Findings

### [result] Arithmetic — three of four calculations are correct; the fourth is a real error

Re-run by hand:

- **The load-bearing France-vs-Vietnam time comparison (¶ lines 154–160): correct.**
  France ~4% GDP sustained "từ năm 2000 đến nay — khoảng 25 năm": 2026 − 2000 = 26, so
  "khoảng 25" is fair. Vietnam's window "đóng năm 2036 — còn khoảng 10 năm": 2036 − 2026
  = 10 ✓. The ratio: 10 ÷ 25 = 0,40 = **40%** ✓, and 40% is indeed "chưa đến một nửa" ✓.
  Robust to the alternative denominator too (10 ÷ 26 = 38,5%, still ≈40%). The essay
  shows the division explicitly rather than asserting the result, and labels it "một
  phép so sánh thô về thời gian, không phải một mô hình dự báo" with an explicit denial
  that structural effects accumulate linearly. This paragraph passes cleanly.
- **France–Italy/Spain gap "0,5–0,7 điểm TFR": correct.** From research's own figures
  (France 1,8–1,9; Italy ~1,3; Spain ~1,2): min 1,8 − 1,3 = 0,5; max 1,9 − 1,2 = 0,7 ✓.
- **Intro "1,39 vs 2,69 — gần gấp đôi": correct.** 2,69 ÷ 1,39 = 1,94 ✓.
- **FINDING 1 (fix required). Hungary "1,25 (2010) lên 1,59 (2021) — gần gấp rưỡi"
  (line 81) is arithmetically wrong.** 1,59 ÷ 1,25 = **1,27**, i.e. a rise of ~27%.
  "Gấp rưỡi" is ×1,5, which from 1,25 would require 1,875. "Gần gấp rưỡi" overstates the
  magnitude by roughly a factor of two, and the two numbers sit in the same sentence, so
  the sentence refutes itself to any reader who divides. Note: the phrase is inherited
  verbatim from `01-research.md` (Pitfalls #2), so this is a reproduced error rather
  than an invented one — but it ships in the artifact and is checkable-false.
  *Fix:* "tăng khoảng 27%" or "tăng 0,34 điểm", not "gần gấp rưỡi".

### [result] FINDING 2 (fix required) — an internal contradiction about Korea

Line 41: "TFR vẫn **giảm liên tục** từ 1,08 (2005) xuống 0,72 (2023)". Two lines later
(43–44) the same paragraph calls 2024's 0,75 "lần tăng thật đầu tiên sau **9 năm**" —
which places the start of the decline at ~2015, not 2005. Both cannot be true.
`01-research.md` contains the resolution and the essay dropped it: research line 20
records the recent peak as **1,24 in 2015**, which is *above* 1,08 (2005), so Korean TFR
did not fall continuously from 2005. (Research is itself internally inconsistent here —
its line 83 carries the same "giảm liên tục từ 1,08 (2005)" phrasing — but the essay had
both statements available and shipped the one contradicted by its own next sentence.)
*Fix:* delete "liên tục", or write "giảm từ 1,08 (2005), qua một đỉnh 1,24 (2015), xuống
0,72 (2023)". The endpoint figures 1,08 / 0,72 / 0,75 themselves are faithful to
research and need no change.

### [sources] FINDING 3 (fix required) — three table rows name an agency research never recorded

The instruction for this axis is that every table row carry "a source that exists in
research". Three do not:

| Row | Table says | `01-research.md` actually says |
|---|---|---|
| Na Uy 1,98 (2009) → 1,40 (2023) | "Cơ quan thống kê Na Uy, dẫn qua tài liệu nhân khẩu học" | research line 141: figures given with **no source named at all** |
| Singapore TFR 0,97 | "Cơ quan thống kê Singapore, dẫn qua báo chí" | research line 38: **no agency named** |
| Hong Kong TFR 0,9 → 0,73 | "Cơ quan thống kê Hong Kong, dẫn qua báo chí" | research line 40: **no agency named** |

These are plausible attributions — national statistics offices are where such numbers
normally come from — but plausibility is exactly the thing this pipeline forbids
substituting for provenance (Axiom 6, R2). The maker could not know the snippets came
from Statistics Norway / SingStat / C&SD, and with egress blocked nobody can check. The
Norway row matters most: Norway is the *sole* evidence for the essay's load-bearing
claim "chính sách tốt … là điều kiện cần chứ không đủ" (line 93), so its source line is
carrying real weight. Contrast with how honestly the maker handled the Korea spending
total ("Tổng hợp nhiều nguồn, số tổng không thống nhất") and China's TFR ("World Bank,
Trading Economics (ước tính, không phải số chính thức NBS)") — the correct pattern is
already in the same table.
*Fix:* replace the invented agencies with what research supports, e.g. "nguồn thứ cấp
qua WebSearch; không xác định được cơ quan gốc trong phiên nghiên cứu".

### [result] FINDING 4 (fix required) — the research-cutoff date is wrong, in two places

Body lines 120–122 and confidence-table row on Luật Dân số both say the finding is "vị
trí tại thời điểm nghiên cứu (**đầu 2026**)". The research session is **August 2026**:
`01-research.md` line 74 says "chưa thông qua tại thời điểm viết **8/2026**", and the run
directory is `20260829T071040Z` — research, assembly and this inspection are all the same
day, 2026-08-29. The error runs in the unsafe direction for a caveat: it tells the reader
the legal status was checked ~8 months ago when it was checked this month, which
misstates how much drift the "please check the latest status yourself" warning is
covering. `03-receipts.md` point 6 repeats the same "(early 2026)" while simultaneously
describing "the current (mid/late-2026) status" — the maker had the right date in view.
*Fix:* "(8/2026)" in both places.

### [result] Everything else traced clean — 35 of 39 figures exact

Checked against research, same number / same year / same agency, no drift and nothing
invented: Vietnam TFR 1,96 (2023) → 1,91 (2024); TP.HCM 1,39; Hà Giang 2,69; 32/63
provinces; replacement level 2,1; urban 1,67 / rural 2,08; Đông Nam Bộ 1,48; ĐBSCL 1,62;
Hà Nội +70% / TP.HCM +37% house prices 2019–2024; Lancet Regional Health – Western
Pacific 2025; Korea 1,08 / 0,72 / 0,75, Statistics Korea release date 26/2/2025, Yoon's
2023 "failure" statement, "hàng trăm tỷ USD" over "15–20 năm" (correctly kept
qualitative, exactly as research recommended, instead of picking one of the conflicting
155,7–283 tỷ USD totals); Japan Angel Plan 1994, 3,7% vs 55,6% (2001), Kishida 3/2023
~22,3 tỷ USD/năm, TFR 1,15 (2024), 686.061 births, "lần đầu dưới 700.000 kể từ 1899",
and the implicit 2005 trough reference at line 149; China 1979/1980 → 2016 → 20/8/2021,
TFR ~1,0–1,15 (2021–2023), births 9,54 triệu (2024), +520.000, "đầu tiên sau 7 năm",
dragon-year attribution; Singapore 13.000 SGD and 0,97; Hong Kong 20.000 HKD and the
exact eligibility window 25/10/2023–24/10/2026, TFR 0,73 (2024); France 1,8–1,9 since
2000, ~4% GDP, Italy ~1,3, Spain ~1,2; Duke Economics Honors Thesis 2025; UN DESA policy
brief; OECD 1.000 USD PPP ↔ 1,0–1,6%; Society at a Glance 2024 / family-policy research
2023; Doepke, Hannusch, Kindermann & Tertilt, NBER WP 29948 (2022) — all four surnames
and the paper number correct; Hungary 90.000 (2010) / 92.000 (2020); Norway 1,98 → 1,40;
Pháp lệnh 07/2025/UBTVQH15, 3/6/2025, Điều 10, Pháp lệnh Dân số 2003; golden-window 2036
and "sớm hơn ba năm so với dự báo 2019"; aging 2034–2049; super-aged 2050–2074;
dependency ratio 47,65% (2024, World Bank); World Bank *Vietnam: Adapting to an Aging
Society* (2021), +1,4–4,6% GDP, −0,9 điểm phần trăm, 2020–2050 vs the prior 15 years.

Also checked and clean: **China's 9,54 triệu is internally coherent** with "+520.000"
(implying ~9,02 triệu in 2023). **No C-grade or D-grade material leaked in** — research's
two C items (Taiwan's 2024 TFR; the Bộ Chính trị notification date) appear nowhere in the
essay, and research's flagged 2024/2025 China TFR *forecast* (~1,01–1,02, explicitly
marked "dự báo, không phải số đo") was correctly left out; only the measured 2021–2023
band is used.

### [result] All six trap conditions: PASS

1. **TFR ≠ crude birth rate ≠ absolute births — PASS, and handled better than required.**
   The essay names the distinction in the intro ("tổng tỷ suất sinh (TFR)"), and at the
   two danger points states it explicitly: China — "đây là **số ca sinh tuyệt đối tăng,
   không phải bằng chứng TFR tăng**" (line 56), with the dragon-year/post-COVID marriage
   rebound attached; Korea — the 0,72→0,75 move is called a real TFR rise but attributed
   to marriage rebound rather than to the cash packages (lines 43–46), which is precisely
   research's instruction not to merge the two kinds of "increase". Japan's 686.061 and
   Hungary's 90.000/92.000 are consistently labelled "số ca sinh". No crude-birth-rate
   figure is used anywhere, so no conflation is possible.
2. **Taiwan's 2024 TFR — PASS.** Taiwan appears exactly once (line 30), in a qualitative
   clause about parental-leave law reform. **No Taiwan TFR figure appears at all** — not
   the contested ~0,72 (2024), not even the safer 0,87 (2023). The trap is fully avoided.
3. **China's TFR labelled a third-party estimate — PASS.** In-prose: "theo ước tính của
   bên thứ ba như World Bank và Trading Economics, vì Cục Thống kê Quốc gia Trung Quốc
   không công bố đều đặn một con số chính thức" (lines 52–54). Table repeats it. Correct.
4. **"2036" as projection — PASS, three times over.** "dự báo dân số mới nhất", "dự kiến
   kết thúc năm 2036", then the explicit sentence "Đây là một con số dự báo dựa trên mô
   hình dân số, **không phải một mốc đã xảy ra**" (line 135). Downstream mentions (lines
   137, 151, 157) all carry "dự kiến". Table row repeats "là dự báo, không phải số đo".
5. **Pháp lệnh 07/2025/UBTVQH15 vs draft Luật Dân số — PASS.** Lines 114–122 keep them
   apart in consecutive sentences: the Pháp lệnh is "một văn bản có thật và đã có hiệu
   lực" amending Điều 10 of the 2003 Pháp lệnh Dân số; "Nó cũng **không phải Luật Dân
   số** — văn bản đó vẫn là dự thảo do Bộ Y tế hoàn thiện". No sentence implies Vietnam
   has a new population *law*. (The only defect here is the cutoff date — Finding 4.)
6. **Hungary as a live dispute — PASS.** Both sides are given: the Orbán government's
   claim and the specific instruments, then N-IUSSP's tempo rebuttal, closing on "tranh
   cãi tempo-vs-cohort ở Hungary **vẫn mở, chưa ngã ngũ** — không phải một thành công
   chính sách đã được xác nhận sạch sẽ theo hướng nào" (lines 88–89). The table row
   presents it as "Chính phủ Hungary (tuyên bố) vs phân tích N-IUSSP (phản biện)".

### [result] The named causal correction: VERIFIED FIXED

The specific slip I was asked to re-check — flat Hungarian birth numbers used as evidence
*for* the tempo effect — is genuinely gone, and the replacement matches research rather
than merely softening the old wording. Lines 84–87 now read: the flat birth count "cần
đọc thận trọng hơn thế: theo chính N-IUSSP, **phần lớn mức đi ngang đó đến từ việc số phụ
nữ trong độ tuổi sinh đẻ giảm do di cư và cơ cấu tuổi dân số, không phải bằng chứng trực
tiếp cho hiệu ứng tempo**." That is a faithful rendering of `01-research.md` lines
134–137, which attributes flat births to the shrinking cohort of women of childbearing
age (migration + age structure) and attaches the tempo argument to the *TFR rise*, not to
the birth count. Attribution to N-IUSSP is supported by research. The confidence-table
row carries the corrected causality too, so prose and table agree. This one is right.

### [result] Confidence table vs prose — matched, with one nuance

All 26 rows are B; nothing above the run's ceiling; every load-bearing body claim has a
row. Cross-checks that could have gone wrong and did not: the Singapore row says
"0,97 (2023–2024)" where the prose says "năm 2024" — both supported by research; the
Hong Kong row carries an extra 2022 datapoint the prose omits (table richer than prose is
not drift); the two purely inferential rows (the France–OECD reconciliation, and the
25-vs-10-year comparison) are explicitly marked "Suy luận nội bộ … không phải một số đo
mới", which is the correct grading for reasoning built on other B rows.

Nuance, not a fix: the OECD row and prose both assert that *the source does not specify*
whether 1,0–1,6% is relative-percent or percentage points. `01-research.md` does not
record that the source is silent — it simply does not address the unit. So the essay
states as a property of the source something research only shows as a gap in its own
notes. The direction is conservative (it weakens the essay's own steelman rather than
strengthening it) and the row is graded B, so I do not treat it as a defect; but the
strictly supportable phrasing is "đơn vị không xác định được trong nghiên cứu cho bài
này" rather than "nguồn không nói rõ".

### [plan] Followed, including its own escape hatches

The `00-brief.md` inspection plan named six traps; all six hold (above). The plan's
requirement that the B-ceiling appear **in the body, not only in the table** is met at
lines 9–11. The house-style rule "mọi số liệu kèm cơ quan + ấn phẩm + năm" (brief line
137, added as deviation-fix #2 after station 2 because research carries no URLs) is met
**at artifact level**: every figure has agency + publication + year in the confidence
table. It is *not* met sentence-by-sentence — the Vietnam urban/rural/regional cluster
(lines 31–33), Japan's 3,7%/55,6%, Norway's 1,98→1,40, Hungary's 1,25→1,59, and the
France 4%-GDP/TFR figures carry no agency in the prose itself. Since the table is part of
the shipped artifact and the reader can trace every number by hand from it, I record this
as an observation rather than a required fix — but it is the reason Finding 3 bites: when
the table is the *only* place provenance lives, an invented agency in the table is the
whole provenance.

The length overrun (~2.700 words vs the 1.050–1.450 approved at Gate 1) is recorded in
`00-brief.md` as a user-approved scope amendment, so it is not scope drift, and it is not
my axis. I did check the extra ~1.500 words for exactly the risk they create — a number
drifting in the additions — and the four findings above are the whole yield.

### [steps] Receipts audit — eight claims, seven verifiable in the artifact, one wrong

Reached my findings from the deliverable first; then opened `03-receipts.md` to audit it.
Verified as actually visible in the artifact: #1 receipts section removed (the file ends
with the confidence table — no self-grading text inside the graded document, the R5 fix
is real); #2 the France–Italy reconciliation paragraph exists and Norway was indeed moved
to open the qualifying paragraph rather than close the steelman block; #3 the Hungary
causal fix, confirmed independently above; #4 the 63%/8% figure is gone from both prose
and table, with no substitute claim inserted; #5 the OECD unit disclosure is present in
both places; #7 the opening is one disclosure sentence with no tool names; #8 the "wow"
paragraph shows 10÷25 explicitly and both new inferential rows are in the table.
**#6 is the exception:** receipts claims the cutoff note says the position is "the
position found during research (early 2026)" — it does say that, and *that is the error*
(Finding 4); the same receipts paragraph elsewhere correctly calls the present
"mid/late-2026". A claimed step that ran but recorded the wrong date.

Separately: receipts measures the body at "~2.850 tokens" while `00-brief.md` records
"2.704 từ" for the same text — a ~5% disagreement between two artifacts in this run about
the same measurement. Cosmetic, outside my axis, noted only because this run has already
been bitten twice by self-reported word counts.

## Verdict: FIX-IT

The essay is, on the whole, unusually disciplined with its numbers: 35 of 39 figures
trace exactly to `01-research.md`, all six named traps are cleanly avoided, the named
Hungary causal correction is genuinely fixed and now matches research, no C or D material
leaked in, the load-bearing 25-vs-10-year arithmetic is correct and shown, and the
grade-B ceiling is disclosed in the body rather than buried. But four defects are
checkable-false as shipped, and two of them are visible to any reader with a calculator.

Required fixes:

1. **Line 81, Hungary.** "1,25 (2010) lên 1,59 (2021) — **gần gấp rưỡi**" is wrong:
   1,59 ÷ 1,25 = 1,27, a ~27% rise; "gấp rưỡi" would require 1,875. Replace with "tăng
   khoảng 27%" (or "tăng 0,34 điểm").
2. **Line 41, Korea.** Delete "**liên tục**" from "TFR vẫn giảm liên tục từ 1,08 (2005)
   xuống 0,72 (2023)", or add the 2015 peak. As written it contradicts the essay's own
   "lần tăng thật đầu tiên sau 9 năm" three lines later, and contradicts
   `01-research.md` line 20 (recent peak 1,24 in 2015 — above the 2005 value).
3. **Confidence table, three rows (Na Uy, Singapore, Hong Kong).** Remove the agency
   attributions "Cơ quan thống kê Na Uy / Singapore / Hong Kong" — `01-research.md` names
   no source for any of these three. Replace with what is actually supportable, e.g.
   "nguồn thứ cấp qua WebSearch, không xác định được cơ quan gốc trong phiên nghiên cứu",
   matching the honest pattern already used in the Korea-spending and China-TFR rows.
   Norway is the sole support for "chính sách tốt là điều kiện cần chứ không đủ", so this
   row is load-bearing.
4. **Body lines 120–122 and the matching Luật Dân số table row.** "thời điểm nghiên cứu
   (**đầu 2026**)" → "(**8/2026**)". Research (`01-research.md` line 74) says 8/2026 and
   the run is dated 2026-08-29.

Not required, recorded for the record: the OECD "nguồn không nói rõ" phrasing asserts
more about the source than research documents (suggest "không xác định được trong nghiên
cứu cho bài này"); and prose-level citations are absent for several figures that are
sourced only in the table.

No fabrication, no faked step, no abandoned scope, nothing unsafe — this is not a REJECT.
All four fixes are local edits that touch no argument and require no new evidence.
