# Inspection — Chuyển đổi xanh ở Việt Nam 2024–2026 (động cơ môi trường hay chính trị/lợi ích nhóm?)
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: 03-deliverable.md (direct, in full)
Cross-checked against: 01-research.md (canonical fact store), 02-plan.md

## Blocked-verification limit (declared)
WebFetch was tested against a public reference page (`en.wikipedia.org/wiki/VinFast`)
and returned **HTTP 403 Forbidden** for me as well — the same egress block recorded in
every research strand and in the deliverable's §10. Consequences, per the inspection
procedure:
- I **cannot** live-re-fetch or promote any source; the truth ceiling stays at **[B]**.
- I did **not** invent any grade-A. Verification here = strict internal consistency of
  every number/date/citation/grade against `01-research.md`, plus re-derivation of any
  arithmetic the text performs itself.

## Findings

### [result] — one material date-arithmetic error (FIX-IT trigger)
- **§4, line 68–70:** "Mỹ rút khỏi JETP ngày **4/3/2025** … nhưng Việt Nam vẫn phê
  duyệt PDP8 điều chỉnh **chỉ 12 ngày sau đó (15/4/2025)**."
  In the document's consistent DD/MM/YYYY convention, 4/3/2025 (4 March) → 15/4/2025
  (15 April) is **≈42 days (six weeks)**, **not 12 days**. The "12 ngày" figure is
  **writer-introduced** — it does not appear in `01-research.md`, which records only the
  two bare dates (4/3/2025 and 15/4/2025) with no interval. It is a derived number that
  contradicts the two dates it sits between, and it is **load-bearing**: it powers the
  causal claim that Vietnam pressed ahead "just 12 days" after the US pullout, so a wrong
  interval materially overstates the immediacy of the reaction. Per the procedure's
  date-distinction rule and working-lesson 12 ("12/6 ≠ 1/7"), a broken key-date figure
  is a FIX-IT, not cosmetic.
  **Required fix:** either correct the interval to the true gap (≈6 tuần / hơn một
  tháng), or, if the US-withdrawal date is actually 3/4/2025 (3 April) rather than
  4/3/2025, correct the date — but the two must be made internally consistent. (I cannot
  adjudicate the real withdrawal date: WebFetch is blocked, and `01-research.md` itself
  carries only the unverified 4/3/2025 at grade B.) §9's version of this point ("ngay
  sau khi Mỹ rút") uses no number and is fine as written.

### [result] — everything else on this axis reconciles cleanly
Every other number, date, and document ID matches the fact store exactly. Spot-verified:
- **Issuing-level / date-type distinctions — all correct.** COP26 net-zero pledge
  (11/2021, political) is kept separate from **QĐ 896/QĐ-TTg (26/7/2022)** and **PDP8
  gốc QĐ 500/QĐ-TTg (15/5/2023)** — both correctly tagged PM-level (cấp Thủ tướng).
  Party resolutions **55-NQ/TW (11/2/2020)** and **70-NQ/TW (20/8/2025)** correctly
  identified as **cấp Bộ Chính trị, not law**. PDP8 điều chỉnh **QĐ 768/QĐ-TTg
  (15/4/2025)** correct. Government decrees correctly tagged NĐ-CP tier and kept
  distinct from PM decisions: **80/2024 → 57/2025** (DPPA), **135/2024**, **51/2025 →
  202/2026** (BEV lệ phí trước bạ, named separately, not collapsed), taxonomy **QĐ
  21/2025/QĐ-TTg (hiệu lực 22/8/2025)**. No tier or date collapse found.
- **Coal figures — month vs year correctly separated (§6, line 153–155):** annual
  ~49,5% (and ~48% for 10 months, Ember) is explicitly not merged with the monthly
  **64,6% (T4/2024)**. Matches reconciliation #3.
- **Conflicting/[C] numbers all handled qualitatively, not as settled:** JETP mobilised
  amounts left unstated (only the 15,5 tỷ USD commitment + "giải ngân gần như 0"); solar
  violations "hơn 100 dự án" (C); EVN damage "hàng trăm tỷ tới vài nghìn tỷ đồng" (C);
  PDP8 MW/% figures tagged (C)/"khoảng"; green-credit "quanh 4,3–4,5%"; 2024 green bonds
  "khoảng 7–10 nghìn tỷ đồng" (C); VinFast founder capital "~55.257 tỷ đồng" total
  cumulative, not split by year; TTĐB "4–11% sau 2/2027" tagged (C, single source).
  Each matches the mandatory broken-number table in `02-plan.md`.
