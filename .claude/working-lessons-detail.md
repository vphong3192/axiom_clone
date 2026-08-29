# Working Lessons — chi tiết

**Đừng đọc cả file này.** Checklist ngắn nằm ở `.claude/working-lessons.md`; mở file
này để đọc **đúng một bài học** khi nó liên quan tới việc đang làm. Mỗi bài học rút
ra từ một sai lầm thật, có ghi phiên và ngày.

Mục lục: 1 trung lập · 2 nhãn tin cậy · 3 phép tính · 4 kinh nghiệm người dùng ·
5 steelman · 6 cổng người · 7 chiều rộng · 8 verify nguồn · 9 fingerprint ·
10 tool Write · 11 subagent chết · 12 chiều rộng ≠ số agent · 13 ngân sách giàn giáo ·
14 giàn giáo lỗi thời · 15 hỏi scope trước · 16 biên nhận ở file riêng

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

**Đính chính v10 (2026-08-29).** Kết luận "chiều rộng là bắt buộc" vẫn đúng; *cách hiện
thực hóa* thì sai. Fan-out 4 agent research trong run `vn-sapnhap-tinh-2025` sinh 15.609
từ, gộp lại còn 2.063 — 87% bị vứt, và toàn bộ 15.6k từ đó phải đi qua context phiên
chính để orchestrator gộp tay. Xem Bài học 12: chiều rộng bây giờ đến từ nhiều tool call
song song **trong một agent**, nơi mâu thuẫn giữa các nguồn thực sự bị bắt.


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

**Chỉnh v10 (2026-08-29).** Giữ nguyên nguyên tắc "không mở nguồn = không được gắn A".
Nhưng "re-fetch MỌI nguồn grade-A" không co giãn khi bài có 40 nguồn. Quy tắc mới có
phân tầng theo rủi ro: **≤10 nguồn A → verify 100%** (bao trọn hầu hết bài luận); nhiều
hơn → verify toàn bộ claim *chịu lực* (claim mà nếu sai thì kết luận đổi) + mẫu ngẫu
nhiên ≥30% phần còn lại, và **ghi rõ trong báo cáo cái nào đã mở, cái nào lấy mẫu**.
Không khai báo phạm vi verify = coi như chưa verify.


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

---

## Bài học 12 — Chiều rộng ≠ số agent
*(Rút ra từ: đo lại run `vn-sapnhap-tinh-2025` khi thiết kế v10, 2026-08-29)*

Bài học 7 đúng về mục tiêu (chiều rộng), sai về phương tiện (nhiều agent). Số đo từ
chính run đó: 4 strand research = 15.609 từ → canonical còn 2.063 từ; tổng artifact
26.870 từ cho một bài 1.030 từ (tỷ lệ 26:1); hiến pháp 4.054 từ được nạp lại cho ~12
lượt gọi agent.

Fan-out agent mua được bề rộng nhưng **bán mất tổng hợp**: việc phát hiện hai nguồn
mâu thuẫn nhau chỉ xảy ra khi cả hai nằm trong cùng một cái đầu. Chia ra rồi gộp lại
là trả tiền hai lần cho một thứ tệ hơn — và bước gộp rơi đúng vào context đắt nhất
(phiên chính).

**Sửa:** mặc định **một** agent research, lấy bề rộng bằng nhiều `WebSearch`/`WebFetch`
song song trong cùng một lượt. Fan-out agent chỉ dành cho `high-stakes` và chỉ khi các
nhánh cần **kỹ năng khác nhau** (vd nguồn tiếng Việt vs học thuật quốc tế), không phải
chỉ vì đề tài có nhiều mảng. Khi buộc phải fan-out: nối file bằng `cat`, orchestrator
chỉ đọc mục `## Open conflicts` của từng nhánh vào context.

**Kiểm tra:** trước khi tách agent, hỏi "một agent phát 10 lệnh tìm song song có làm
được không?" Nếu có — đừng tách.

---

## Bài học 13 — Giàn giáo phải nhỏ hơn sản phẩm
*(Rút ra từ: cùng phiên, 2026-08-29)*

`02-plan.md` của run đó dài 1.921 từ cho một bài 1.030 từ. Nhưng plan chính là thứ
**người** phải đọc ở cổng duyệt outline. Một cổng người dài gần 2.000 từ thì không ai
đọc thật — nó trở thành cổng hình thức, đúng loại R2 mà hệ này tồn tại để chặn.

**Sửa (ngân sách cứng, ghi trong `00-brief.md` ngay từ triage):** với bài N từ →
`01-research.md` ≤ 2N, plan ≤ N/3, outline trình cho người ≤ 30 dòng.

**Kiểm tra:** artifact nào đang dài hơn sản phẩm nó phục vụ? Đó là chi phí, không phải
sự kỹ lưỡng.

---

## Bài học 14 — Đừng bù cho điểm yếu model không còn nữa
*(Rút ra từ: cùng phiên, 2026-08-29)*

Phần lớn độ phức tạp của v9 là giàn giáo chống lại một model yếu hơn: fan-out research
(vì một agent không tự chạy nổi bề rộng), trạm Coach riêng (vì model không tự chất vấn),
lặp lại quy tắc ở mọi agent file (chống trôi lệnh), 3 trục inspection cho một bài 1.000
từ, và model tiering ngược — haiku cho intake (quyết định đắt nhất, tốn ít token nhất)
còn opus × 3 để soi bài ngắn.

