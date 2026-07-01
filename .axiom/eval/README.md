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

## Giới hạn của chính eval này (khai báo)
- Chấm tay/đơn người vẫn chủ quan; chấm mù + người chấm khác người viết prompt giúp bớt.
- Vài golden task chưa phủ hết loại việc (học thuật vs văn học vs báo cáo). Mở rộng dần.
- Chưa tự động hóa — cố ý: tự động hóa vội một eval rởm còn tệ hơn không có (R2).
