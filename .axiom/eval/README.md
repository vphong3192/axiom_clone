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
| GT-1, GT-4 | chưa chạy | |

**Kết luận dùng được:** pipeline đáng chi phí cho bài **công khai, nhiều dữ kiện, dễ sai
quy kết**. Không đáng cho việc nhỏ rõ ràng (GT-3 xác nhận triage biết điều đó). Chưa đo:
task học thuật dài (GT-1) và văn học (GT-4) — GT-4 đặc biệt đáng ngờ vì trục "wow" không
được rubric hiện tại đo tốt.

## Giới hạn của chính eval này (khai báo)
- Chấm tay/đơn người vẫn chủ quan; chấm mù + người chấm khác người viết prompt giúp bớt.
- Vài golden task chưa phủ hết loại việc (học thuật vs văn học vs báo cáo). Mở rộng dần.
- Chưa tự động hóa — cố ý: tự động hóa vội một eval rởm còn tệ hơn không có (R2).
