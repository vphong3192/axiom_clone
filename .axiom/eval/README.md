# AXIOM eval — pipeline có ĐÁNG chi phí không?

> Trung thực trước: đây là một **protocol chạy tay + rubric chấm**, KHÔNG phải một
> eval tự động đã chạy sẵn cho ra điểm. Nó tồn tại để trả lời câu hỏi mà chính kỷ
> luật AXIOM đòi hỏi ở bản thân nó: *"chứng minh đi, đừng tin lời nói"* — pipeline
> 6-agent có thật sự cho output tốt hơn một agent chạy một lượt, đủ để bù chi phí?
> Chưa có eval thì mọi tinh chỉnh về sau là đoán mò (bản thân harness đang ship ở
> grade B theo thang của chính nó).

## Vì sao cần
Cả bộ máy xây trên "impressive AND true", nhưng chưa có phép đo nào cho thấy fan-out +
đa lớp kiểm định *đáng* thời gian/token so với một lượt. Eval này biến câu hỏi đó thành
thứ kiểm được, lặp lại được mỗi khi sửa harness.

## Giao thức A/B (chạy tay)
Với mỗi golden task trong `golden-tasks.md`:
1. **Nhánh A — baseline:** một agent, một lượt, không pipeline. Lưu output.
2. **Nhánh B — full AXIOM:** chạy `/axiom` đầy đủ. Lưu `03-deliverable.*` + `manifest.md`.
3. **Chấm mù:** một người (hoặc model KHÁC HÃNG — đúng tinh thần cổng cuối) chấm cả A và
   B theo rubric bên dưới mà **không biết bản nào là bản nào**.
4. **Ghi lại:** điểm A vs B, chi phí (số agent, token, thời gian) của B, và **delta**.
   Nếu B không hơn A đủ để bù chi phí trên phần lớn task → đó là tín hiệu pipeline đang
   over-built cho loại task đó (điều chỉnh effort triage), KHÔNG phải cứ thêm agent.

## Rubric (0-2 mỗi mục; chấm trên bản thật, không đọc tóm tắt)
| Mục | 0 | 1 | 2 |
|---|---|---|---|
| **Có nguồn** | claim trần, không nguồn | phần lớn có nguồn | mọi claim quan trọng truy được nguồn |
| **Nhãn tin cậy trung thực** | không nhãn / nhãn thổi phồng | có nhãn, vài chỗ lệch | nhãn khớp bằng chứng, A chỉ khi thật sự kiểm được |
| **Phản biện / steelman** | một chiều | có nhắc phía kia | phía đối lập ở bản mạnh nhất, không strawman |
| **Đúng sự thật** (số/mốc/quy kết) | có lỗi thật | lỗi nhỏ/cosmetic | không lỗi phát hiện được |
| **Chống R2 (giả "done")** | bóng bẩy mà rỗng | đủ dùng | chắc, có chiều sâu thật |
| **Bám scope** | lệch/thiếu | phần lớn đúng | đúng scope, thay đổi có công bố |
| **Khai báo giới hạn** | giấu/không nhắc | nhắc mờ | nêu thẳng giới hạn (nguồn, model, fetch...) |

**Ngưỡng gợi ý:** B "đáng chi phí" nếu tổng điểm B ≥ A + 3 **và** B không có mục nào 0
mà A tránh được. Delta < 2 lặp lại nhiều task → xem lại effort triage cho lớp task đó.

## Rubric B — task sáng tác (dùng cho GT-4)

Rubric chính đo **kỷ luật nhận thức luận**. Với task sáng tác, ba mục của nó (có nguồn ·
phản biện · đúng sự thật) gần như không áp được, và mục quan trọng nhất — **"wow"** — lại
không có chỗ. Chấm văn bằng rubric kia sẽ cho một con số vô nghĩa, nên đây là bản riêng.
Vẫn 7 mục × 0–2 = **tối đa 14**, để độ lớn delta so được với các GT khác (nhưng nhớ: hai
rubric đo hai thứ khác nhau, không so trực tiếp *ý nghĩa* của delta).

| Mục | 0 | 1 | 2 |
|---|---|---|---|
| **Hình ảnh có sức** | ảnh sáo, ai viết cũng ra | có một hai ảnh khá | ít nhất một ảnh thật sự khiến người đọc dừng lại |
| **Bám giọng đã giao** | giọng hiện đại chung chung | gần đúng, đôi chỗ lệch | đúng thời kỳ/tác giả về từ vựng, cú pháp, nhịp |
| **Nhịp câu** | đều đều, đọc lên không có gì | ổn | dài ngắn có chủ ý, đọc thành tiếng nghe được |
| **Cụ thể thay vì sáo** | đầy "mưa rơi tí tách", "ký ức ùa về" | vài chỗ sáo | chi tiết cụ thể, riêng, không thay thế được |
| **Trung thực về thực tế** | bịa trích dẫn/sự kiện của người thật | có chỗ mập mờ | không bịa gì; nếu mượn thực tế thì đúng |
| **Bám scope** | lệch đề/độ dài/giọng | phần lớn đúng | đúng đề, đúng độ dài, đúng giọng đã giao |
| **Kết** | dừng chứ không kết | kết được | kết mở ra thêm một tầng, không tóm tắt lại bài |

