# Brief — Vì sao Việt Nam khó thoát bẫy thu nhập trung bình

*(TEST FAN-OUT. Mục đích: chạy đường code duy nhất chưa từng được thực thi.)*

## Đề bài (nguyên văn, trước mọi chỉ dẫn — bài học 22)

> "Vì sao Việt Nam khó thoát bẫy thu nhập trung bình?"

## Lane: `high-stakes` — ÉP, và công bố (R4)

Triage trung thực cho đề này sẽ nói **`full`**: một câu hỏi, một nước, bài phân tích.
Tôi ép lên `high-stakes` **vì mục đích của run là kiểm cơ chế fan-out**, vốn theo
`/axiom` chỉ chạy ở lane đó. Đây không phải đánh giá thật về độ rủi ro của đề.

- **Lane rejected: `full`** — sẽ là lựa chọn đúng nếu đây là việc thật.

## Vì sao đề này biện minh được fan-out (một câu mỗi nhánh)

Theo `/axiom`: fan-out chỉ khi các nhánh cần **kỹ năng khác nhau**, không phải khi đề
có nhiều mảng.

- **`vn`** — dữ liệu và chính sách Việt Nam: số liệu GDP/đầu người, năng suất, văn kiện
  quy hoạch, nguồn tiếng Việt. *Kỹ năng: đọc nguồn chính thức tiếng Việt.*
- **`intl`** — kinh tế học phát triển về middle-income trap: định nghĩa, tranh cãi về
  việc khái niệm này có tồn tại không, bằng chứng so sánh quốc tế. *Kỹ năng: đọc học
  thuật tiếng Anh.*

Hai nhánh này thật sự cần hai loại nguồn và hai loại đọc. Nếu chỉ khác chủ đề mà cùng
kỹ năng, quy tắc bảo **không** được tách.

## Phạm vi test

Chỉ kiểm **cơ chế fan-out research**: 2 strand song song → nối bằng `cat` → orchestrator
chỉ đọc mục `## Open conflicts / gaps` của từng nhánh, **không** đọc toàn văn vào context.

**Không** kiểm fan-out assembly + integration pass — cơ chế riêng, cần deliverable
>3000 từ, quá đắt cho một phép thử cơ chế. Ghi nhận là **vẫn chưa được kiểm**.

- Budgets: mỗi strand ≤ 1000 từ

## Preflight

- Egress: BLOCKED (2026-09-03T02:56:45Z)
- Truth-ceiling for this run: **B**
