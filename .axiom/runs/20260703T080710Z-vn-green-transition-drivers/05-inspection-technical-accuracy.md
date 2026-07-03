# Inspection — Chuyển đổi xanh ở Việt Nam 2024–2026 (động cơ)
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: 03-deliverable.md (direct, full) + 01-research.md (canonical) + 02-plan.md
Mode: fresh re-inspection after FIX-IT — no prior report trusted.

## Environment / truth ceiling
- WebFetch re-attempted this run (Wikipedia PDP8 page) → **HTTP 403 Forbidden**, exactly
  as the research declared. I cannot live-verify or promote any claim to **[A]**. Whole
  run is capped at **[B]** — a declared limit, not a defect. No grade-A source exists in
  the deliverable to re-fetch, so nothing mandatory was skipped. Verification below =
  strict cross-reference of every number/date/citation/grade against `01-research.md`,
  plus re-derivation of any arithmetic the text performs.

## Findings

- [sources] re-fetched: none live (WebFetch 403 blocked, recorded above). Every number,
  date, and document name in §§2–10 traced line-by-line to `01-research.md`. All match;
  no misattributed figure, no number lacking a canonical entry.

- [result / PRIOR FIX-IT — §4 date interval] **RESOLVED.** Body now reads: US left JETP
  **4/3/2025** → VN approved PDP8 điều chỉnh **"khoảng sáu tuần sau đó (15/4/2025)"**
  (lines 68–70). Arithmetic: 4 Mar → 15 Apr = 27 (rest of March) + 15 = **42 days =
  exactly 6 weeks**. Consistent with both anchor dates. The earlier contradictory "chỉ 12
  ngày" is gone from the reader-facing body; it survives only inside the FIX-IT change-log
  (line 387), correctly labelled as the thing that was removed. Both dates preserved;
  causal point (VN proceeded after US exit) intact.

- [result / no [A] leak] Grep confirms **zero [A] labels on any claim.** The only "[A]"
  strings (lines 292, 377) are the explicit statements that *no* claim reaches [A]. §10
  states the B-ceiling openly. Compliant with the plan's hard rule.

- [result / date-type & issuing-level distinctions] All correct against source:
  - COP26 (11/2021, political) vs **QĐ 896/QĐ-TTg (26/7/2022, cấp Thủ tướng)** vs PDP8 gốc
    **QĐ 500/QĐ-TTg (15/5/2023)** kept separate (§2). ✓
  - **55-NQ/TW / 70-NQ/TW = Bộ Chính trị (Party organ, "không phải luật")** vs QĐ-TTg vs
    **NĐ 80/2024, 57/2025, 135/2024, 51/2025, 202/2026 = Nghị định Chính phủ** — tiers
    kept distinct (§3, §6, §7). EV decrees 51/2025 and 202/2026 named separately, not
    collapsed. ✓
  - Coal: **annual ~49,5% / ~48% (10 tháng)** explicitly *not merged* with **monthly 64,6%
    (T4/2024)** (§6, lines 153–156). ✓
  - PDP8 điều chỉnh **QĐ 768/QĐ-TTg (15/4/2025)**; taxonomy **QĐ 21/2025/QĐ-TTg** hiệu lực
    22/8/2025. ✓

- [result / conflicting numbers held qualitative] Every flagged figure stays a range or
  qualitative statement, matching the reconciliation table:
  - JETP mobilised — only "tổng cam kết 15,5 tỷ USD [B]", "giải ngân gần như 0", no
    mobilised figure chosen [C] (§4). ✓
  - Solar violations — "hơn 100 dự án [C]", 154/123 shown only as spread (§5). ✓
  - EVN damage — "hàng trăm tỷ tới vài nghìn tỷ đồng [C]" (§5). ✓
  - PDP8 MW/% — all tagged [C] / "khoảng" (§6). ✓
  - Green credit — "quanh 4,3–4,5% … luôn xa mục tiêu 10% [B/C]" (§8). ✓
  - Green bonds 2024 — "khoảng 7–10 nghìn tỷ đồng [C]" (§8). ✓
  - VinFast capital — "~55.257 tỷ đồng" as cumulative total [B]; per-year splits [C] (§7). ✓
  - TTĐB — "3% (từ 15%) đến 2/2027", "4–11% sau" tagged [C] single-source (§7). ✓

