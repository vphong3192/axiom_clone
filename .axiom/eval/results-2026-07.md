# Eval run — 2026-07-01/02 (lần chạy A/B THẬT đầu tiên)

> Đây là lần đầu tiên protocol trong `README.md` được **chạy thật ra số**, không còn
> là "sẽ chạy". Nó trả lời câu hỏi keystone của harness: *pipeline nhiều-agent có
> thật sự đáng chi phí so với một agent chạy một lượt không?* Kết quả dưới đây được
> ghi trung thực kể cả khi nó **không** có lợi cho pipeline — đúng tinh thần Golden
> Rule (impressive AND true) và R2 (không giả "done").

## Cách chạy
- **GT-2** (task sự thật, nặng): branch B = run full-pipeline có sẵn
  `.axiom/runs/20260701T162458Z-vn-sapnhap-tinh-2025/` (tái dùng thay vì re-spawn 12
  agent để dựng lại thứ đã tồn tại — R6/R3). Branch A = một `general-purpose` agent
  chạy MỘT LƯỢT, cùng đề, có WebSearch/WebFetch, **không** biết gì về AXIOM. Chấm bởi
  một grader mù (opus) nhận cả hai bài dán nhãn Output-1/Output-2 (dán text trực tiếp,
  giấu đường dẫn file để không lộ nguồn gốc), tự xác minh vài số bằng web.
- **GT-3** (task nhỏ, chống over-build): branch A = một agent một lượt. Branch B = chạy
  trạm triage thật (`axiom-intake`) và quan sát nó định tuyến task ra sao. *Chạy full
  6-agent cho task này chính là thất bại cần bắt — nên "branch B" ở đây đo quyết định
  triage, không phải một deliverable đầy đủ.*

Mapping (grader không biết): **Output 1 = pipeline (B)**, **Output 2 = baseline (A)**.

## Kết quả GT-2 — bảng chấm mù (0/1/2 mỗi mục)

| # | Tiêu chí | Pipeline (B) | Baseline (A) |
|---|----------|:---:|:---:|
| 1 | Có nguồn | 2 | 2 |
| 2 | Nhãn tin cậy trung thực | 2 | 2 |
| 3 | Phản biện / steelman | 2 | 2 |
| 4 | Đúng sự thật (số/mốc/quy kết) | **1** | **2** |
| 5 | Chống rỗng (chiều sâu) | 2 | 2 |
| 6 | Bám scope | 2 | 2 |
| 7 | Khai báo giới hạn | 2 | 2 |
| **Tổng** | | **13/14** | **14/14** |

**Delta = B − A = −1.** Ngưỡng "đáng chi phí" trong README là **B ≥ A + 3**. Ở đây
pipeline **thấp hơn baseline 1 điểm** — cách ngưỡng tận 4 điểm.

Điểm khác biệt QUYẾT ĐỊNH (mục 4, theo grader): baseline **phân biệt đúng cấp văn bản**
(Đảng vs Quốc hội) và **mốc "thông qua 12/6 ≠ vận hành 1/7"** với số liệu kiểm chứng
được; pipeline **bỏ mất mốc thông qua 12/6** và dựa vào vài số chính trị siêu cụ thể
**không kiểm chứng được** (57/180 UVTW địa phương; ~50% bí thư mới từ 6 tỉnh) trình bày
rất chắc (dù gắn nhãn B trung thực).

## Chi phí (biến số đo)

| | Pipeline (B) | Baseline (A) |
|---|---|---|
| Lượt subagent | ~12 (intake + 4 research + design + assembly×2 + coach + inspector×3) | **1** |
| Cổng người phải dừng | **2** (duyệt outline + sign-off) | 0 |
| Token/thời gian 1 lượt assembly | — | 32k tokens · 7 tool · 145s |

→ Pipeline tốn **~10–12× lượt agent + 2 lần cắt ngang chờ người**, để ra bản **kém 1 điểm**
trên rubric thiên truy-nguồn.

## Kết quả GT-3 — chống over-build (PASS, không nhiễu)
Triage tự chọn **quick lane / tiny**, khai rõ "reuses established technical knowledge,
no fresh research required". Pipeline **không** nống task nhỏ lên full. Output baseline
(5 bullet TCP/UDP) và output pipeline (nếu chạy compressed line) tương đương → **delta ≈ 0
đúng như dự đoán**. Đây là bằng chứng effort-triage hoạt động: nó biết KHI NÀO đừng thêm agent.

## Đọc kết quả cho trung thực — 3 yếu tố gây nhiễu (không được giấu)

