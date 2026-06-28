# Coach pass — station 5

**Bài:** "Học để làm bác sĩ chuyên khoa ở Việt Nam: Ai trả tiền, và tại sao điều đó quan trọng?"

**Verdict: ONE-IMPROVEMENT-PASS** (gửi lại Assembly đúng MỘT lần với các ghi chú dưới)

## Sáu góc soi (tóm tắt)
- **Clarity:** Đọc được, logic theo phần. Một số đoạn còn giọng hành chính ("Điều cần phân biệt rõ:", "Lưu ý:", tiêu đề kiểu checklist). "Hệ số 2,67" chưa giải thích cho người đọc không biết thang lương ngành công.
- **Detail:** Con số đầy đủ, có nhãn. Nhưng phép tính hoàn vốn dùng 12tr/tháng (đỉnh khoảng 10–12,5tr) mà không nói tại sao chọn mức lạc quan nhất. Phép tính ngân sách steelman ("270–450 tỷ/năm") chưa rõ 1.500–2.000 là số nhập học mới/năm hay tổng đang học.
- **Completeness:** Phủ đủ scope. 4 khuyến nghị chưa xếp thứ tự ưu tiên/lộ trình theo khung thời gian thông tư Q3/2026.
- **Alternatives:** Steelman 4 (không có "match") yếu nhất. Thiếu một steelman mạnh hơn: học phí như "filter tài chính" chọn người cam kết, giảm bỏ dở.
- **Honesty:** Nhãn nhất quán, không thổi phồng. NHƯNG câu "không có lý do kinh tế nào khiến điều đó không thể mở rộng" (Phần 7) quá tuyệt đối — thực có khác biệt cơ cấu ngân sách TP.HCM vs tỉnh khác.
- **Wow:** Indonesia GDP ngang VN đã làm được — rất sắc. Góc chưa khai thác: giá trị lao động lâm sàng BV công nhận từ BSNT 3 năm mà không trả đồng nào — ai đang tài trợ ai?

**Team:** 1 writer là đúng, không R6. **Inspection:** checklist 10 mục, đọc thẳng deliverable — chống R5 tốt.

## Hai cải thiện để sửa MỘT lần

**Cải thiện 1 — Phép tính: đủ bước, chọn con số trung thực.**
- Hoàn vốn (Phần 6): nói rõ đang dùng giả định lương nào và tại sao; tốt nhất trình bày cả 2 kịch bản (mức thấp ~10tr → ~56 tháng; mức cao 12,5tr → ngắn hơn). Đừng chỉ dùng con số lạc quan nhất.
- Ngân sách steelman: làm rõ 1.500–2.000 là số nhập học mới/năm hay tổng đang học; trình bày phép tính để con số không bị phản bác dễ.

**Cải thiện 2 — Thêm steelman 5 + sửa câu tuyệt đối.**
- Thêm steelman "filter tài chính" (học phí tự chọn lọc người cam kết, giảm bỏ dở), rồi phản hồi bằng dữ liệu thực nếu có; nếu không có dữ liệu VN, ghi nhận "chưa kiểm chứng trong bối cảnh VN" [C].
- Sửa câu "không có lý do kinh tế nào…" thành phát biểu trung thực hơn về khác biệt cơ cấu ngân sách TP.HCM vs các tỉnh.

*(Coach là read-only; file này do orchestrator ghi lại nguyên văn kết luận của Coach làm receipt.)*

---

## Receipts — Assembly đã xử lý (ghi bởi assembly station sau khi nhận ONE-IMPROVEMENT-PASS)

Tất cả sửa đổi thực hiện trực tiếp trên `03-deliverable.md`. Không thêm claim mới ngoài `01-research.md`. Không thay đổi scope hay cấu trúc 9 phần.

### Cải thiện 1 đã xử lý:

**1a — Phép tính hoàn vốn hai kịch bản:**
Thay đoạn đơn "559 ÷ 12 ≈ 46,5 tháng" bằng bảng hai kịch bản:
- Mức thấp 10M/tháng: 559 ÷ 10 = 56 tháng (~4,7 năm) [B]
- Mức cao 12,5M/tháng: 559 ÷ 12,5 = 45 tháng (~3,7 năm) [B]
Ghi rõ cả hai dùng "tổng thu nhập có phụ cấp" [A], không phải lương cơ bản.

**1b — Phép tính ngân sách steelman 1 bổ sung bước trung gian:**
Thêm bước: nhập học mới (1.500–2.000/năm) × 3 khóa = tổng đang học ≈ 4.500–6.000 [B].
Chi phí miễn học phí/năm tính trên tổng đang học: 4.500 × 60M = 270 tỷ (cận dưới), 6.000 × 75M = 450 tỷ (cận trên) [B].
Gắn nhãn [B] cho giả định số nhập học toàn quốc vì research không có con số chính xác.

### Cải thiện 2 đã xử lý:

**2a — Thêm Luận điểm 5 (filter tài chính):**
Trình bày nghiêm túc: học phí tạo rào cản có thể giảm tỷ lệ bỏ dở.
Ghi nhận thẳng: "không có dữ liệu Việt Nam nào trong nghiên cứu này về tỷ lệ bỏ dở BSNT... luận điểm này chưa được kiểm chứng trong bối cảnh Việt Nam" [C].
Phản biện công bằng: filter tài chính lọc theo khả năng chi trả gia đình, không phải năng lực lâm sàng.

**2b — Sửa câu tuyệt đối:**
Câu cũ: "không có lý do kinh tế nào khiến điều đó không thể mở rộng"
Câu mới: ghi rõ TP.HCM có cơ cấu thu ngân sách đặc thù (mạnh hơn phần lớn tỉnh); nhân rộng toàn quốc cần ngân sách trung ương; vẫn giữ kết luận chính (đây là bài toán ưu tiên, không phải bất khả thi, với Indonesia là bằng chứng).

### Chỉnh nhỏ giọng văn:
- "Điều cần phân biệt rõ:" → câu văn liền mạch "Nhưng có một điểm quan trọng cần phân biệt ngay:"
- "Quan trọng:" → câu dẫn tự nhiên "Một con số thỉnh thoảng xuất hiện trên báo chí và cần nói rõ:"
- Hệ số 2,67 → thêm giải thích ngắn "(hệ số trong thang lương nhà nước — nhân với mức lương cơ sở để ra số tiền thực nhận)"
