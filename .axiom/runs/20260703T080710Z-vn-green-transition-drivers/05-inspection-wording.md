# Inspection — Chuyển đổi xanh ở Việt Nam 2024–2026 (động cơ)
Inspector: independent (did not receive a maker's summary)
Axis: wording
Artifact read: 03-deliverable.md (direct, full text)

## What is strong (so the fixes below are read in context)
- The Vietnamese is genuinely fluent, analytical, third-person — reads as native
  policy-analysis prose, not translationese. The through-line phrase "khoảng vênh lời
  nói–việc làm" is used consistently across §6/§7/§8 exactly as the house style asked.
- **Politically sensitive passages are handled with real care** (a positive finding):
  - Hoàng Quốc Vượng: the 6-year sentence is stated as fact (a conviction), while the
    bribe figure is correctly phrased as **"Cáo trạng còn cáo buộc…"** and explicitly
    marked "đây là **cáo buộc**, không phải một khoản đã được tòa xác nhận độc lập" (C).
    Allegation-as-allegation is done right.
  - Trần Tuấn Anh: Party discipline ("mất ghế Bộ Chính trị… **không bị truy tố hình
    sự**") is kept distinct from criminal prosecution — the exact distinction the plan
    demanded.
  - The **"đất vàng"** claim (§7) is properly hedged: "bài này **không tìm được nguồn
    xác minh**… **không khẳng định nó là sự thật**… chỉ được nêu ở đây như một giới
    hạn." Correctly quarantined as unverified.
  - §7 explicitly blocks the VinFast-as-accusation misreading and separates "lợi ích
    nhóm hợp pháp/công khai" from the illegal sense in §5. Register is consistent
    across all ten sections; no section is markedly weaker in voice.

The issues below are real but bounded — they are wording/notation defects, not
substance failures.

## Findings

- [wording · machinery leak — §5, §7] **The English pipeline word "run" leaks into the
  reader-facing body.** Two instances:
  - §5 (Lớp thứ hai): "bài nghiên cứu của **run này** không tìm thấy vụ trục lợi nào…"
  - §7 (đất vàng / VinFast): "không có bằng chứng nào **trong run này** cho thấy hành
    vi phạm pháp ở đây."
  This is exactly the class of pipeline-internal vocabulary the plan (§5, §10 build
  steps) and the improvement pass promised to keep out of §1–§9. "run" is untranslated
  process jargon; a general policy reader does not parse it. Operational framing belongs
  only in `### Receipts`. Fix: replace with plain reader language ("nghiên cứu cho bài
  này", "trong phạm vi nghiên cứu này"). (Note: the softer "trong lần chạy nghiên cứu
  này" at §5 line 106 and §7 line 205 is borderline but tolerable; the bare English
  "run này" is not.)

- [wording · spelling — §7] **"đọc giả" is a misspelling of "độc giả" (reader).** §7:
  "Cần nói rõ điều này để tránh **đọc giả** hiểu nhầm thành một cáo buộc trục lợi." The
  same word is spelled correctly as "độc giả" elsewhere (Receipts, improvement pass).
  In a politically sensitive published essay this typo sits in the single most
  sensitive sentence (the one disclaiming a VinFast accusation), so it should be fixed.

- [wording · notation inconsistency — whole document] **Confidence labels alternate
  between round "(B)/(C)" and square "[B]".** The evidence sections §2–§8 use round
  parentheses `(B)`/`(C)` almost throughout; the framing/conclusion/limits sections §1,
  §9, §10 use square brackets `[B]`/`[C]`/`[A]`. Worse, the two styles collide **inside
  a single §3 sentence**: "nên giữ ở **[B]** nhưng gắn rõ nguồn… hệ số phát thải… tăng
  3,2% so với 2023 **(B)**." A reader tracking the grading scheme will notice the drift.
  Pick one bracket convention and apply it document-wide. (The plan's own house-style
  line is self-contradictory here — it says "ngoặc vuông" then gives the example "(B)"
  — so this needs an explicit decision, not just find-and-replace.)

- [wording · jargon — §7, §10] **"claim" is used untranslated in the reader-facing
  body.** §7: "nó chỉ được nêu ở đây như một giới hạn, không phải một **claim**." §10:
  "không một **claim** nào trong toàn bài đạt được nhãn [A]." Use "khẳng định" /
  "luận điểm". (Its use inside `### Receipts`/summary — "khoảng 55 claim" — is fine;
  that is operational text.)

- [wording · over-technical tool language — §10] §10 is a reader-facing section of the
  essay, but it names the tool and error code directly: "bị chặn quyền truy cập
  **WebFetch** (lỗi **HTTP 403** với mọi tên miền…)". A policy reader does not know what
  WebFetch is. Reduce to plain terms ("không thể truy cập và đọc trực tiếp văn bản gốc
  trên mạng trong suốt quá trình thu thập dữ kiện"); the tool/error detail belongs in
  Receipts, where the specifics can stay.

- [wording · confidence labels read naturally?] Mostly yes — inline `(B)`/`(C)` after a
  claim is unobtrusive and the qualitative-range treatment ("hàng trăm tỷ tới vài nghìn
  tỷ", "khoảng 7–10 nghìn tỷ đồng") reads cleanly rather than as hedging clutter. **The
  [B]-ceiling IS stated in plain reader terms in §10** ("Người đọc nên xem đây là một
  phân tích [B] có thể và nên được kiểm chứng lại khi có nguồn sơ cấp"), and §1 forward-
  references it in one clean parenthetical. That part passes. The only drag on
  readability is a few over-nested sentences — chiefly §3 lines ~48–52, where a
  methodological aside ("được ba hãng tin độc lập dẫn lại… nên giữ ở [B] nhưng gắn rõ
  nguồn…") is jammed between the subject and the actual figure, producing a run-on.
  Consider splitting. Not blocking on its own, but it compounds the notation collision
  noted above.

- [register] Consistent third-person analytical voice throughout; the neutral-but-
  concluding stance is maintained and no passage reads as false balance. No section is a
  weak link on voice. This check passes.

## Verdict: FIX-IT

The prose quality and the sensitive-topic phrasing are strong, but there are concrete,
locatable wording defects that exceed "tiny/cosmetic": pipeline vocabulary ("run này")
leaking into §5 and §7 — precisely the leak this axis was told to catch — a misspelling
("đọc giả" → "độc giả") in the most sensitive sentence of §7, a document-wide confidence-
label notation inconsistency (round vs square, colliding within one §3 sentence), and
untranslated jargon ("claim", "WebFetch (HTTP 403)") in the reader-facing body/§10.

Required fixes (wording axis):
1. Remove the English word "run" from the body — §5 ("bài nghiên cứu của run này") and
   §7 ("không có bằng chứng nào trong run này") → plain reader Vietnamese.
2. Correct the spelling "đọc giả" → "độc giả" in §7.
3. Choose one confidence-label bracket convention and apply it uniformly across §1–§10
   (fix the §3 in-sentence collision in particular).
4. Replace "claim" with a Vietnamese term ("khẳng định"/"luận điểm") in §7 and §10.
5. In §10, state the source-access limit in plain terms; move the tool name/error code
   ("WebFetch", "HTTP 403") to Receipts.
6. (Recommended, not blocking) Split the §3 run-on sentence (lines ~48–52) so the
   emission-factor figure is not buried behind its sourcing aside.
