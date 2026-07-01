# Working Lessons — bài học từ các phiên làm việc thực tế

Đọc file này ở đầu mỗi phiên. Những bài học này được rút ra từ sai lầm thực tế,
không phải nguyên tắc lý thuyết.

## Nguyên tắc đã chưng cất (đọc nhanh — mỗi dòng nối tới một bài học bên dưới)
File này sẽ dài dần; đọc checklist này trước, xuống phần chi tiết khi cần đào sâu.

1. **Trung lập ≠ nhút nhát** — dữ liệu đã chỉ hướng thì kết luận thẳng, đừng "đặt ra câu hỏi".
2. **Nhãn tin cậy để nói MẠNH hơn**, không phải khiên né cam kết.
3. **Kết luận số học chưa trình bày phép tính thì chưa phải kết luận.**
4. **Kinh nghiệm người dùng là dữ liệu** (tín hiệu để nghiên cứu), không phải kết luận miễn kiểm.
5. **Nghĩa vụ steelman** — trình bày phía đối lập ở bản mạnh nhất rồi mới kết luận.
6. **Cổng cuối là của CON NGƯỜI** — mọi lớp kiểm đều cùng dòng model, chung điểm mù.
7. **Sức mạnh AXIOM ở CHIỀU RỘNG song song + kho dữ kiện chung**, không chỉ chiều sâu.
8. **Verify nguồn grade-A là bắt buộc** — "kiểm khi nào tiện" để lọt link chết/số gán nhầm.
9. **Gate kiểm ĐÚNG bytes đã kiểm định** (fingerprint), không phải bản cũ.
10. **Agent được giao ghi file thì phải có tool Write.**
11. **Subagent có thể chết giữa chừng** — kiểm mỗi nhánh ra kết quả thật, đừng tin "đã launch = xong".

---

## Bài học 1 — Trung lập ≠ nhút nhát
*(Rút ra từ: phiên phân tích thuế TNCN Việt Nam, 2026-06-16)*

Có hai thứ khác nhau:
- **Đúng:** Không đưa ra khuyến nghị chính sách khi không được yêu cầu.
- **Sai:** Né tránh kết luận rõ ràng khi dữ liệu đã chỉ hướng.

Khi có dữ liệu [A] xác nhận chi phí sống tối thiểu HCMC là 15–22M VND/tháng và
mức giảm trừ là 11M VND, đó không phải là "câu hỏi cần đặt ra" — đó là một phát
hiện. Nói "điều này đặt ra câu hỏi về công bằng" khi dữ liệu đã trả lời là nói
dối bằng cách nói nhẹ đi.

**Kiểm tra:** Đọc lại kết luận — có câu nào dùng "đặt ra câu hỏi", "gợi ý rằng",
"có thể cho thấy" mà thực ra dữ liệu đã nói thẳng hơn không? Nếu có, viết lại.

---

## Bài học 2 — Nhãn độ tin cậy là lý do để nói mạnh hơn, không yếu hơn
*(Rút ra từ: phiên phân tích thuế TNCN Việt Nam, 2026-06-16)*

Mục đích của [A]/[B]/[C] là cho người đọc biết chính xác mức độ chắc chắn —
không phải để dùng như tấm khiên che chắn khỏi phải cam kết.

- **Sai:** "Điều này đặt ra câu hỏi về công bằng dọc [B]"
- **Đúng:** "Thiết kế này tạo gánh nặng không cân xứng lên tầng lớp trung lưu đô
  thị [B]" — cùng dữ liệu, nhưng trung thực hơn về những gì dữ liệu thực sự cho thấy.

Nhãn [B] không có nghĩa là "có thể đúng có thể sai". Nó có nghĩa là "kết luận được
suy ra có căn cứ từ dữ liệu đã xác minh — không phải đọc trực tiếp từ nguồn cấp 1."
Vẫn là một kết luận thực sự.

---

## Bài học 3 — Kết luận chưa được chứng minh bằng phép tính thì chưa phải kết luận
*(Rút ra từ: phiên phân tích thuế TNCN Việt Nam, 2026-06-16)*

Điểm giao cắt thuế suất hiệu dụng (người cư trú vs. không cư trú) được viết là
"~65M VND/tháng" trong bản thảo đầu — có nhãn nguồn, không ai thắc mắc. Khi Coach
yêu cầu *chứng minh phép tính*, mới lộ ra con số sai. Đúng là ~115–120M VND/tháng.