1. **~~Pipeline bị handicap mạng~~ — ĐÃ ĐÍNH CHÍNH (2026-07-02, Axiom 7).** Bản ghi đầu
   tiên nói branch A "mạng thông" còn branch B bị 403 → confound bất đối xứng. **Sai.**
   Re-test 2026-07-02: **WebFetch trả 403 trên MỌI host** (cả `xaydungchinhsach.chinhphu.vn`
   *lẫn* `en.wikipedia.org`), và proxy status xác nhận đây là **chính sách egress cấp tổ
   chức đứng yên cả phiên** (`recentRelayFailures: []`; README: "do not retry or route
   around"). WebSearch thì **hoạt động cho cả hai branch**. → Cả hai branch **đối xứng**:
   WebSearch-only, không WebFetch. **Confound bất đối xứng phần lớn là ảo.**
   Hệ quả quan trọng: mốc quyết định mà pipeline làm mất — "thông qua 12/6 ≠ vận hành 1/7" —
   **nằm sẵn trong WebSearch snippet** (search "NQ 202/2025/QH15" trả đúng câu đó), thứ mà
   research pipeline vẫn có. Nên thua ở mục 4 là **lỗi biên tập/kiểm định trong tầm tay**,
   KHÔNG phải lỗi mạng. → khoảng cách −1 **chủ yếu là thật và sửa được tại trạm**, không phải
   "chưa kết luận được vì môi trường".
2. **Rubric under-weight chiều sâu ("wow").** Chính grader ghi: nếu chấm theo trọng số
   chiều sâu/tham vọng, **pipeline vượt lên** — nó có đối chiếu quốc tế (Heisei/Kallikratis),
   meta-analysis 31 nghiên cứu, và steelman tài khóa *bằng dữ liệu* (tự cân đối 27%→20% sau
   sáp nhập) mà baseline không có. GT-4 trong golden-tasks đã cảnh báo rubric hiện thiên "true"
   hơn "impressive".
3. **Baseline mạnh bất ngờ = phát hiện riêng.** Baseline **tự** thêm nguồn, nhãn A/B, steelman
   và khai báo giới hạn mà **không** cần pipeline. Nghĩa là phần lớn "kỷ luật cơ bản" của AXIOM
   đã nằm sẵn trong hành vi mặc định của model khi *chỉ cần yêu cầu* "phân tích có nguồn, có
   phản biện". Giá trị biên thật của pipeline nằm ở **chiều sâu/rộng + receipts cưỡng chế**,
   KHÔNG ở các kỷ luật cơ bản.

## Kết luận & hành động (theo mục "Cách dùng kết quả" của README — chống R6/R3)

- **GT-2: pipeline CHƯA chứng minh được phần bù chi phí.** Không đạt +3; thực tế −1 (dù nhiễu).
  Gánh nặng chứng minh thuộc về pipeline và nó **chưa** trả được. → KHÔNG thêm agent. Hai việc:
  1. **Sửa đúng trạm thua, không đại tu.** Thua ở mục 4 vì (a) bỏ mốc "thông qua 12/6" và
     không phân tách cấp văn bản, (b) tin số chính trị không verify được. → thêm vào
     `axiom-research`/`axiom-inspector` một checklist bắt buộc: *phân biệt ngày thông qua ≠
     hiệu lực, cấp Đảng ≠ Nhà nước*, và *số không re-fetch được thì hạ xuống C hoặc bỏ, không
     để B trình bày chắc nịch*. (Đáng chú ý: 3 inspector của pipeline **đã PASS** các số này —
     một lỗ hổng inspection thật.)
  2. **~~Chạy lại khi mạng thông~~ — không cần & không làm được ở đây.** Re-test cho thấy
     WebFetch bị chặn cấp tổ chức cả phiên (403 mọi host) → chạy lại chỉ tái tạo cap grade-B,
     đốt ~12 agent để dựng lại confound. Hơn nữa confound đã được chứng minh là **phần lớn ảo**
     (cả hai branch WebSearch-only, đối xứng), nên re-run không đổi được kết luận lõi. Một
     lần chạy lại *sạch* (để nâng B→A qua full-text verify) chỉ đáng làm trong môi trường có
     WebFetch — hoãn tới đó. Cho tới lúc đó, với lớp task "tiểu luận sự thật, một chủ đề",
     **mặc định lane nhẹ hơn** hợp lý hơn là full.
- **GT-3: giữ nguyên.** Triage chống over-build đúng — đây là cơ chế đang tạo giá trị thật.
- **Meta:** vì baseline đã có sẵn kỷ luật cơ bản, pipeline chỉ đáng khi task **thật sự cần
  chiều sâu/rộng nhiều mảng** (fan-out research + đối chiếu nhiều nguồn) hoặc **receipts kiểm
  được là bắt buộc**. Với essay một-chủ-đề, đó là dùng dao mổ trâu.

## RE-RUN 2026-07-02/03 — chạy lại GT-2 sạch khi WebFetch thông (đã làm)

Mục "chạy lại khi có WebFetch" phía trên đã được thực hiện: phiên 2026-07-02 có
**WebFetch sống** (verify trước khi chạy — wikipedia.org lẫn chinhphu.vn đều mở được),
và checklist sửa trạm (ngày thông qua ≠ hiệu lực, cấp Đảng ≠ Nhà nước, số không verify
→ C/bỏ) đã nằm trong `axiom-research`/`axiom-inspector` trước khi chạy.

**Thiết kế:** branch B = full pipeline chạy MỚI toàn bộ
(`.axiom/runs/20260702T064614Z-gt2-rerun-vn-policy/`, 1 vòng FIX-IT, PASS 3 trục vòng 2,
human sign-off). Branch A = baseline một-lượt chạy MỚI cùng phiên, cùng model writer
(sonnet), cùng điều kiện mạng → **hai nhánh đối xứng thật sự**. Lưu ý trung thực: bản
branch-A đầu tiên bị LOẠI vì nhiễm ngữ cảnh eval (agent tự đọc golden-tasks/README do
output path nằm trong `.axiom/eval/` — lỗi thiết kế prompt của orchestrator, giữ file
làm chứng cứ); bản chấm là `branch-A-clean.md` (cấm đọc repo). Chấm mù bởi opus, thứ tự
ĐẢO so với lần trước, grader bắt buộc tự verify ≥5 claim/bài qua web.

**Kết quả** (chi tiết: `.axiom/eval/runs/20260702-gt2-rerun/grader-blind-report.md`):

| Tiêu chí | Pipeline (B) | Baseline sạch (A) |
|---|:---:|:---:|
| Đúng sự thật (mục 4) | **2** | **2** |
| Bám scope (mục 6) | **2** | **1** |
| 5 mục còn lại | 2 mỗi mục | 2 mỗi mục |
| **Tổng** | **14/14** | **13/14** |

**Delta B − A = +1** (grader: +2 nếu áp nhãn A ngặt — baseline gắn "Proven" cho số
53%/30% tự-công-bố chưa kiểm toán). Chi phí B: ~15 lượt agent + 2 cổng người vs 1 lượt.

**Đọc kết quả:**
1. **Lỗi mục 4 đã sửa xong, có bằng chứng:** cả 12 claim grader kiểm đều khớp; ba mốc
   thông qua/hiệu lực/vận hành và cấp văn bản được giữ đúng; và vòng inspection lần này
   **bắt thật một lỗi đúng loại cũ** (số "17/63→7/34" không truy được nguồn, trình bày
   chắc ở [B] → FIX-IT → hạ [C], bỏ vai trò chịu lực) — lỗ hổng "3 inspector PASS số
   không verify được" của lần trước đã được vá và hoạt động.
2. **Trần B→A đã nâng thật:** chuỗi văn bản pháp luật VN fetch toàn văn trực tiếp,
   đạt [A] thật (khác hẳn cap grade-B của lần trước).
3. **NHƯNG ngưỡng "đáng chi phí" (B ≥ A+3) vẫn CHƯA đạt:** +1 (hoặc +2 ngặt) với ~15×
   chi phí. Kết luận lõi của eval đầu **đứng vững**: với lớp task "tiểu luận sự thật,
   một chủ đề", baseline một-lượt đã rất mạnh (13/14 và sạch lỗi factual khi có WebFetch
   + được YÊU CẦU kỷ luật); phần bù của pipeline giờ nằm ở **kỷ luật scope + minh bạch
   quy trình + receipts cưỡng chế được** (đúng mục grader chấm chênh), không nằm ở
   "đúng sự thật" nữa. → giữ khuyến nghị: mặc định lane nhẹ cho lớp task này; full
   pipeline khi cần receipts kiểm được / nhiều mảng thật sự.