- [result / qualitative-flag claims] All three sensitive framings correct against source:
  - **"Đất vàng"** ưu đãi — "không tìm được nguồn xác minh… không khẳng định nó là sự
    thật" (§7). ✓ Matches research ⚠ flag.
  - **V-Green** — "rào cản do sở hữu tư nhân + lợi thế hệ sinh thái tập đoàn, **không phải
    một độc quyền do nhà nước cấp phát**" (§7). ✓ De-facto private dominance, not state
    monopoly.
  - **Party discipline ≠ criminal conviction** — Trần Tuấn Anh (mất ghế BCT, không truy
    tố) vs Hoàng Quốc Vượng (kết án 6 năm tù), "hai chuyện khác nhau… không nên gộp lại"
    (§5). ✓
  - **1,5 tỷ bribe** — reads as **"cáo buộc"** in the indictment, tagged **[C]**,
    separated from the served 6-year sentence [B] (§5, lines 104–108). ✓ Downgrade
    [B]→[C] correctly applied.

- [result / spot-checked figures] PM2.5 ~45 µg/m³ ~8×WHO; tử vong 2.700–4.760; CCDR
  1/7/2022, ~10 tỷ USD / 3,2% GDP / ĐBSCL −17%; emission factor 0,681 tCO2e/MWh +3,2%;
  CBAM four dates (1/10/2023, 1/1/2026, 1/2/2027, 30/9/2027); CBAM ~4,2% + thép >2,2 tỷ
  EUR; Vũng Áng II 1,32 GW tổ máy 2 vận hành 7/4/2026; coal output +16% (Ember); imports
  44→65 Mt; offshore wind 0 MW; solar +586 MW (2025); ~1.091,9 đồng/kWh; EV ~33%, VinFast
  ~99%; Tô Lâm 3/8/2024, Phúc 1/2023, Thưởng 3/2024 — **all match `01-research.md` exactly.**

- [steps] Receipts (lines 302–343) claim single-pass build from canonical only, broken-
  number table applied, terminology distinctions checked, WebFetch-403 tool/error detail
  kept out of the body. Cross-checked against the actual prose — every claimed handling is
  present. No "I did it" without the corresponding edit visible.

- [plan] Followed. Ten sections; EV/green-finance as first-class §7/§8 per the re-planned
  outline; all figures within the broken-number table. No scope drift on this axis.

- [honesty] No claim graded above what the source allows; B-ceiling declared; [C] items
  softened as prescribed; the one downgrade (1,5 tỷ B→C) is honest and correctly reasoned.
  No [D] guess leaked. No unverifiable hyper-specific figure stated assertively at B — the
  precise figures either carry explicit source attribution or a [C]/"khoảng" hedge.

## Minor notes (not verdict-driving)
- §3 "gấp khoảng 8 lần ngưỡng WHO": against the WHO 2021 guideline of 5 µg/m³, 45 µg/m³ is
  ~9×; the text hedges with "khoảng" and matches the fact store's own "~8×", so within
  grade B — a wording nit, not a technical defect. Awareness only.
- §3 carries two distinct "3,2%" values (climate damage = 3,2% GDP; grid emission factor
  = +3,2% vs 2023) — both correct, different referents; noted so no editor "deduplicates".

## Verdict: PASS
Technical-accuracy axis is clean. The prior FIX-IT (§4 date interval) is correctly
resolved — "khoảng sáu tuần" is consistent with 4/3/2025 → 15/4/2025 (42 days = 6 weeks).
No [A] label survives; all date-type/issuing-level distinctions hold; all conflicting
figures stay qualitative; the three flagged sensitive framings ("đất vàng" unverified,
V-Green private-not-state, Party-discipline ≠ conviction) and the bribe allegation are
stated exactly as the evidence supports. Every checked number/date/document traces to
`01-research.md`. Only non-blocking observation: the FIX-IT/improvement change-logs
(lines 345–410) are verbose internal process notes below the reader-facing body — cosmetic
process detail, outside this axis, not a defect. Work may ship on this axis, subject to the
run-wide [B] ceiling (WebFetch 403 — a properly-disclosed environmental limit).
