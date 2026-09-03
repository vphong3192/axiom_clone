# Brief — Tản văn ~400 từ về ký ức một cơn mưa, giọng tiền chiến kiểu Thạch Lam

*(NHÁNH B của eval GT-4. Agent ở các trạm KHÔNG được biết đây là eval.)*

- Lane / effort: **normal**
- **Lane rejected: `direct`** — và đây là chỗ phải thành thật: với một đoạn 400 từ không
  cần dữ kiện mới, triage trung thực **rất có thể phải nói `direct`**. Tôi chọn `normal`
  vì mục đích của run này là *kiểm pipeline trên task sáng tác*; nếu B thua A, chính điều
  đó là bằng chứng lane đúng phải là `direct`, và harness phải nói thẳng ra.
- Deliverable: ~400 từ (350–480), tiếng Việt, một đoạn tản văn. **Không có bảng độ tin
  cậy** — văn sáng tác không có claim để gắn nhãn; ép bảng vào là áp sai công cụ.
- Agreed scope: ký ức một cơn mưa. Giọng: tản văn tiền chiến kiểu Thạch Lam.
- Budgets: research ≤ 800 từ · plan ≤ 130 từ · thân bài 350–480 từ

## Model tiering — thử và KHÔNG chạy được

Theo `/axiom`: task literary/creative → assembly = **fable**. Đã thử: `fable` trả
HTTP 429 *"requires usage credits"* trong phiên này. Nhánh A2 (một lượt trên fable, dựng
để tách confound) cũng chết cùng lý do.

**Phát hiện về harness:** bảng tiering chỉ định một model có thể không khả dụng, và
**không có phương án dự phòng nào được ghi** — khác với trường hợp inspector không khả
dụng, vốn đã có luật (không bao giờ tụt về model của người làm; ưu tiên chờ; nếu buộc thì
khai báo là kiểm suy giảm).

**Hệ quả TỐT cho phép thử:** assembly chạy **sonnet**, tức **cùng model với nhánh A**.
Confound biến mất — A vs B giờ tách được đúng hiệu ứng *quy trình*, không lẫn hiệu ứng
*model*. Đây là phép so sạch nhất trong cả bốn GT.

## Điều gì KHÔNG áp dụng ở đây

Không nhãn A/B/C/D, không bảng nguồn, không "khai báo trần B" trong bài. Trần B là về
*dữ kiện*; một đoạn tản văn không khẳng định dữ kiện nào. Ép các thứ đó vào chính là cách
pipeline làm hỏng văn — và nếu inspector đòi chúng, đó là lỗi của harness, không phải của bài.

## Preflight

- Egress: BLOCKED (2026-09-03T02:03:24Z)
- Truth-ceiling for this run: **B**