4. **Bài học thiết kế eval mới (ghi sổ):** đường dẫn output có thể làm lộ ngữ cảnh eval
   cho baseline — baseline "ngây thơ" phải được chạy với output path trung lập + cấm đọc
   repo, nếu không sẽ tự rig so sánh (R5) theo hướng khó lường.

## Giới hạn của chính eval này (khai báo, theo README)
- Mới **2 task, 1 run mỗi nhánh** — không đủ để tổng quát hóa; là *điểm dữ liệu đầu tiên*, không
  phải phán quyết. Cần lặp lại (nhất là GT-2 khi mạng thông) và mở rộng GT-1/GT-4.
- Grader **cùng-dòng-model** (Claude) — chung điểm mù; đúng giới hạn mà harness tự thú. Bù một
  phần bằng chấm mù + tự verify web, nhưng chưa phải model khác hãng.
- Branch B tái dùng run cũ. Ban đầu tưởng điều kiện mạng khác branch A, nhưng re-test
  (mục 1, đã đính chính) cho thấy **WebFetch chặn cả phiên cho cả hai** → điều kiện thực chất
  đối xứng (WebSearch-only). Bài học ghi sổ: **test WebFetch/WebSearch TRƯỚC khi quy kết một
  khoảng cách điểm cho "confound mạng"** — nếu không sẽ đổ lỗi cho môi trường một cách sai và
  bỏ sót lỗi thật sửa được tại trạm.
