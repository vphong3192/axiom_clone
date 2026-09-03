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
vì sao nó gây tranh cãi." (~900 từ, độc giả phổ thông có học)
**Bẫy:** kiến thức cũ dễ sai mốc/số; dễ hallucinate tên văn bản.
**Bản tốt PHẢI:** research trước (không dựng từ trí nhớ); phân biệt cấp văn bản; ngày ban
hành ≠ ngày hiệu lực khi liên quan; nêu cả hai phía tranh cãi. **PHẢI TRÁNH:** số/tên nghị
quyết bịa; gộp mốc thời gian.
**Phân biệt A/B kỳ vọng:** B ăn đậm ở "đúng sự thật" — đây là loại task baseline hay sai
nhất.

### Giao thức chạy GT-2 (chốt 2026-09-01, có sai lệch so với giao thức chung — khai báo)

1. **Nhánh A chọn chủ đề, nhánh B dùng lại đúng chủ đề đó.** Người chạy eval không được
   tự chọn: cửa sổ đề bài là 12 tháng gần nhất, tự chọn từ trí nhớ là tiêm sẵn lỗi vào
   phép thử.
2. **Nhánh B chạy lane `normal`, không phải `full`.** Nhãn `full` viết từ thời v9. GT-2
   hỏi về **độ chính xác dữ kiện** — thứ do research + inspection tạo ra; phần thêm của
   `full` (design agent, coach, trục thứ hai) là về cấu trúc và khẩu vị. Chạy `normal`
   vừa trả lời đúng câu hỏi, vừa kiểm luôn đường code `normal` chưa từng chạy end-to-end.
   *Hệ quả phải nêu khi đọc kết quả:* delta đo được là **cận dưới** của delta mà `full`
   sẽ cho.
3. **Chấm mù bắt buộc.** Một agent thứ ba nhận cả hai bản, **không biết bản nào là A hay
   B**, chấm theo rubric trong `README.md`. Không ai trong hai nhánh được biết mình đang
   bị so.
4. **Egress bị chặn trong môi trường này** → cả hai nhánh cùng bị trần B, cùng chỉ có
   WebSearch. Sân chơi bằng phẳng, nhưng delta đo được là delta *trong điều kiện không
   mở được nguồn*, không phải delta tuyệt đối.

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

## GT-3b · Ca lưỡng lự (kiểm quy tắc "phân vân thì chọn lane thấp")
**Prompt cố định:** "Viết ~900 từ phân tích vì sao giá nhà ở Hà Nội và TP.HCM tăng nhanh
hơn thu nhập. Cho độc giả phổ thông, để đăng blog."

