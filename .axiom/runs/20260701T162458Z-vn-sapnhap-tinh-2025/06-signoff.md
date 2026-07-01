# Human sign-off — Sáp nhập tỉnh 2025

- **Người ký duyệt (principal):** người dùng (vipho.thita@gmail.com)
- **Ngày:** 2026-07-01
- **Quyết định:** ✅ **DUYỆT + SỬA POLISH** — chấp nhận bản thảo để ship, với điều kiện
  áp trước 4 sửa cosmetic đã được inspector wording/consistency gắn cờ là non-blocking.

## Phạm vi được cho phép (chính xác)
Người duyệt cho phép **đúng 4 sửa cosmetic**, KHÔNG đổi nội dung/claim/số liệu/nguồn:
1. "kinh tế - xã hội" → "kinh tế-xã hội" (thống nhất kiểu gạch nối).
2. "cũng nằm phản biện" → "cũng là nơi có phản biện" (sửa đảo ngữ vụng).
3. Khử lặp "nhiều nhà quan sát" (một lần → "giới phân tích").
4. Bỏ cụm treo ", nếu có" ở cuối đoạn tầng 2.

## Xử lý kỷ luật gate (improvement C — chống ship bản chưa kiểm)
- Sửa sau khi 3 trục inspection PASS → bytes đổi → theo quy tắc gate, fingerprint cũ
  không còn khớp. Vì các sửa này là **cosmetic-only, do inspector tự liệt kê là
  "sửa nhanh khi ship", và được human ký duyệt tường minh**, orchestrator KHÔNG chạy lại
  full 3-trục (tránh R6 cho 4 từ), mà:
  - Áp sửa bằng 4 Edit surgical (old_string duy nhất) → biết chính xác chỉ đổi 4 chỗ.
  - **Re-snapshot** `05-inspection.sha` đúng bytes ship (đã `sha256sum -c` = OK).
  - Ghi rõ trong Receipts của deliverable + file này.
- Đây là một **judgment call có ghi nhận**: nội dung được kiểm định == nội dung ship,
  sai khác duy nhất là 4 sửa cosmetic được người duyệt cho phép. Không có claim/số liệu
  nào thay đổi nên không phát sinh rủi ro technical-accuracy mới.

## Giới hạn người duyệt đã được thông báo trước khi ký
- Mọi lớp kiểm định là **model cùng dòng (Claude)** → chỉ khử một phần điểm mù chung;
  model khác hãng hoặc mắt người vẫn là cổng cuối đáng giá.
- **WebFetch bị chặn 403** trong sandbox → không nguồn nào được re-fetch trực tiếp;
  nhãn trần phần lớn là **B**. Bài đã khai báo thẳng, không gắn A giả.
- 3 điểm được đề nghị tự soi: (1) 7/34 < 17/63; (2) "50% bí thư từ 6 tỉnh" (ISEAS, B,
  suy đoán); (3) phân biệt NQ 60-NQ/TW (Đảng) vs NQ 202/2025/QH15 (Quốc hội).