Giàn giáo không tự biến mất khi model mạnh lên; nó ở lại và tính tiền. Nhưng **không
phải cái gì cũng cắt được**: những thứ sau là *cấu trúc*, không phải bù đắp năng lực —
inspector chạy trong context riêng, fingerprint sha ở gate, hai cổng người, nhãn + nguồn
cho mọi claim, maker ≠ inspector. Cắt chúng là biến "hiệu quả" thành R2.

**Kiểm tra:** mỗi trạm, hỏi "nó bù cho điểm yếu nào của model?" Nếu điểm yếu đó không
còn → gộp hoặc bỏ. Nếu nó chặn một lỗi *cơ chế* (người làm tự chấm mình, ship bản chưa
kiểm) → giữ, model mạnh cỡ nào cũng giữ.


---

---

## Bài học 15 — Hỏi scope TRƯỚC khi chạy dây chuyền
*(Rút ra từ: chạy thử v10 với đề "tại sao tỷ lệ sinh ngày càng giảm", 2026-08-29)*

Đề bài một câu như "tại sao tỷ lệ sinh ngày càng giảm" **trông** như đã đủ rõ để chạy.
Thực ra nó chứa ít nhất bốn ngã rẽ, mỗi ngã cho ra một bài hoàn toàn khác: Việt Nam hay
toàn cầu; hỏi *nguyên nhân* hay hỏi *nên làm gì*; viết cho độc giả phổ thông hay cho
người làm chính sách; 800 từ hay 2.500 từ. Chọn sai một ngã thì research, design,
assembly, inspection đều chạy hoàn hảo — về sai hướng. Đó là loại lãng phí đắt nhất
trong cả hệ: không trạm nào phía sau bắt được, vì mọi trạm đều đang bám đúng cái brief
sai.

v10 bản đầu chỉ có một câu điều kiện — "nếu câu hỏi mở thật sự chặn việc tốt thì hỏi
người dùng" — nên trên thực tế nó gần như không bao giờ kích hoạt: model luôn tìm được
một cách diễn giải hợp lý và chạy tiếp.

**Sửa:** Cổng 0 (làm rõ scope) thành **bắt buộc**, ngang hàng với cổng duyệt outline và
cổng ký duyệt. Nhưng có hai cái phanh để nó không thành thẩm vấn: **tối đa 3–4 câu hỏi**,
và **chỉ hỏi khi câu trả lời khác nhau tạo ra sản phẩm khác nhau**. Thứ tự đúng: hỏi →
nhận trả lời → *mới* chốt lane (câu trả lời thường làm task đổi lane).

**Kiểm tra:** Trước khi delegate agent đầu tiên — nếu người dùng trả lời ngược lại với
giả định của tôi, có phải viết lại bài không? Nếu có mà tôi chưa hỏi, tôi đang đoán.

---

---

## Bài học 16 — Biên nhận để ở file riêng, không nhét vào bản thảo
*(Rút ra từ: coach pass của run "tỷ lệ sinh giảm", 2026-08-29)*

`axiom-assembly.md` của v10 bảo người viết ghi biên nhận "vào cuối deliverable (hoặc
sidecar `03-receipts.md`)". Người viết chọn vế đầu — đúng hướng dẫn. Kết quả: mục
`### Receipts` nằm ngay trong `03-deliverable.md`, tức **đúng cái file duy nhất mà
inspector đọc độc lập**, và nó khẳng định sẵn: "steelman viết ở mức mạnh nhất", "đã áp
sáu bẫy", "Hungary trình bày là tranh cãi mở".

Đó chính xác là những tiêu chí mà inspector sắp chấm. Cách ly inspector khỏi bản tóm
tắt của người làm, rồi nhúng bản tóm tắt đó vào chính artifact, thì không phải cách ly —
R5 đi qua cửa sau. Không agent nào làm sai; **hướng dẫn cho phép nó.**

Thêm một hệ quả thứ hai: với bài viết để đăng, biên nhận trong bài là văn không đăng
được — nó gọi tên `00-brief.md`, "trạm 4", "WebFetch".

**Sửa:** biên nhận **luôn** ở `03-receipts.md`, không còn lựa chọn "hoặc". Inspector
phải hình thành nhận định **từ artifact trước**, rồi mới mở receipts, và coi đó là
*lời khai cần kiểm*, không phải lời trấn an: cái gì receipts khẳng định mà không thấy
trong bản thảo thì đó là một finding, không phải một sự yên tâm.

**Giữ nguyên:** bảng độ tin cậy vẫn nằm trong bản thảo. Claim · nhãn · nguồn là *dữ
kiện inspector phải kiểm*, khác hẳn lời tự đánh giá về việc mình làm tốt thế nào.

**Kiểm tra:** trong file inspector sắp đọc, có câu nào đang *nói cho nó biết bài này
tốt* thay vì *để nó tự thấy* không? Nếu có, câu đó thuộc file khác.

---

*File này chỉ có giá trị nếu được đọc. Nếu một bài học bị vi phạm lại, ghi thêm
vào đây — đừng xóa bài cũ.*