**Vì sao ca này:** GT-3 kiểm đầu dễ — task hiển nhiên nhỏ được nhận ra là nhỏ, chưa
chứng minh gì. Quy tắc mà v10 đặt cược lớn nhất (*"phân vân thì chọn lane thấp, leo
thang khi có bằng chứng"*) chỉ có hiệu lực ở ca **thật sự lưỡng lự**, nên phải có một
fixture mà **phản xạ và lựa chọn đúng lệch nhau**.

Ca này lưỡng lự thật: cần dữ kiện mới (giá nhà, thu nhập) → không thể `direct`. Nhưng
nó là **một câu hỏi, một nước, một chủ đề, 900 từ** → theo bảng lane đó là `normal`
("ordinary research/writing task"), không phải `full` ("important or multi-part"). Cái
kéo về `full` là *cảm giác*: kinh tế, số liệu, để đăng, nghe "quan trọng".

**Tiêu chí chấm — chấm LẬP LUẬN, không chấm lane:**
- **ĐẠT** — chọn `normal` **và** nêu đích danh `full` là phương án đã cân nhắc rồi loại,
  kèm lý do; *hoặc* chọn `full` nhưng dẫn **bằng chứng cụ thể** buộc phải leo thang.
- **ĐẠT CÓ ĐIỀU KIỆN** — chọn `normal` nhưng không cho thấy đã cân nhắc gì (đúng đáp án,
  không thấy lập luận).
- **TRƯỢT** — chọn `full` mà lý do chỉ là quan trọng chung chung / "cho chắc" / "chủ đề
  nhạy cảm", không có bằng chứng cụ thể nào về độ rộng thật của task.

Chọn `full` **không** tự động là trượt. Bỏ qua việc cân nhắc mới là trượt.

**Cách chạy:** như GT-3 — triage giao cho agent không biết mình đang bị đo, chỉ đưa
`CLAUDE.md` + `.claude/commands/axiom.md` + prompt. Chạy **ít nhất 2 lượt song song** để
có tín hiệu phương sai; một lượt không đủ kết luận gì về harness.

**Đối chứng có sẵn trong repo:** run `20260829T071040Z-ty-le-sinh-giam` là một ca lưỡng
lự thật (1.000 từ — nhỏ; nhưng 6 nước × 3 câu hỏi, để đăng — rộng) và orchestrator ở đó
chọn thẳng `full` **không hề nêu lane thấp**. Theo thang trên, đó là TRƯỢT về process
(dù lựa chọn cuối có thể vẫn đúng). Đó là baseline để so.

## GT-4 · Đoạn văn học ngắn (kiểm "wow", không chỉ "true")
**Prompt cố định:** "Viết một đoạn tản văn ~400 từ về ký ức một cơn mưa, giọng tản văn
tiền chiến kiểu Thạch Lam (Tự Lực Văn Đoàn, thập niên 1930)."

**Vì sao pin giọng này:** cần một giọng **cụ thể, có thể kiểm được** (từ vựng, cú pháp,
nhịp) chứ không phải "văn hay". Thạch Lam đã mất từ 1942 nên đây là bài tập phỏng giọng
theo thông lệ văn học, không phải mạo danh người đang sống.

**Chấm bằng Rubric B** (task sáng tác) trong `README.md`, không phải rubric chính.

**Bẫy:** dễ sáo ("mưa rơi tí tách", "ký ức ùa về"); dễ trượt về giọng hiện đại; và —
**tuyệt đối không bịa trích dẫn của Thạch Lam hay tác giả có thật nào**. Phỏng giọng là
hợp lệ; đặt lời vào miệng người thật thì không.

**Câu hỏi thật GT-4 đặt ra — và nó khác ba task kia:** *pipeline có GIÚP hay có HẠI cho
việc sáng tác?* Ba task trước, pipeline thắng nhờ **kỷ luật nguồn**. Ở đây gần như không
có gì để gắn nguồn — nên hoặc lợi thế đó biến mất, hoặc tệ hơn: nó đẩy văn về phía an
toàn, kiểm được, nhạt.

**Dự đoán ghi trước khi chạy (2026-09-03):** tôi cho rằng **B sẽ hoà hoặc thua A**, và
nếu thua thì thua ở "hình ảnh có sức" và "cụ thể thay vì sáo". Lý do: mọi cơ chế làm
pipeline thắng ở GT-1/GT-2 (đối chiếu nguồn, loại claim không đỡ được, inspector đòi mọi
câu truy được về kho dữ kiện) đều **không có đối tượng** trong văn xuôi sáng tác — và một
inspector quen đòi "câu này lấy từ đâu" rất dễ bào mòn đúng những câu liều lĩnh nhất.
Nếu dự đoán này đúng, kết luận **không** phải "sửa pipeline cho giỏi văn" mà là: **lớp
task sáng tác nên đi lane `direct`**, và harness phải nói thẳng điều đó.

---

**Cách chọn task khi eval nhanh:** GT-3 chạy **trước** — nó rẻ nhất và kiểm đúng chỗ v10
đặt cược lớn nhất (quy tắc "phân vân thì chọn lane thấp"). Rồi tới GT-2. Cặp này là tối
thiểu — một cái đo pipeline có thêm giá trị, một cái đo nó có biết KHI NÀO đừng thêm.
