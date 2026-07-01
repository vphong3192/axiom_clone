# Inspection — Sáp nhập tỉnh 2025: "tinh gọn, tiết kiệm" chỉ là phần nổi
Inspector: independent (did not receive a maker's summary)
Axis: technical-accuracy
Artifact read: `03-deliverable.md` (direct, full text + confidence table + receipts)

> Ghi chú: axiom-inspector không có tool Write nên orchestrator ghi hộ (điểm harness
> cần sửa — giống coach).

## Findings

- **[result]** Every load-bearing number in the body prose matches `01-research.md` with no fabrication, drift, or mis-attribution. Verified each against research and re-ran the arithmetic:
  - 63→34 cấp tỉnh; 696 huyện xóa bỏ; xã ~10.035→3.321 — all match research [A-]; body §1 and §17 use "3.321" consistently.
  - 17/63 (~27%) trước vs 7/34 (~20%) sau — matches research [B]. Arithmetic checks: 17/63 = 27.0%, 7/34 = 20.6% → "khoảng 27%/20%" correct.
  - Chi thường xuyên ~70% (vs 48–50% nước phát triển) — matches research [B], BT Tài chính 19/12/2024.
  - Diện tích TB +85% (research: 85,3%) — safe rounding, correct. 6 vùng KT-XH ✓.
  - 180 ủy viên TW, khối địa phương 57, giảm ~10, "số tỉnh giảm 46%" — matches research [A]. Arithmetic checks: (63−34)/63 = 46.0% → "46%" correct.
  - "50% bí thư tỉnh ủy mới đến từ 6 tỉnh" — matches research [B], ISEAS/Nguyễn Khắc Giang; correctly hedged.
  - Đô thị hóa 44,3% (2024); VNeID "hơn 57 triệu" (research >57,9 tr — conservative rounding, not inflation) ✓.
  - Heisei 3.232→1.727; Kallikratis "khoảng 325" + ">70% phụ thuộc TW 2015"; meta-analysis 31 nghiên cứu/14 nước, ngưỡng 10.000–66.000 dân — all match research [B].
  - NQ 245-NQ/TW 1975; 72→38 (1975–76) — matches research; full lộ trình 72→38→40→63/64→34 in table matches.
  - **NQ chain / attribution trap (highest risk): PASSED.** Body §1 correctly labels NQ 60-NQ/TW as a **Ban Chấp hành Trung ương (Đảng)** document and NQ 202/2025/QH15 as the **Quốc hội** instrument (12/6/2025); the "ký 12/6 vs vận hành 1/7" distinction is kept — no "nghị quyết có hiệu lực 1/7" error.

- **[sources] Re-fetch attempted, blocked as expected.** Tried WebFetch on `https://xaydungchinhsach.chinhphu.vn` → **HTTP 403 Forbidden** (proxy egress block), exactly the limit declared at the head of `01-research.md` and in the deliverable's receipts. I could **not** promote any claim to a live-re-fetched grade-A in this environment, and — per the plan's explicit instruction — I did **not** invent an A. No grade-A source link could be liveness-checked; this is an environment limit, correctly disclosed by the artifact, not a defect of the work. No misattributed quote found: the one quote-risk item ("không thể nơi nào cũng muốn làm cảng biển, sân bay") was **excluded** from the body precisely because the speaker's title was unverified — correct call.

- **[steps]** Every claimed analytical step is really present in the artifact, not just in the plan: all 3 tầng, the international comparison, and both mandatory counter-arguments (7/34 < 17/63; mixed economies-of-scale evidence) appear in the actual prose. The two Coach ONE-IMPROVEMENT-PASS edits were applied faithfully and introduced **no** new unsourced claim — the added "50% bí thư/6 tỉnh" detail traces to research Nhóm 3 [B] and was correctly added to the confidence table.

- **[plan]** Scope followed (00-intake, 02-plan): ~1000-word Vietnamese policy analysis, 6 functional parts, single-pass assembly, house lexicon (sáp nhập / 2 cấp / correct NQ levels / "34 tỉnh, 3.321 xã" official numbers only). No quiet scope drift; the WebFetch limit was disclosed rather than hidden.

- **[honesty]** Label discipline is correct and, if anything, conservative. Highest grade in the artifact is A/A-, used **only** for cross-source-consistent official administrative/election figures (34/63, 696, 3.321, 180/57, 44,3%) — matching research's own grading exactly. Political-motive inferences (nhân sự network, "sứ quân/cát cứ", digital-enables-merger) are all **B** with modal hedging and explicit "suy luận có căn cứ, không phải mục đích chính thức" caveats. **No D-grade guess leaked in:** the three excluded items (GRDP ~250.000 tỷ [C]; cảng/sân bay quote [unverified title]; "giảm 20–30% lãnh đạo" [C]) are absent from the body and listed as excluded. **No claim is dressed beyond its evidence; no false A.** No R2/R3/R4 signals on this axis.

One nuance (not a defect): the A/A- here means "official figure consistent across multiple independent sources within research," **not** "inspector re-fetched a live source." Both the research and the deliverable state this honestly and neither overclaims the latter — the correct posture for a 403-blocked environment.

## Verdict: PASS

On the technical-accuracy axis, every number, date, decree name, and attribution in the deliverable is traceable to `01-research.md` with no fabrication, no numeric drift, no mislabeled Party-vs-State document, and no misattributed quote; the two arithmetic-bearing claims (27%/20%, 46%) re-computed correctly; all D/C-grade items were kept out of the body; and the WebFetch 403 limit is disclosed truthfully with no false grade-A elevation. Only cosmetic note (non-blocking): the prose gives the Kallikratis endpoint "khoảng 325" without its "~1.033" starting figure that appears in the table — a harmless subset, not a contradiction. The work may ship on this axis.
