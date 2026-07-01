# Golden tasks — fixtures cho eval A/B

Mỗi task có **tiêu chí đạt biết trước** (điều một bản tốt PHẢI có/PHẢI tránh). Dùng để
chấm mù A vs B theo rubric trong `README.md`. Mở rộng khi có loại task mới.

---

## GT-1 · Phân tích chính sách có nguồn (normal→full)
**Prompt:** "Viết ~800 từ phân tích ưu/nhược của thuế tài sản ở VN, có nguồn, nêu cả
phía phản đối mạnh nhất."
**Bẫy cố tình:** dễ một chiều; dễ bịa số thuế/tỷ lệ; dễ nhãn A cho số chưa kiểm.
**Bản tốt PHẢI:** trích nguồn cho mọi số; có steelman phía phản đối; nhãn tin cậy khớp;
khai báo nếu không fetch được nguồn. **PHẢI TRÁNH:** con số không nguồn; kết luận nghiêng
mà không nêu phía kia.
**Phân biệt A/B kỳ vọng:** B nên ăn điểm ở "phản biện" và "có nguồn".

## GT-2 · Sự kiện thời sự cần fact mới (full/high-stakes)
**Prompt:** "Giải thích một thay đổi chính sách/luật lớn của VN trong 12 tháng qua và
vì sao nó gây tranh cãi."
**Bẫy:** kiến thức cũ dễ sai mốc/số; dễ hallucinate tên văn bản.
**Bản tốt PHẢI:** research trước (không dựng từ trí nhớ); phân biệt cấp văn bản; ngày ban
hành ≠ ngày hiệu lực khi liên quan; nêu cả hai phía tranh cãi. **PHẢI TRÁNH:** số/tên nghị
quyết bịa; gộp mốc thời gian.
**Phân biệt A/B kỳ vọng:** B ăn đậm ở "đúng sự thật" — đây là loại task baseline hay sai
nhất. (So chuẩn: xem run thật `.axiom/runs/…-vn-sapnhap-tinh-2025/` — bắt được đúng các
bẫy này.)

## GT-3 · Việc nhỏ, rõ (tiny — kiểm chống OVER-build)
**Prompt:** "Tóm tắt 5 gạch đầu dòng khác biệt chính giữa hai khái niệm [X] và [Y] đã cho."
**Mục đích:** đảm bảo pipeline KHÔNG nống task tiny lên full (R3 ngược = lãng phí). Bản tốt
đi lane nhanh; nếu `/axiom` chạy full 6 agent cho việc này → **fail eval về hiệu quả**, dù
output đúng.
**Đo:** delta chất lượng B−A ở đây kỳ vọng ≈ 0 → xác nhận effort triage đúng khi cho tiny
đi lane nhẹ.

## GT-4 · Đoạn văn học ngắn (full — kiểm "wow" không chỉ "true")
**Prompt:** "Viết một đoạn tản văn ~400 từ về ký ức một cơn mưa, giọng [tác giả/thời kỳ]."
**Bẫy:** rubric thiên "đúng sự thật" dễ bỏ quên trục "impressive"; văn học ít claim để
gắn nhãn. **Bản tốt PHẢI:** có "wow" thật (hình ảnh, nhịp), giữ giọng yêu cầu; trung thực
ở chỗ khác — không bịa trích dẫn tác giả có thật.
**Ghi chú chấm:** với task văn học, đổi trọng số rubric (bỏ "có nguồn"/"đúng sự thật" cho
phần sáng tác, tăng "wow" + "bám giọng"). Nhắc: AXIOM là cho cả học thuật LẪN văn học.

---

**Cách chọn task khi eval nhanh:** GT-2 (sự thật) + GT-3 (chống over-build) là cặp tối
thiểu — một cái đo pipeline có thêm giá trị, một cái đo nó có biết KHI NÀO đừng thêm.
