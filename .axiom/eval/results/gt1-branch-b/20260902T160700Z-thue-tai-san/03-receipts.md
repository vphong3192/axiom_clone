# Receipts — Assembly (thuế tài sản VN)

## Nguồn dữ kiện
Toàn bộ dựng từ `01-research.md` (không dùng trí nhớ ngoài đó). Research đã tự giới
hạn trần B (egress bị chặn, chỉ có snippet WebSearch, không mở được trang gốc) — bài
kế thừa nguyên trần đó, không nâng cấp bất kỳ claim nào lên A.

## Cấu trúc đã dựng theo outline trong `00-brief.md`
1. Mở — nêu thẳng VN chưa có thuế tài sản đúng nghĩa + trần B, một câu công khai ngay
   trong thân bài (không chỉ ở bảng cuối), đúng yêu cầu brief.
2. Phân biệt ba thứ — thuế đất phi nông nghiệp (thường niên, trên đất) / tiền sử dụng
   đất (một lần) / ba đề xuất riêng (2018 đã chết · sửa Luật TNCN dự kiến ~10/2026 ·
   nhà thứ hai/bỏ hoang chưa có dự thảo). Không gộp bất kỳ cặp nào, không viết mốc dự
   kiến như đã thông qua.
3. Phía ủng hộ — ba lập luận (ngân sách địa phương, tỷ trọng tài sản hộ gia đình, hạn
   chế đầu cơ qua GS. Đặng Hùng Võ). Ba con số tỷ trọng đất trong ngân sách (6,6% /
   14,7% / 15–16%) nêu rõ không cùng kỳ, không chọn một số — đúng như research và brief
   yêu cầu, không tự ý gộp thành một tỷ lệ Việt Nam so OECD.
4. Phía phản đối, bản mạnh nhất — 5 lập luận có tên (HoREA, Bộ Tài chính, pass-through
   giá bán, bất bình đẳng đô thị–nông thôn, GS. Đặng Hùng Võ cảnh báo thu nhập thấp) +
   2 lập luận **không truy được tên**, giữ nguyên như research đánh dấu, không bỏ:
   hộ giàu tài sản/nghèo tiền mặt, và né thuế qua đứng tên/tách thửa. Cả hai được nêu
   như lập luận cần trả lời, không hạ thấp vì thiếu tên.
5. Kết — nêu điều kiện cần có trước (định giá, chống chồng thuế, lộ trình thuế suất
   theo thu nhập), không phán "nên/không nên" — đúng yêu cầu brief.
6. Bảng độ tin cậy — mọi dòng đều B, có nguồn (kể cả 2 dòng không quy kết được tác giả,
   ghi rõ "không có nguồn quy kết").

## Đã KHÔNG đưa vào bài (và vì sao)
- So sánh trực tiếp "thuế tài sản VN so với OECD" — research cảnh báo đây không phải
  hai đại lượng cùng cơ sở (16,8% thuế/GDP tổng thể của VN vs 5,1% tổng thu thuế của
  OECD từ thuế tài sản riêng). Bài chỉ nói "như ở OECD" ở mức mô tả khái niệm (có thuế
  tài sản đánh trên giá trị), không đưa số so sánh.
- Tỷ lệ BĐS trong tổng tài sản hộ gia đình VN (kiểu số liệu balance-sheet) — research
  xác nhận không tìm được số trực tiếp.

## Sửa sau FIX-IT (round 1)
Bản nháp đầu bị lỗi: câu mở đầu "Phía ủng hộ" viết "Bất động sản chiếm phần lớn tài
sản hộ gia đình Việt Nam" như một sự thật, rồi gắn `[B, thitruongtaichinhtiente.vn]`
ngay cạnh — nhưng nguồn đó chỉ chứng minh tỷ lệ *hộ sở hữu nhà* (90%), không chứng
minh tỷ trọng bất động sản *trong tổng tài sản*. Đây đúng là chỉ tiêu research ghi
"không tìm được số trực tiếp" và cấm dùng tỷ lệ sở hữu nhà thay thế — quy tắc đã biết
(xem gạch đầu dòng phía trên) nhưng câu đó lọt qua, khiến bài mâu thuẫn với chính
receipts của nó. Đã sửa: bỏ mệnh đề "chiếm phần lớn tài sản hộ gia đình" và kết luận
"đánh đúng nơi của cải tập trung" rút ra từ đó; giữ lại đúng những gì con số 90% chứng
minh được — cơ sở thuế rộng, chạm tới đa số hộ gia đình chứ không chỉ nhóm giàu nhiều
bất động sản. Không thêm dòng bảng mới vì claim còn lại trùng khớp hoàn toàn với dòng
"Tỷ lệ hộ sở hữu nhà VN ~90%" đã có. Không đổi số từ đáng kể (thay ~50 từ bằng ~51 từ
trong đúng câu đó).
- Lập luận "thị trường trầm lắng" (mục 5 trong research) — có nguồn B nhưng là lập
  luận ngắn hạn, trùng lặp một phần với lập luận pass-through; cắt để giữ ngân sách từ
  đúng 700–950 từ mà không làm loãng 5 lập luận có tên + 2 lập luận không tên đã yêu
  cầu bắt buộc.

## Ngân sách từ (đo, không ước lượng)
Đếm bằng công cụ tìm kiếm mẫu `\S+` áp lên toàn bộ thân bài (từ tiêu đề đến hết mục
"Kết", không tính bảng độ tin cậy), mỗi khớp lệnh xuất một dòng, đếm số dòng thủ công
theo từng đoạn gốc. Bản nháp đầu tiên đo được ~1.231 từ (dư gần 30% so trần 950) —
lý do: chưa nhận ra tiếng Việt đếm theo khoảng trắng tách âm tiết nên một bài dày dữ
kiện dễ vượt trần nhanh hơn văn bản tiếng Anh cùng nội dung. Đã viết lại toàn bộ thân
bài, cắt câu nối và chi tiết phụ (không cắt claim/nguồn nào), đo lại bản rút gọn: 910
từ (thành phần markdown "#"/"##" chiếm 5 trong số đó, nên nội dung chữ thực ~905) —
nằm trong khoảng 700–950 từ đã thống nhất. Không có claim, nguồn, hay lập luận nào bị
bỏ trong quá trình rút gọn này; chỉ rút gọn văn phong.

Sau sửa FIX-IT (round 1): đếm thủ công lại toàn thân bài theo cùng quy tắc (mỗi khớp
khoảng trắng là một token, kể cả "#"/"##") ra ~911 từ — tăng đúng 1 từ so với bản
trước sửa, vẫn trong khoảng 700–950. Không có công cụ đếm tự động (`Bash`) trong
phiên sửa này nên con số này là đếm tay, không phải chạy script; nêu rõ để không lẫn
với số đo bằng công cụ.
