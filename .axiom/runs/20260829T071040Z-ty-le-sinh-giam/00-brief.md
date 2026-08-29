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

---

## Sai lệch phát hiện sau trạm 2 (công bố — Axiom 7)

1. **Vỡ ngân sách research: 3.488 / 2.300 từ (+52%).** Ngân sách viết bằng văn xuôi
   trong prompt thì agent vượt vẫn không ai chặn. Đây là **lỗi của harness, không phải
   của agent** — v10 đặt ra ngân sách nhưng không có cơ chế cưỡng chế nào (khác hẳn
   Cổng An toàn, vốn chạy bằng script nên không "lý luận" qua được).
   *Xử lý:* **không** gọi thêm một lượt model để nén lại — tiết kiệm ~1.200 từ (~1,8k
   token) không bù nổi chi phí một lượt gọi. Ghi nhận vượt, đi tiếp, và sửa cơ chế sau
   khi run kết thúc. (Đối chiếu: v9 chạy 15.609 từ research cho bài ngắn hơn.)

2. **Không có URL nào trong file** — nguồn được gọi tên (GSO, OECD, N-IUSSP,
   Statistics Korea) nhưng không có link. Hệ quả: người đọc và inspector đều không lần
   ngược được. *Xử lý:* assembly bắt buộc ghi **cơ quan + ấn phẩm + năm** cho mỗi số
   liệu, đủ để tra tay.

3. **Trần sự thật của cả bài là B.** WebFetch bị chặn toàn bộ phiên này
   (`EGRESS_BLOCKED` với mọi domain đã thử, kể cả example.com) → 0 claim grade A,
   34 claim B, 2 claim C. Trục `technical-accuracy` ở trạm 6 cũng sẽ không re-fetch
   được. Giới hạn này phải xuất hiện **trong bài**, không chỉ trong manifest.

**Điều research làm đúng (đáng ghi):** giữ nguyên nghĩa vụ steelman — không chọn
Hungary làm ví dụ sạch mà nêu thẳng đây là tranh cãi học thuật chưa ngã ngũ (hiệu ứng
tempo vs quantum); tự loại số TFR Đài Loan 2024 vì mâu thuẫn nội tại; gắn cờ TFR Trung
Quốc là ước tính bên thứ ba; và tự biện minh một câu cho việc thêm Singapore/HK.

## Plan

### Outline (thân bài ~1150–1200 từ; bảng độ tin cậy sau, không tính vào budget này)

1. **Mở bài (~70 từ)** — hình ảnh cụ thể HCMC 1,39 vs Hà Giang 2,69 → đặt câu hỏi
   "VN đang đi đường nào?"; một câu công khai trần B (WebFetch bị chặn cả phiên).
2. **Nguyên nhân nền (~340 từ, 30%)** — bẫy mức sinh thấp; bình đẳng giới kiểu McDonald
   (cơ hội kinh tế của phụ nữ vượt chuẩn mực gia đình); chi phí nhà/giáo dục; minh hoạ
   bằng chênh lệch vùng miền VN (32/63 tỉnh dưới mức thay thế 2,1).
3. **Trục — chính sách khuyến sinh thất ở đâu, được ở đâu (~520 từ, 45%)**:
   a. Mẫu thất bại: Hàn (chi hàng trăm tỷ USD/15–20 năm, TT Yoon gọi là thất bại),
      Nhật (Angel Plan, ngân sách lệch về người già), Trung (một→ba con, TFR vẫn giảm,
      gắn cờ hiệu ứng năm Rồng), Singapore/HK (tiền mặt, TFR vẫn rơi).
   b. **Steelman đặt giữa trục, không cuối bài**: Pháp (~4% GDP, nhà trẻ phổ quát),
      OECD (1.000 USD/trẻ ~1–1,6% TFR), Doepke et al. (bình đẳng giới đảo chiều tương
      quan); Hungary trình bày **là tranh cãi mở** (tempo vs quantum), không phải
      thành công sạch; Na Uy — chính sách tốt vẫn không đủ.
   c. Tổng hợp sắc lại: không phải "chính sách luôn thất bại" mà "tiền mặt/khẩu hiệu
      thất bại; hạ tầng cấu trúc có tác động nhỏ, chậm, cần thập kỷ" → soi Pháp lệnh
      07/2025/UBTVQH15 (bỏ trần sinh) vào khung này: gỡ hạn chế ≠ đầu tư cấu trúc.
4. **Kết — kịch bản còn lại (~280 từ, 25%)** — cửa sổ vàng dự kiến đóng 2036, "già
   trước khi giàu", chi phí thích ứng 1,4–4,6% GDP; trả lời trực diện: VN gần quỹ đạo
   Đông Bắc Á hơn Tây Âu, nhưng cửa sổ chọn hướng khác chưa đóng hẳn.