- **The 1,5 tỷ bribe (§5, line 104–106):** correctly reads as a **cáo buộc** (allegation
  in the indictment), tagged **(C)**, explicitly separated from the 6-year sentence
  (B, handed down). Matches research and the §339 improvement-pass note.
- **Party discipline vs criminal conviction (§5, line 108–112):** Hoàng Quốc Vượng
  (kết án hình sự 6 năm tù) and Trần Tuấn Anh (mất ghế Bộ Chính trị, **không bị truy tố
  hình sự**) are explicitly distinguished — "'Kỷ luật Đảng' và 'bị kết án hình sự' là
  hai chuyện khác nhau." Correct; not conflated.
- **"Đất vàng" claim (§7, line 203–206):** flagged as **UNVERIFIED** — "không tìm được
  nguồn xác minh… không khẳng định nó là sự thật; nó chỉ được nêu ở đây như một giới
  hạn, không phải một claim." Correct, not asserted.
- **V-Green (§7, line 195–202):** framed as **de-facto/private-ownership dominance +
  group ecosystem advantage**, explicitly "KHÔNG phải một độc quyền do nhà nước cấp
  phát." Correct.

### [sources] re-fetched
None possible — WebFetch = HTTP 403 (confirmed live this session). No grade-A source to
re-fetch by design (run is capped at B). Fallback = internal reconciliation, done above.

### [honesty] — grades correctly capped at B; no [A] leaked
Grep confirms **no claim carries an [A] label**. The only two occurrences of "[A]"
(lines 292, 371) are in §10 stating that *no* claim reaches [A] — correct usage, not a
mislabel. Every substantive claim is (B) or (C); zero (D). The B-ceiling and its cause
(WebFetch block) are declared plainly in §1 and §10.

### [steps] — receipts consistent with the artifact
The §Receipts block matches what is on the page: broken-number table applied, month/year
coal split kept, terminology distinctions made, EV/finance strand's inline-WebSearch
provenance disclosed in receipts only (not leaked into body). Nothing claimed that the
text does not actually do.

### [plan] — scope followed
Ten sections, EV and green-finance as first-class analytical sections, ~2,750 words
(inside the 2,600–2,800 target), all per `02-plan.md`. No silent scope drift on this axis.

## Minor notes (not verdict-driving)
- **§3, line 30–31:** "gấp khoảng 8 lần ngưỡng khuyến nghị của WHO" — with the WHO 2021
  annual PM2.5 guideline of 5 µg/m³, 45 µg/m³ is ~9×, not 8×. It matches the fact store's
  own "~8×" and is hedged with "khoảng," so it is consistent with the source and within
  grade B — a wording-precision nit, not a technical-accuracy defect. Flagged for the
  writer's awareness only.
- **§3:** two distinct "3,2%" figures appear (World Bank climate damage = 3,2% GDP;
  grid emission factor = +3,2% vs 2023). Both are correct per research and refer to
  different things; no error, noted only so a later editor does not "deduplicate" them.

## Verdict: FIX-IT

One material technical-accuracy defect: the **"12 ngày sau đó"** interval in §4 is
arithmetically wrong for the two dates it connects (4/3/2025 → 15/4/2025 ≈ 42 days) and
is a writer-introduced figure absent from `01-research.md`. It is load-bearing for the
US-withdrawal causal argument, so it must be corrected — fix the interval to the true
~6-week gap, or reconcile the underlying dates — before this ships.

Required fix (complete list for this axis):
1. **§4, line 70:** correct "chỉ 12 ngày sau đó (15/4/2025)" so the stated interval
   matches the two dates (4/3/2025 and 15/4/2025), i.e. ≈6 tuần / hơn một tháng — or, if
   the withdrawal date is wrong, correct it and re-derive the interval. The two must be
   internally consistent.

Everything else on the technical-accuracy axis passes: no [A] leaked, all issuing-tiers
and date-types kept distinct, all conflicting/[C] numbers handled qualitatively, the
bribe framed as a C-grade allegation, the "đất vàng" claim flagged unverified, V-Green
framed as private (not state) dominance, and Party discipline kept separate from criminal
conviction. Note the declared blocked-verification limit (WebFetch 403): the B-ceiling is
a properly-disclosed environmental limit, not a defect of the work.