**Lưu ý khi chấm:** "trung thực" ở đây **không** có nghĩa là gắn nhãn A/B/C/D cho câu văn —
một đoạn tản văn không có claim để gắn nhãn. Nó chỉ có nghĩa: không bịa lời của người có
thật, không dựng sự kiện lịch sử giả làm nền.

## Cách dùng kết quả (chống R6/R3)
- B thắng đậm → pipeline đáng cho lớp task đó; giữ.
- B thắng mờ, chi phí cao → **hạ** một số task xuống lane nhẹ hơn (không phải thêm agent).
- B thua ở một mục cụ thể (vd "đúng sự thật") → sửa đúng trạm đó (vd verify nguồn), không
  đại tu cả dây chuyền.

## Ca đo bắt buộc: v9 vs v10 (2026-08-29)

v10 cắt trạm intake, bỏ fan-out research mặc định, gộp coach vào assembly ở lane
thường, gộp trục `consistency`+`wording` thành `text`, và áp ngân sách giàn giáo.
Ước tính giảm 55–70% token cho `normal`, 40–50% cho `full` — **nhãn C**: suy ra từ số
đo artifact (26.870 từ giàn giáo cho bài 1.030 từ), chưa đo token thật.

Chạy A = harness v9 (commit `9e0ee08`), B = v10, trên **GT-2 + GT-3**:

- **GT-2** trả lời câu hỏi rủi ro nhất của v10: *cắt trạm có làm tụt "đúng sự thật"
  không?* Nếu B tụt ở mục "đúng sự thật" hoặc "có nguồn" → hoàn lại đúng trạm đó
  (nhiều khả năng là fan-out research hoặc trục technical-accuracy), không hoàn lại
  cả v9.
- **GT-3** đo cái v10 nhắm tới: task tiny phải đi lane `direct`/`normal`. Nếu v10 vẫn
  nống nó lên `full` → quy tắc "phân vân thì chọn lane thấp" chưa có răng.

Ghi thêm hai cột chi phí mà rubric chưa có: **số lượt gọi model** và **tổng từ
artifact / số từ deliverable** (v9 trên run thật: 12 lượt, tỷ lệ 26:1). Hai cột này
là thứ v10 hứa cải thiện — không đo thì lời hứa ở nhãn C mãi.

## Chi phí thật, đo được (run `20260829T071040Z-ty-le-sinh-giam`)

Lần đầu có số thật thay vì ước tính. Bài ~3.200 từ, lane `full`, egress bị chặn:

| Trạm | Lượt | Token |
|---|---|---|
| Research | 1 | 68k |
| Design | 1 | 38k |
| Assembly (bản đầu) | 1 | 43k |
| Coach | 1 | 55k |
| Assembly (coach pass) | 1 | 175k |
| Assembly (FIX-IT ×2) | 2 | 163k + 194k |
| Inspection (3 vòng × 2 trục, + 4 lượt chết vì rate limit) | 12 | ~64k mỗi lượt sống |
| **Tổng** | **~19 lượt** | **~1,1M** |

Ba điều số này nói, và chúng đổi cách tinh chỉnh harness:

1. **Vòng sửa, không phải trạm sản xuất, mới là chỗ tốn.** Bốn pass assembly sau bản
   đầu tốn 532k — gấp 7,8 lần chính bản đầu (43k) và gấp 7,8 lần research. Mọi thứ
   giảm được *số vòng sửa* (coach sớm, `budget.sh` từ trạm 4, ngưỡng FIX-IT rõ) đáng
   giá hơn mọi thứ tối ưu trạm sản xuất.
2. **Ước tính "3–4 lượt gọi cho lane normal" của v10 đúng cho đường đi thẳng, sai cho
   đường thật.** Lane `full` dự kiến 6–7 lượt; thực tế 19. Chênh lệch nằm trọn ở vòng
   FIX-IT và ở các lượt chết vì rate limit. Bảng effort lane nên nêu cả hai con số:
   đường thẳng và kỳ vọng có sửa.