5. Bảng độ tin cậy (chuẩn AXIOM).

### Team
Một pass duy nhất — 1150–1200 từ là một mạch nhân quả liên tục; chia người viết sẽ tái
tạo đúng "ba tóm tắt cạnh nhau" mà thiết kế này đang cố tránh. Không cần integration pass.

### Tinh chỉnh so với đề xuất trong brief
**Giữ khung 3 phần** (nguyên nhân → thất bại chính sách → kịch bản) nhưng **sắc lại
mệnh đề trục**: từ "chính sách thất bại" (đọc thành tuyệt đối, sai với Pháp/OECD/
Doepke) → "tiền mặt/khẩu hiệu thất bại, đầu tư cấu trúc có nhưng nhỏ/chậm" — steelman
dùng để nén luận điểm, không phải để bị đối trọng rồi gạt bỏ ở cuối.

### House style
Giọng phân tích báo chí nghiêm túc, ngôi trung lập (không "tôi"), câu vừa/ngắn, liên từ
nhân quả tường minh ("vì thế", "do đó", "nên") nối ba phần thành một mạch.
Từ vựng bắt buộc nhất quán — dễ lẫn nên chốt cứng: "tổng tỷ suất sinh (TFR)" ≠ "tỷ suất
sinh thô" ≠ "số ca sinh"; "mức sinh thay thế" (2,1); "Pháp lệnh 07/2025/UBTVQH15" ≠
"Luật Dân số" (còn dự thảo); số dự báo luôn kèm "dự kiến"/"theo dự báo"; mọi số liệu
kèm cơ quan + ấn phẩm + năm.

### Inspection plan
Trục `technical-accuracy` đọc thẳng `03-deliverable.md` (không đọc research/brief
trước, không tóm tắt maker — R5). Kiểm 6 bẫy nêu tên: (1) TFR/crude/số ca sinh không bị
gộp (Hàn, Trung 2024); (2) Hungary là tranh cãi mở, không phải thành công sạch; (3) TFR
Đài Loan 2024 không trích như số chắc; (4) TFR Trung Quốc gắn nhãn ước tính bên thứ ba;
(5) "2036" gắn nhãn dự báo; (6) Pháp lệnh không lẫn với Luật. Cũng kiểm: trần B xuất
hiện trong thân bài (không chỉ bảng cuối); steelman ở giữa trục, đủ mạnh, không bị
knock-down cẩu thả; bài trả lời trực diện "VN đi đường nào"; mọi số liệu có
cơ quan+năm. Vi phạm bất kỳ điểm nào → FIX-IT.
Trục `text` đọc cùng file: kiểm mạch một-bài (không phải ba tóm tắt), độ dài
1100–1300 từ, nhất quán từ vựng ở trên, mở bài có sức kéo cho mục đích "để đăng".
An toàn độc lập: hai trục không nhận tóm tắt của assembly; cả hai đều bị trần B như
maker (WebFetch nhiều khả năng vẫn chặn) — việc của trạm 6 là kiểm cách gắn nhãn/xử lý
bẫy, không phải xác minh lại tận nguồn.

### Risks / re-plan triggers
Giữ đủ steelman + áp Pháp lệnh 07 mà vượt 1300 từ → cắt Singapore/HK còn một câu mỗi
nước, không xin thêm ngân sách. Nếu viết xong steelman làm vỡ mệnh đề trục giữa (chính
sách cấu trúc hoá ra cũng không đủ ngay cả về mặt lý thuyết) → công bố và replan
(Axiom 7), không lặng lẽ nới câu chữ để né. Egress mở lại giữa chừng không kích hoạt
replan — chỉ ghi nhận, giữ nguyên grade B cho run này.

---

## Sai lệch sau trạm 3

**Vỡ ngân sách plan lần hai: 781 / 380 từ (+105%).** Hai trạm liên tiếp vượt ngân sách
(research +52%, plan +105%) trong khi phần *outline* — thứ duy nhất có người đọc —
lại đúng budget (24/30 dòng). Kết luận: ngân sách nào **được nhìn thấy** thì được giữ,
ngân sách nào chỉ nằm trong prompt thì không. Đây là bằng chứng thứ hai cho cùng một
lỗi cơ chế; sẽ sửa bằng script kiểm sau khi run kết thúc.