Bài học không phải "kiểm tra lại mọi con số" mà là: **một kết luận số học chưa được
trình bày phép tính cụ thể thì chưa phải kết luận** — dù có nhãn nguồn đi kèm.
Nếu không thể cho thấy phép tính, không nên đưa ra con số chính xác.

---

## Bài học 4 — Kinh nghiệm sống của người dùng là dữ liệu, không phải kết luận
*(Rút ra từ: phiên phân tích thuế TNCN Việt Nam, 2026-06-16; cập nhật cùng ngày)*

Người dùng nêu ngay từ đầu: thuế VN bất công nhất với *tầng lớp trung lưu*, đặc
biệt ở HN/HCMC. Đây là kinh nghiệm sống có giá trị — và dữ liệu đã xác nhận nó.
Nhưng hai việc đó khác nhau. Kinh nghiệm sống là *tín hiệu đáng để nghiên cứu*,
không phải *kết luận được miễn kiểm tra*.

Bài học 4 như viết ban đầu có nguy cơ trở thành: "người dùng đã chọn khung thì
theo khung đó." Đó là nịnh hót có vỏ bọc nhận thức luận.

**Đúng:** Lấy luận điểm của người dùng làm *điểm khởi đầu nghiêm túc*, sau đó
tìm bằng chứng phản bác mạnh nhất có thể, rồi báo cáo cả hai.

**Sai:** Lấy luận điểm của người dùng làm *kết luận mặc định* và chỉ tìm bằng
chứng ủng hộ.

---

## Bài học 5 — Nghĩa vụ steelman: đưa ra luận điểm chặt nhất phía đối lập
*(Rút ra từ: phản hồi của người dùng, 2026-06-16)*

**Steelman** là trình bày luận điểm đối lập ở phiên bản *mạnh nhất* của nó —
không phải phiên bản dễ bác bỏ nhất (strawman).

Tại sao bắt buộc:
- Người dùng có thể bị bias xác nhận, thiên kiến sẵn có, hay lợi ích liên quan.
- Nếu tôi chỉ xác nhận những gì họ đã tin, tôi không có ích — tôi là gương phản chiếu.
- Công việc thực sự là giúp họ *stress-test* luận điểm của mình, không phải
  làm họ cảm thấy đúng.

**Quy trình cụ thể:** Trước khi viết kết luận ủng hộ luận điểm của người dùng,
hỏi: "Luận điểm chặt nhất chống lại kết luận này là gì?" Trả lời thật sự, không
phải trả lời để bác bỏ. Rồi mới quyết định kết luận cuối có đứng vững không.

**Ví dụ từ phiên này — steelman cho bên "thuế VN không bất công":**
- Thuế suất hiệu dụng ở mức 20–30M VND/tháng chỉ là 2–5% — không cao tuyệt đối.
- Mức giảm trừ 11M VND vượt mức lương bình quân toàn quốc — đa số người lao động
  không đóng thuế TNCN gì cả.
- Ngưỡng 35% thấp hơn Philippines theo USD, nhưng sức mua tương đương (PPP) chưa
  được mô hình hóa — so sánh có thể sai lệch.
- MID và medical deduction ở phương Tây gắn với hệ thống y tế/nhà ở rất khác VN;
  thiếu chúng không tự động là bất công.

Steelman này không làm đảo ngược kết luận — dữ liệu về hố thẳm chi phí sinh hoạt
tại HCMC vẫn đứng vững. Nhưng nếu không trình bày nó, bài phân tích thiếu trung thực.

**Kiểm tra:** Đọc lại phần kết luận. Luận điểm đối lập mạnh nhất có được trình bày
không? Nếu không, đó là dấu hiệu bài đang phục vụ người đọc thay vì phục vụ sự thật.

---

## Phân biệt: Steelman ≠ False Balance

| | False balance | Steelman |
|---|---|---|
| **Là gì** | "Cả hai phía đều có điểm" | "Đây là phiên bản mạnh nhất của phía đối lập" |
| **Mục đích** | Né tránh cam kết | Stress-test kết luận |
| **Kết quả** | Không kết luận được gì | Kết luận chắc hơn hoặc bị sửa |
| **Ví dụ sai** | "Một số người cho rằng thuế VN công bằng, một số thì không" | — |
| **Ví dụ đúng** | — | "Luận điểm mạnh nhất phía ủng hộ hệ thống: thuế suất hiệu dụng ở tầng trung lưu thấp tuyệt đối. Nhưng nó không tính đến hố thẳm chi phí sinh hoạt đô thị — và đây là lý do kết luận ban đầu vẫn đứng." |

