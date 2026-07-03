# Inspection — Chuyển đổi xanh ở Việt Nam 2024–2026 (drivers)
Inspector: independent (did not receive a maker's summary)
Axis: wording (clarity, Vietnamese grammar/spelling, register, house style)
Artifact read: 03-deliverable.md (direct, current bytes)
Mode: fresh re-inspection after FIX-IT — prior report NOT trusted; inspected from scratch.

## Findings

### Prior FIX-IT items — verified resolved independently (not assumed)

- **(a) No pipeline-machinery words in reader-facing body §1–§10: PASS.**
  Grepped the full document for `run|outline|orchestrator|strand|session|WebFetch|HTTP|403`
  (case-insensitive). Every hit inside the body region (lines 1–301) is a false positive
  from Vietnamese "t**run**g" / "tập t**run**g" (lines 80, 103, 135, 270) — not the English
  word "run". Every genuine machinery term (strand, orchestrator, WebFetch, HTTP 403,
  "session limit", outline, bare "run này") appears only at line 302+ inside `### Receipts`
  and its Improvement/FIX-IT notes — legitimate, since Receipts may quote old strings when
  describing what was fixed.
  - §5 (line 120): former English "run" now reads "với nguồn hiện có" (Vietnamese).
  - §7 (line 205): "trong lần chạy nghiên cứu này" — Vietnamese "lần chạy", no English "run".
  - §10 (lines 288–300): source-access limit is stated in plain reader Vietnamese ("bị chặn
    công cụ truy xuất trang web trong môi trường thực hiện"); the tool name (WebFetch) and
    error code (HTTP 403) are confined to `### Receipts` (lines 339–343).

- **(b) Spelling "đọc giả" → "độc giả": PASS.** No occurrence of "đọc giả" in the body. §7
  now correctly reads "để tránh **độc giả** hiểu nhầm" (line 214); §10 uses "Người đọc"
  (line 298). "đọc giả" survives only at line 396 inside Receipts, describing the fix.

- **(c) One consistent confidence notation (square brackets): PASS.** Grepped for
  round-bracket labels `\((B|C|B/C|A)\)`; the sole hit is line 398 inside Receipts, quoting
  the old `(B)`/`(C)` strings it replaced. Body §1–§10 uses square `[B]`/`[C]`/`[B/C]`
  throughout, including the former collision point in §3 (lines 49–53), which now reads
  cleanly as `[B]`. No round/square drift or in-sentence collision remains.

- **(d) Reader-facing English "claim" replaced by plain Vietnamese: PASS.** No "claim" in
  the body. §7 (line 206): "một **nhận định** đã được xác nhận"; §10 (line 292): "không một
  **nhận định** nào trong toàn bài đạt được nhãn [A]". "claim" survives only in Receipts
  (lines 358+), which is process-internal.

### Politically sensitive passages — worded with care: PASS
- Bribery figure as allegation: §5 (lines 103–107) marks the 1,5 tỷ đồng a **"cáo buộc"** in
  the indictment, explicitly separated from the confirmed 6-year sentence and downgraded to
  [C]. Party discipline (Trần Tuấn Anh, "không bị truy tố hình sự") is kept distinct from
  criminal conviction (Hoàng Quốc Vượng) — clean non-conflation.
- "Đất vàng" hedged as unverified: §7 (lines 203–206) — "không tìm được nguồn xác minh…
  không khẳng định nó là sự thật… chỉ được nêu ở đây như một giới hạn." §7 also guards
  against reading VinFast policy support as an illegality accusation (lines 211–216, "hợp
  pháp và công khai"). Appropriate.

### Register / clarity / fluency: PASS
- Fluent analytical Vietnamese throughout; no translationese. Technical terms carry a
  Vietnamese primary with an English gloss in parentheses — "mô hình dây riêng
  (private-wire)" (line 88), "quán quân quốc gia (national champion)" (line 265), "danh mục
  phân loại xanh (taxonomy)" (line 229). Proper analytical style, not English leakage.
- Register (formal, third-person, hedged where evidence is thin) is consistent across all 10
  sections; the "Kết lại" closers hold a uniform voice. No false-balance drift.

### Minor / cosmetic (does not block shipping)
- **§6 heading (line 133):** "## 6. D. Trục **say-do gap** ở ngành năng lượng" uses raw
  English "say-do gap" in a reader-facing heading, whereas the same concept is written in
  Vietnamese ("khoảng vênh lời nói–việc làm") everywhere else (§1 line 9, §9 line 249). A
  slight register inconsistency — not machinery, and the term is defined in §1, so clarity
  is not harmed. Optional polish: use the Vietnamese gloss for uniformity. Not a FIX-IT on
  its own.

## Verdict: PASS
All four prior FIX-IT wording items are independently confirmed resolved: no
pipeline-machinery words leak into reader-facing §1–§10 (machinery is confined to
`### Receipts`); "đọc giả" is corrected to "độc giả"; confidence labels use one consistent
square-bracket notation with no round-bracket drift or collision; and reader-facing "claim"
is replaced by "nhận định". Politically sensitive passages are worded with due care
(allegations as "cáo buộc"; "đất vàng" hedged as unverified). Prose is fluent,
register-consistent Vietnamese. Only one cosmetic issue remains (English "say-do gap" in the
§6 heading) — optional polish that does not block shipping.
