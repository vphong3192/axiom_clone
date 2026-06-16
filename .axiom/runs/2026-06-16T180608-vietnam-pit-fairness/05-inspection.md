VERDICT: PASS

# Inspection — Thuế Thu Nhập Cá Nhân Việt Nam: Bất Công Hay Không?
Inspector: independent (did not receive a maker's summary)
Artifact read: 03-deliverable.md (direct), cross-checked against 01-research.md and 02-plan.md

## Findings

### 1. Factual accuracy
Verified 6 key numbers directly against 01-research.md, all correct:
1. Old 7-bracket thresholds 5/10/18/32/52/80M VND (§1.1) = Fact 1. ✓
2. Philippines 35% at PHP 8M/year (§2.1) = Fact 10. ✓
3. Old personal deduction 11M / dependent 4.4M (§1.2) = Fact 4. ✓
4. New deduction 15.5M / dependent 6.2M (§1.3) = Fact 5. ✓
5. SI contribution 10.5%, fully deductible (§1.2) = Fact 6. ✓
6. New 5 brackets 5%≤10M / 10% 10–30M / 20% 30–60M / 30% 60–100M / 35%>100M (§1.3) = Fact 5. ✓

Peer-country max rates and thresholds in the §2.1 table also match Facts 9–13. ✓

### 2. Crossover correction
The high-stakes correction is present and the arithmetic is sound. §2.2, §3.2, and the Receipts now state the resident/non-resident effective-rate crossover occurs at ~115–120M VND/month (not 65M), and the old 65M figure is explicitly repudiated. Independent re-derivation:
- 110M: SI 11.55M; taxable 87.45M; tax 20.76M → 18.9% (< 20%). ✓
- 120M: SI 12.6M; taxable 96.4M; tax 23.89M → 19.9% (≈ 20%). ✓

Crossover just above ~120M; the 115–120M range is accurate and defensible. Spot-checks of 30M (1.63M, 3.7× gap), 50M (5.19M, 10.4%), and 80M (12.33M, 15.4%) all reproduce exactly. ✓

### 3. Receipts / build trace
Receipts (Build Step 7) are real and verifiable, not "I did it" claims. Every effective-rate figure in the body is backed by a fully worked calculation in the Receipts section; arithmetic independently confirmed.

### 4. Plan adherence
All 7 sections (Phần 0–6) present, effective-rate model at 1×/2×/5× average wage built as planned, peer table of 5 countries, residency framing handled as specified.

**SCOPE-CHANGE NOTE:** 00-intake.md specified English, 2000–3000 words; 02-plan.md changed this to Vietnamese, 2000–2500 words. The change was announced in writing in the plan (Axiom 7/8 satisfied). The deliverable conforms to the governing plan baseline. Length ~2,100–2,400 Vietnamese words — within target. ✓

### 5. Confidence labeling
Every factual claim carries [A] or [B]; no [C] or [D] anywhere. Statutory bracket/deduction/SI data is [A]; all effective-rate calculations, threshold comparisons, and normative equity judgments are [B] and explicitly noted as "suy luận tính toán từ dữ liệu biểu thuế đã xác minh." ✓

### 6. Residency vs. nationality — HIGHEST-STAKES CHECK
**PASS.** Every relevant sentence (§3.1, §4.1, §4.3 point 1, §6) correctly frames the legal distinction as residency (183-day rule), never nationality. The Vietnamese-citizen-working-abroad example is present (§3.1) and reinforces that the rule is residency-based. No sentence claims the law discriminates by nationality. The expat-exemption discussion (§3.4, §4.1) correctly says the exemptions are nationality-neutral in law but fall mostly to foreign workers in practice — accurate and graded [B]. ✓

### 7. Neutral scope
**PASS.** §6 contains no recommendation language ("nên / cần phải / kiến nghị"). The essay evaluates against horizontal/vertical equity without advocating a position. ✓

### 8. Dated data
The 1.7% PIT/GDP figure appears with "(số liệu 2018)" and World Bank 2018 attribution, with an added Phần 5 caveat that it may be outdated. ✓

---

## Minor observations (non-blocking — do not prevent shipping)

- §2.1 Philippines non-resident cell reads "Lũy tiến (chưa xác nhận đầy đủ)" — an honest hedge consistent with research Open Conflict #4. Acceptable.
- Research Fact 14 estimated the resident 30M tax as "~2.15M" (omitting SI deduction). The deliverable's 1.63M (correctly subtracts SI) is the more complete figure, internally consistent and [B]-labeled. This is an improvement, not a discrepancy.
- 04-coach.md was absent from the run folder at inspection time. This does not affect the independence or validity of this inspection (the deliverable was read directly). The orchestrator confirmed the coach step ran.

---

## Verdict: PASS

The deliverable is correct, complete, and matches the agreed plan scope. All 6 verified figures check against research; the residency-vs.-nationality framing — the single highest accuracy risk — is correct in every sentence; the previously erroneous 65M crossover claim has been corrected to ~115–120M and the arithmetic independently verifies; confidence labels are clean ([A]/[B] only, calculations [B]); the 2018 data is dated; and the essay stays neutral with no policy recommendations. The work may ship.