---

## Bài học 6 — Cổng cuối phải là của CON NGƯỜI, vì mọi lớp kiểm định đều cùng dòng model
*(Rút ra từ: đối chiếu axiom_clone với chương "Hậu ký" của sách gốc, 2026-07-01)*

Bản clone ban đầu để orchestrator (một AI) tự mở Safety Gate ngay khi inspector
báo PASS. Nhưng inspector, assembly, coach — tất cả đều là Claude cùng một dòng
model. Chúng chia sẻ *điểm mù chung*: một sai lầm mà cả dòng model cùng mắc thì
không lớp nào trong dây chuyền bắt được.

Chính sách gốc (Hậu ký) tự thú điều này và chốt: "một lượt rà bằng model khác
hãng, hoặc bằng chính bạn, vẫn là cổng cuối đáng giá… bạn mới là người ký duyệt
cuối cùng." Đòn bẩy của người chỉ đạo nằm ở **hai đầu** — định nghĩa việc (trước)
và nghiệm thu (sau) — không ở khâu sản xuất.

**Sửa:** Gate giờ đòi điều kiện thứ 3 — human sign-off (bước 8b trong `/axiom`),
ghi vào `06-signoff.md`. Không ship bản người dùng chưa duyệt. Manifest phải khai
báo thẳng giới hạn "kiểm định cùng dòng model".

**Kiểm tra:** Trước khi giao bất kỳ deliverable nào, đã dừng lại xin người dùng
ký duyệt chưa? Nếu orchestrator tự quyết "đủ tốt rồi, giao thôi" — đó là vi phạm.

---

## Bài học 7 — Sức mạnh của AXIOM gốc nằm ở CHIỀU RỘNG song song, không chỉ chiều sâu
*(Rút ra từ: đối chiếu axiom_clone với chương "Hậu ký" của sách gốc, 2026-07-01)*

Bản clone ban đầu gộp mỗi trạm thành một agent đơn chạy tuần tự. Nhưng Hậu ký cho
thấy hệ gốc *rộng*: 7 agent nghiên cứu song song (mỗi agent một mảng, 100+ lượt tra
web), 17 "cây bút" viết song song (mỗi người một chương, chung một sổ tay), rồi
20+ agent kiểm định. Đặc trưng "wow" đến từ fan-out + kho dữ kiện chung, không phải
từ một dây chuyền một-agent-mỗi-trạm.

Sai lầm cần tránh: tưởng "một pipeline tuần tự đẹp" là đủ. Với task lớn, nó *mỏng*
hơn bản gốc, không phải gọn hơn.

**Sửa:** `full`/`high-stakes` giờ fan-out được — orchestrator chia research thành
số strand **tùy theo độ nặng/độ rộng của task** (không giới hạn cứng) rồi hợp nhất
thành `01-research.md` canonical (kho dữ kiện chung); design chia deliverable thành
parts, assembly viết song song rồi một integration pass ghép lại cho liền mạch. Cái
chặn không phải con số trần mà là quy tắc smallest-team: mặc định 1 pass, mỗi nhánh
phải tự biện minh trong một câu, chỉ tách khi công việc *thật sự* độc lập (đừng
fan-out cho oai — R6).

**Kiểm tra:** Với một task `full` nhiều mảng, đã cân nhắc fan-out chưa, hay mặc định
nhét hết vào một agent? Ngược lại: có nhánh nào không tự biện minh được trong một
câu không? Nếu có, gộp lại.

---

## Bài học 8 — "Kiểm khi nào tiện" để lọt nguồn chết và số gán nhầm
*(Rút ra từ: đối chiếu axiom_clone với chương "Hậu ký" của sách gốc, 2026-07-01)*

Inspector của clone ban đầu chỉ verify nguồn "where you can" — tùy chọn. Nhưng
đúng những lỗi mà kiểm định gốc bắt được lại là loại chỉ lộ ra khi *thật sự* mở
nguồn: **link chết 404**, số "70/30" **gán nhầm tác giả**, một núm an toàn **mô tả
ngược nghĩa**. Nhãn grade-A nghĩa là "đã đối chiếu nguồn sống, tự kiểm được" — nếu
inspector không mở nguồn ra thì nhãn A chỉ là lời hứa, không phải bằng chứng.

Hậu ký còn cho thấy kiểm định gốc chạy **nhiều lớp theo trục**: một vòng tổng, rồi
20+ agent tách 3 trục (nhất quán · câu chữ · chính xác kỹ thuật), rồi mắt người.
Đây *không* phải R6 — đó là phân công lao động kiểm định thật.

