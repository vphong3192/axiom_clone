# Golden tasks — fixtures cho eval A/B

Mỗi task có **tiêu chí đạt biết trước** (điều một bản tốt PHẢI có/PHẢI tránh). Dùng để
chấm mù A vs B theo rubric trong `README.md`. Mở rộng khi có loại task mới.

---

## GT-1 · Phân tích chính sách có nguồn (`normal`→`full`)
**Prompt:** "Viết ~800 từ phân tích ưu/nhược của thuế tài sản ở VN, có nguồn, nêu cả
phía phản đối mạnh nhất."
**Bẫy cố tình:** dễ một chiều; dễ bịa số thuế/tỷ lệ; dễ nhãn A cho số chưa kiểm.
**Bản tốt PHẢI:** trích nguồn cho mọi số; có steelman phía phản đối; nhãn tin cậy khớp;
khai báo nếu không fetch được nguồn. **PHẢI TRÁNH:** con số không nguồn; kết luận nghiêng
mà không nêu phía kia.
**Phân biệt A/B kỳ vọng:** B nên ăn điểm ở "phản biện" và "có nguồn".

## GT-2 · Sự kiện thời sự cần fact mới (`full`/`high-stakes`)
**Prompt:** "Giải thích một thay đổi chính sách/luật lớn của VN trong 12 tháng qua và
vì sao nó gây tranh cãi."
**Bẫy:** kiến thức cũ dễ sai mốc/số; dễ hallucinate tên văn bản.
**Bản tốt PHẢI:** research trước (không dựng từ trí nhớ); phân biệt cấp văn bản; ngày ban
hành ≠ ngày hiệu lực khi liên quan; nêu cả hai phía tranh cãi. **PHẢI TRÁNH:** số/tên nghị
quyết bịa; gộp mốc thời gian.
**Phân biệt A/B kỳ vọng:** B ăn đậm ở "đúng sự thật" — đây là loại task baseline hay sai
nhất. (So chuẩn: xem run thật `.axiom/runs/…-vn-sapnhap-tinh-2025/` — bắt được đúng các
bẫy này.)

## GT-3 · Việc nhỏ, rõ (kiểm chống OVER-build)
**Prompt cố định:** "Tóm tắt 5 gạch đầu dòng khác biệt chính giữa *tổng tỷ suất sinh
(TFR)* và *tỷ suất sinh thô (CBR)*."

**Vì sao cặp này:** định nghĩa nhân khẩu học ổn định, không cần dữ kiện mới, không có
mốc thời gian nào để sai — nhưng vẫn đủ kỹ thuật để một model cẩn thận có thể *tưởng*
là cần research. Đúng loại task dễ bị nống lên.

**Mục đích:** GT-1/2/4 hỏi "pipeline có làm bài tốt hơn không?". GT-3 hỏi ngược lại:
**"pipeline có biết khi nào đừng chạy chính nó không?"**

**Tiêu chí đạt (v10 — sắc hơn v9):**
- Triage phải chọn lane **`direct`** → trả lời thẳng, **không tạo run folder, không gọi
  một subagent nào**. Lane `normal` là *đạt có điều kiện* nếu nêu được lý do thật.
- Chạm tới `full` (design + coach + 2 trục inspection) → **TRƯỢT về hiệu quả**, kể cả
  khi output đúng hoàn toàn.
- Đo: số lượt gọi model. Đạt = 0 subagent. Trượt = ≥ 4.

**Cách chạy cho khỏi rigged (bắt buộc):** người chạy eval đã biết đáp án mong đợi, nên
tự triage rồi tự chấm là vô giá trị (R5). Giao phần triage cho **một agent không biết
mình đang bị đo**: đưa nó `CLAUDE.md` + `.claude/commands/axiom.md` + đúng prompt trên,
yêu cầu nó thực hiện bước 1 và báo lane + số lượt gọi dự kiến. Không nói gì về eval,
không gợi ý lane.

**Delta A/B kỳ vọng:** ≈ 0. Nếu B (pipeline) không hơn A (một lượt) mà tốn gấp nhiều
lần, đó là xác nhận triage đúng khi cho task này đi lane nhẹ — không phải lý do để thêm
trạm.

## GT-4 · Đoạn văn học ngắn (`full` — kiểm "wow" không chỉ "true")
**Prompt:** "Viết một đoạn tản văn ~400 từ về ký ức một cơn mưa, giọng [tác giả/thời kỳ]."
**Bẫy:** rubric thiên "đúng sự thật" dễ bỏ quên trục "impressive"; văn học ít claim để
gắn nhãn. **Bản tốt PHẢI:** có "wow" thật (hình ảnh, nhịp), giữ giọng yêu cầu; trung thực
ở chỗ khác — không bịa trích dẫn tác giả có thật.
**Ghi chú chấm:** với task văn học, đổi trọng số rubric (bỏ "có nguồn"/"đúng sự thật" cho
phần sáng tác, tăng "wow" + "bám giọng"). Nhắc: AXIOM là cho cả học thuật LẪN văn học.

---

**Cách chọn task khi eval nhanh:** GT-3 chạy **trước** — nó rẻ nhất và kiểm đúng chỗ v10
đặt cược lớn nhất (quy tắc "phân vân thì chọn lane thấp"). Rồi tới GT-2. Cặp này là tối
thiểu — một cái đo pipeline có thêm giá trị, một cái đo nó có biết KHI NÀO đừng thêm.
