# Báo cáo giám khảo mù — GT-2 re-run (2026-07-02/03)

- **Grader:** opus (cùng nhà Claude — giới hạn khai báo), chấm mù, KHÔNG biết mapping,
  cấm đọc file, bắt buộc tự verify ≥5 claim chịu lực/bài qua WebSearch/WebFetch.
- **Mapping (grader không biết, coin flip `$RANDOM%2 = 1`):**
  **Output 1 = branch A-clean** (`branch-A-clean.md`, baseline một-lượt, không đọc repo,
  WebFetch sống) · **Output 2 = branch B** (pipeline, `.axiom/runs/20260702T064614Z-gt2-rerun-vn-policy/03-deliverable.md`,
  sha `c58f6e0d…`). Thứ tự ĐẢO so với eval 2026-07-01 (khi đó Output 1 = pipeline).
- **Điều kiện hai nhánh:** ĐỐI XỨNG — cùng phiên, cùng model writer (sonnet), cùng
  WebFetch sống. Bản branch-A đầu tiên bị loại vì nhiễm ngữ cảnh eval (xem ghi chú
  trong `branch-A.md`).

## Bảng điểm

| # | Tiêu chí | Output 1 (= A-clean) | Output 2 (= B pipeline) |
|---|----------|:---:|:---:|
| 1 | Có nguồn | 2 | 2 |
| 2 | Nhãn tin cậy trung thực | 2 | 2 |
| 3 | Phản biện / steelman | 2 | 2 |
| 4 | Đúng sự thật | **2** | **2** |
| 5 | Chống rỗng (chiều sâu) | 2 | 2 |
| 6 | Bám scope (+ công bố thay đổi) | **1** | **2** |
| 7 | Khai báo giới hạn | 2 | 2 |
| **Tổng** | | **13/14** | **14/14** |

**Delta B − A = +1.** (Grader ghi chú: nếu áp định nghĩa nhãn A ngặt theo AXIOM —
"Proven" đòi kiểm chứng độc lập — thì Output 1 tụt mục 2 xuống 1, delta nới thành +2.)

## Mục 4 — kiểm chứng web của grader (tóm tắt)

- **Output 1:** 6 claim kiểm (470/470 NQ 203 16/6; kết thúc cấp huyện 1/7; 53%/30%
  cán bộ đáp ứng; 705 xã; 10.035→3.321; NQ 202) — **tất cả KHỚP, không lỗi.**
- **Output 2:** 6 claim kiểm, mặt bằng khó hơn (461/465 ngày 12/6; NQ 60-NQ/TW 12/4
  HN TW 11; bộ số 85.447/77.278/41.031; DOI 10.1111/jors.12640 có thật + nội dung đúng;
  quote Lê Hồng Hiệp khớp nguyên văn; Đan Mạch 271→98 "expenditure-neutral") —
  **tất cả KHỚP, không lỗi.**

## Kết luận của grader (nguyên văn ý chính)

Output 2 tốt hơn, chênh 1 điểm. Khác biệt QUYẾT ĐỊNH không nằm ở độ chính xác (hoà
2–2) mà ở **kỷ luật scope và minh bạch quy trình**: Output 2 chủ động đối mặt ranh
giới "12 tháng" và công bố các số đã loại/hạ cấp ("31 nghiên cứu/14 quốc gia",
~250.000); Output 1 phủ mờ ranh giới đó và gắn nhãn "Proven" cho số tự-công-bố chưa
kiểm toán (53%/30%). Cộng: chiều sâu (tách cột Đảng/Nhà nước, ba mốc pháp lý, bằng
chứng quốc tế + meta-analysis) và lời khai giới hạn cấp quy trình (checker cùng dòng
model) mà Output 1 không có. "Output 1 là bài báo chí giải thích xuất sắc; Output 2
làm được đúng thế và thêm một lớp tự-kiểm-soát về nguồn, scope và giới hạn — chính
lớp đó ăn điểm."

## Chi phí (biến số đo, re-run này)

| | Pipeline (B) | Baseline A-clean |
|---|---|---|
| Lượt subagent | ~15 (intake + 4 research + design + assembly + coach + assembly-fix ×2 + inspector ×6) | **1** |
| Cổng người | 2 (outline + sign-off) | 0 |
| Vòng FIX-IT | 1 (inspector bắt số không verify được — lỗ hổng cũ đã vá) | — |