**Design đã sửa một lỗi lập luận của brief (đáng ghi — đúng vai trạm 3):** brief đề
xuất mệnh đề trục "chính sách khuyến sinh thất bại". Design bác lại: đọc như một
tuyên bố tuyệt đối thì nó *sai* so với chính bằng chứng steelman trong research
(Pháp ~4% GDP; OECD ~1–1,6% TFR/1.000 USD mỗi trẻ; Doepke et al.). Mệnh đề trục
được sắc lại thành: **"tiền mặt và khẩu hiệu thất bại; đầu tư cấu trúc có tác động
thật nhưng nhỏ và chậm"** — và chính sự phân biệt đó trở thành thước đo để soi
Pháp lệnh 07/2025/UBTVQH15. Steelman nhờ vậy nằm **giữa** trục lập luận thay vì bị
đẩy xuống cuối bài rồi gạt đi.

---

## Cổng 1 — duyệt outline (người dùng, 2026-08-29)

**DUYỆT**, kèm hai điều chỉnh:

1. **Nới giới hạn từ** — không áp cứng 1150–1200. Mục tiêu ~1200 từ, chấp nhận
   1050–1450. Quy tắc thay thế cho con số: *cắt khi lặp ý, không cắt khi đang thêm
   bằng chứng chịu lực*. Vượt 1500 vẫn là tín hiệu lan man.
2. **Truy nguyên nhân WebFetch bị chặn** — đã làm, kết quả ở mục Preflight dưới.

Mệnh đề trục do design sắc lại được giữ nguyên: *tiền mặt và khẩu hiệu thất bại;
đầu tư cấu trúc có tác động thật nhưng nhỏ và chậm*.

## Chẩn đoán egress (theo yêu cầu ở Cổng 1)

**Không gỡ được từ trong phiên. Không phải lỗi cấu hình — là chính sách.**

- Mọi host ngoài trả `CONNECT tunnel failed, response 403` tại egress proxy, **kể cả
  `example.com`** → chặn toàn bộ, không phải chặn theo site.
- `curl` qua Bash bị chặn y hệt WebFetch → không có đường vòng ở tầng công cụ.
- `registry.npmjs.org`, `pypi.org` trả 200 chỉ vì nằm trong `no_proxy` (đi thẳng,
  không qua proxy) — allowlist chỉ mở cho hạ tầng build.
- `/root/.ccr/README.md`: *"The destination host is not allowed by your organization's
  egress policy for this session. Do not retry or route around it."*

**Vì sao research vẫn có dữ liệu:** WebSearch đi qua API Anthropic, không qua egress
của phiên → có snippet, không mở được trang gốc. Đúng khớp triệu chứng.

**Gỡ ở đâu:** network policy của environment (chọn lúc tạo environment) hoặc chạy
harness ở máy local. Ngoài tầm của phiên này.

**Sửa harness (đã làm):** thêm `.axiom/bin/preflight.sh`, chạy ngay ở trạm 1 — một
lệnh, xác định trần sự thật của cả run trước khi đốt một trạm research mới biết.

## Preflight

- Egress: BLOCKED (2026-08-29T07:31:04Z)
- Truth-ceiling for this run: **B**

---

## Thay đổi scope có công bố — độ dài (Axiom 8, 2026-08-29)

**Ngân sách cũ:** 1.050–1.450 từ. **Đo thật:** thân bài 2.704 từ (~1,9× trần).
**Quyết định của người dùng tại điểm gãy: NHẬN BẢN DÀI.** Ngân sách mới: ~2.700 từ.

Ba việc phải nói thẳng vì chúng không tự triệt tiêu nhau:

1. **Bản duyệt ở Cổng 1 là bài ~1.200 từ.** Bản ship dài gấp đôi. Người duyệt đã được
   thông báo và đồng ý sau khi biết con số thật — đây là thay đổi *được duyệt*, không
   phải scope drift (Axiom 8). Nhưng tỉ lệ 30/45/25 trong outline đã duyệt không còn
   được kiểm chứng ở độ dài mới; trục `text` phải kiểm lại mạch bài ở quy mô này.
2. **Vượt ngân sách có từ trạm 4, không phải từ pass sửa** (2.191 → 2.704 từ).
3. **Trạm 4 báo sai số từ của chính nó** — "~1.290" cho một thân bài 2.191 từ, lệch
   70%. Orchestrator chuyển tiếp con số đó cho người dùng mà không tự đo. Đây là lỗi
   của orchestrator: một con số agent tự khai về sản phẩm của nó là *lời khai*, không
   phải *phép đo*.

**Sửa harness:** thêm `.axiom/bin/budget.sh` — chạy sau mỗi trạm viết, tự tính lại
thân bài (tách khỏi bảng độ tin cậy), so với khoảng cho phép, exit khác 0 nếu lệch.
Đây là lần thứ tư trong run này mà câu trả lời cho một quy tắc bị bỏ qua là "biến nó
thành script".