3. **Inspection là chỗ mong manh nhất** — 4/12 lượt chết vì rate limit (model mạnh
   nhất, 2 trục × mỗi vòng). Hai lượt chết *sau khi phân tích xong, trước khi ghi file*
   → mất trắng. Đó là lý do inspector giờ được lệnh ghi báo cáo trong lúc làm.

**Kết cục của run:** REJECT ở cap 3 vòng. Không phải vì bài tệ — 35/39 số truy đúng
nguồn, cả sáu bẫy né đúng, steelman lập luận thật — mà vì vòng cuối vẫn còn 3 lỗi
kiểm-được-là-sai, và 2 trong 5 lỗi văn bản do chính vòng sửa trước tạo ra. Đây là kết
quả *đúng*: dây chuyền từ chối chứng nhận thay vì giả một chữ PASS.

**Việc GT-2/GT-3 vẫn còn nợ:** so v9 vs v10 vẫn chưa chạy. Nhưng giờ đã có baseline chi
phí thật cho v10 để so, thay vì hai bên cùng là ước tính.

## Đã chạy (2026-08→09)

| Task | Kết quả | Ghi chú |
|---|---|---|
| **GT-3** (chống over-build, ca dễ) | **ĐẠT** | triage mù chọn `direct`, 0 subagent, công bố việc bỏ Cổng 0 |
| **GT-3b** (ca lưỡng lự — quy tắc "phân vân chọn lane thấp") | **ĐẠT 2/2** | cả hai nêu đích danh lane đã loại; run thật trước đó thì **không** — chỉ dẫn không hỏng, người vận hành hỏng |
| **GT-2** (độ chính xác) | **B thắng, delta +5** (13/14 vs 8/14) | vượt ngưỡng; chi phí 6,3× token |
| **GT-1** (chính sách có nguồn) | **B thắng, delta +4** (12/14 vs 8/14) | PASS sau 1 vòng sửa, 5 lượt; steelman **hoà** 2–2 (GT-2 thua 1–2) — nhưng thước đo cũng đổi giữa hai run, không tách được nguyên nhân |
| **GT-4** (sáng tác) | **B thắng, delta +4** (13/14 vs 9/14) | chấm bằng Rubric B; **dự đoán của người chạy eval là B thua — sai**; phép so sạch nhất (cùng model, cùng hình thức) |

**Kết luận dùng được (2 run, 2 lớp task):** pipeline thắng ở cả hai, và thắng vì **cùng
một thứ** — kỷ luật nhận thức luận: nhãn trung thực, khai báo giới hạn, không ghép đại
lượng không cùng cơ sở, không quy kết sai. **Không** vì viết hay hơn: mục "Substance" hoà
2–2 ở cả hai run.

→ **Dùng pipeline khi sai một quy kết hoặc một con số là tốn kém.** Không dùng khi chỉ cần
một bài đọc được mà người đọc sẽ tự kiểm (GT-3 xác nhận triage biết điều đó).

**GT-4 mở rộng kết luận này và sửa nó.** Pipeline thắng cả ở task **sáng tác** (+4), nơi
không có gì để gắn nguồn — nên "kỷ luật nhận thức luận" chưa phải mô tả đủ. Thứ thật sự
được mua là **một trạm riêng biến yêu cầu mơ hồ thành chỉ dẫn kiểm được trước khi người
viết đặt bút**: với bài dữ kiện đó là nguồn và mâu thuẫn giữa nguồn; với văn đó là danh
sách cụm sáo và đặc trưng giọng đo được. Cùng một cơ chế, hai loại nội dung.

**Điều kiện đi kèm:** trạm research phải được giao **đúng việc cho loại task đó**. Nếu nó
đi kiếm nguồn cho một bài không có claim nào, nó vô dụng.

**Lỗi thiết kế eval cần tránh lần sau:** GT-1 đổi *cả* harness (bản vá bài học 20) *lẫn*
hướng dẫn giám khảo giữa hai run → không quy được nguyên nhân cho phần steelman hoà. Chỉ
đổi một thứ mỗi lần.

**Giới hạn cứng của cả loạt:** dưới trần B (egress chặn), không phép so nào phân xử được
bất đồng về *sự thật* — hai bản GT-1 mâu thuẫn nhau về tình trạng lập pháp và giám khảo
không phân xử nổi. Cái đo được là **kỷ luật xử lý sự không chắc chắn**, không phải độ đúng
tuyệt đối.

## Giới hạn của chính eval này (khai báo)
- Chấm tay/đơn người vẫn chủ quan; chấm mù + người chấm khác người viết prompt giúp bớt.
- Vài golden task chưa phủ hết loại việc (học thuật vs văn học vs báo cáo). Mở rộng dần.
- Chưa tự động hóa — cố ý: tự động hóa vội một eval rởm còn tệ hơn không có (R2).