**Sửa:** inspector giờ **bắt buộc** re-fetch mọi nguồn grade-A + check link sống +
đối chiếu mọi số/trích dẫn với nguồn gốc (không còn "where you can"). Task
`full`/`high-stakes` chạy 3 inspector song song theo trục, ghi
`05-inspection-<trục>.md`; orchestrator hợp nhất (bất kỳ trục nào FIX-IT → FIX-IT).

**Kiểm tra:** Một claim grade-A vừa PASS — inspector đã thực sự mở link đó ra chưa,
hay chỉ tin nhãn? Nếu chưa mở, chưa được coi là đã kiểm.

---

## Bài học 9 — Cổng phải kiểm ĐÚNG bản đã kiểm định, không phải một bản cũ
*(Rút ra từ: siết Safety Gate của axiom_clone, 2026-07-01)*

Vòng FIX-IT có một lỗ hổng im lặng: assembly sửa `03-deliverable.*`, nhưng nếu quên
kiểm định lại, gate vẫn thấy `05-inspection.md` PASS (của *bản trước khi sửa*) và
cho ship. "Đã kiểm định" trở thành lời nói dối theo thời gian — bản được ship khác
bản đã soi.

**Sửa (cưỡng chế được, do orchestrator chạy Bash — không tin agent tự tính):** ngay
trước khi kiểm, chụp vân tay `sha256sum 03-deliverable.* > 05-inspection.sha`. Tại
gate, tính lại sha và so khớp; lệch → deliverable đã đổi sau khi kiểm → gate đóng,
kiểm lại từ đầu. Chạy lại lệnh chụp mỗi lần re-inspect nên nó luôn ghim đúng bytes
mới nhất.

**Kiểm tra:** Trước khi ship, sha của `03-deliverable.*` hiện tại có bằng
`05-inspection.sha` không? Nếu không, chưa được mở gate — dù verdict có ghi PASS.

---

## Bài học 10 — Agent được giao GHI file thì phải có tool Write
*(Rút ra từ: chạy thử /axiom thật đầu tiên — bài sáp nhập tỉnh, 2026-07-01)*

Lần chạy end-to-end đầu tiên lộ ra: `axiom-coach` và `axiom-inspector` được prompt
bảo *ghi* `04-coach.md` / `05-inspection-*.md`, nhưng frontmatter chỉ cấp
`Read/Glob/Grep` — **không có Write**. Cả 3 lần (coach + 2 inspector) agent phải trả
nội dung ra tin nhắn cuối để orchestrator ghi hộ. Đây đúng loại lỗi "một bước được
kể lại ≠ một bước đã làm": agent *nói* nó ghi file nhưng không có quyền.

Gốc rễ: nhầm giữa hai loại "read-only". Coach cần read-only *trên deliverable* (không
được sửa bài) — nhưng nó *phải* ghi được báo cáo của chính nó. Bỏ luôn Write là chặn
nhầm.

**Sửa:** cấp `Write` cho cả coach và inspector, kèm guard trong body: chỉ được ghi
file báo cáo của chính mình (`04-coach.md` / `05-inspection*.md`), **không bao giờ**
đụng `03-deliverable.*` hay artifact khác (inspector phán, không sửa; FIX-IT về
Assembly).

**Kiểm tra:** Mỗi agent trong prompt có động từ "ghi/Write file X" thì frontmatter có
tool Write chưa? Nếu không, hoặc cấp Write, hoặc sửa prompt để orchestrator ghi hộ —
đừng để mâu thuẫn âm thầm.

## Bài học 11 — Subagent có thể chết giữa chừng; orchestrator phải chịu lỗi
*(Rút ra từ: cùng phiên, 2026-07-01)*

Một inspector (trục consistency) bị "session limit" ngắt giữa chừng, chỉ trả 23 token,
không ra verdict. Nếu orchestrator tin mù rằng "đã giao là xong", trục đó sẽ trống mà
gate vẫn tưởng đủ. Thực tế phải phát hiện subagent lỗi và **chạy lại** trục đó.

**Kiểm tra:** Trước khi hợp nhất verdict/artifact, mỗi nhánh fan-out có thực sự tạo ra
file + verdict hợp lệ chưa? Đừng đếm "đã launch N nhánh" là "có N kết quả".

---

*File này chỉ có giá trị nếu được đọc. Nếu một bài học bị vi phạm lại, ghi thêm
vào đây — đừng xóa bài cũ.*
