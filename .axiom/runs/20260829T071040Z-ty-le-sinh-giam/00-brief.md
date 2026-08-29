# Brief — Tại sao tỷ lệ sinh ngày càng giảm

## Đọc đề (trước khi hỏi)

Yêu cầu thô: *"Tại sao tỷ lệ sinh ngày càng giảm"*. Một câu, nhưng chứa ít nhất bốn ngã
rẽ, mỗi ngã cho ra một bài khác hẳn — nên Cổng 0 chạy trước, chưa delegate trạm nào.

## Điều tôi TỰ quyết (không hỏi — nêu ra để bạn lật lại nếu sai)

- **Ngôn ngữ đầu ra:** tiếng Việt.
- **Thể loại:** bài phân tích có nguồn, không phải bài báo tin tức, không phải review học thuật hệ thống.
- **Mọi claim gắn nhãn A/B/C/D + nguồn**, bảng độ tin cậy ở cuối bài (chuẩn AXIOM).
- **Nghĩa vụ steelman:** phía phản đối được trình bày ở bản mạnh nhất (bài học 5).

## Điều PHẢI hỏi (câu trả lời khác nhau → bài khác nhau)

1. Phạm vi địa lý — Việt Nam, toàn cầu, hay Đông Á có đối chiếu?
2. Câu hỏi thật đằng sau — nguyên nhân, hay hiệu quả chính sách, hay hệ quả?
3. Độc giả + độ dài.
4. Bài này để làm gì (quyết định điều gì / đăng ở đâu / để học)?

## Lane

**Chưa chốt** — theo quy trình v10, lane được đặt *sau* khi có câu trả lời, vì chúng
thường làm task đổi lane. Dự kiến sơ bộ `normal` hoặc `full`.

## Clarified scope (Cổng 0 — người dùng đã trả lời)

| Câu hỏi | Trả lời |
|---|---|
| Phạm vi | **Đông Á + Việt Nam** — so VN với Hàn/Nhật/Trung/Đài, hỏi VN đang đi trên đường nào |
| Câu hỏi thật | **Cả ba** — nguyên nhân · vì sao chính sách khuyến sinh thất bại · hệ quả/kịch bản |
| Độc giả & độ dài | ~1000 từ, độc giả phổ thông có học |
| Mục đích | **Để đăng** (blog/báo/mạng xã hội) — cần góc riêng và mở bài có sức kéo |

## Căng thẳng phát hiện ngay tại Cổng 0 (Axiom 8 — công bố, không nuốt)

Ba câu hỏi chia đều cho 1000 từ = ~330 từ mỗi phần. Đó là ba bài tóm tắt cạnh nhau,
không phải một bài — đúng loại mỏng mà R3 cấm, và với mục đích "để đăng" thì một bài
dàn đều còn tệ hơn nữa: không có luận điểm nào đủ sức để người ta chia sẻ.

**Cách xử lý tôi chọn (giả định có thể bị lật ở Cổng 1):** không chia đều, mà xâu ba
câu hỏi thành **một mạch nhân quả duy nhất**, lấy câu hỏi 2 làm trục vì nó có sức kéo
lớn nhất và nhiều bằng chứng phản trực giác nhất:

> Nguyên nhân (nền, ~30%) → *vì thế* chính sách khuyến sinh thất bại ở đâu (trục, ~45%)
> → *nên* kịch bản còn lại là gì (kết, ~25%).

Cả ba câu hỏi đều được trả lời, nhưng phục vụ một luận điểm chứ không đứng cạnh nhau.

**Nới độ dài:** ~1100–1200 từ (thay vì 1000) để trục giữa đủ chỗ thở. Vượt 1300 là tín
hiệu lan man, phải cắt.

## Lane: `full`

Vì: (a) bề mặt dữ kiện rộng — 5 nước + VN × 3 câu hỏi, nhiều số liệu chịu lực dễ sai
mốc; (b) bài công khai, có người đọc thật; (c) chính bài toán nén-ba-thành-một ở trên
là một vấn đề *cấu trúc*, đáng một trạm design thật thay vì để assembly tự ứng biến.

Đội hình (nhỏ nhất mà xong việc): research **1 agent** (không fan-out — bề rộng lấy
bằng tool call song song, bài học 12) → design → assembly → coach → **2 trục** inspection
(`text` + `technical-accuracy`). 6 lượt gọi model.

## Budgets

Deliverable N ≈ 1150 từ → `01-research.md` ≤ **2300 từ** · plan ≤ **380 từ** ·
outline trình người ≤ 30 dòng.
