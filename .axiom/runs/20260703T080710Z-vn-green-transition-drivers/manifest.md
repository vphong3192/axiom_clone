# Manifest — proof package

**Run:** `20260703T080710Z-vn-green-transition-drivers`
**Task:** Chuyển đổi xanh ở Việt Nam 2 năm gần đây là vì môi trường hay vì áp lực chính trị/lợi ích nhóm?
**Deliverable:** `03-deliverable.md` — bài phân tích tiếng Việt, 10 mục, ~2.750 từ.
**Tier:** high-stakes. **Verdict:** PASS (3/3 axes). **Human sign-off:** APPROVED (`06-signoff.md`).

---

## Overall confidence
**Trần [B] cho toàn bài** — WebFetch bị chặn (HTTP 403 mọi domain, cả 4 strand + inspector
đều xác nhận live), nên **không nhận định nào đạt [A]** run này. Kết luận là suy luận có
trọng số từ dữ kiện đối chiếu chéo nhiều nguồn thứ cấp — không phải khẳng định mức A.

## Confidence list (nhóm claim chính · nhãn · nguồn)
Nguồn đầy đủ (URL) trong `01-research.md` + 5 file `01-research-*.md`. Tóm tắt:
- [B] Net-zero 2050 (COP26 1/11/2021) → luật hóa QĐ 896/QĐ-TTg (26/7/2022, cấp Thủ tướng, chưa Quốc hội) — strand environmental.
- [B] Văn kiện năng lượng cầm lái (NQ 55/2020, 70/2025, cấp Đảng) đóng khung "an ninh năng lượng", môi trường là mệnh đề phụ — environmental.
- [B] Than 2024 ~49,5% cơ cấu (nghiên cứu HUST/Bộ NN-MT 2025), sản lượng +16% (Ember), nhập khẩu 44→65 triệu tấn; PDP8 điều chỉnh (QĐ 768, 15/4/2025) **tăng** mục tiêu than tuyệt đối — policy-record.
- [B] JETP 15,5 tỷ USD (12/2022) giải ngân ~0; Mỹ rút 4/3/2025, VN vẫn duyệt PDP8 điều chỉnh ~6 tuần sau — external-pressure.
- [B] CBAM chính thức 1/1/2026 (bán chứng chỉ 2027); phơi nhiễm thép VN — external-pressure.
- [B] DPPA (NĐ 80/2024 → 57/2025) đáp ứng FDI/RE100; >60 hợp đồng nhưng 1 DPPA nối lưới — external-pressure.
- [B] Hoàng Quốc Vượng kết án 6 năm (4/2025); Trần Tuấn Anh **kỷ luật Đảng, không truy tố** — domestic-politics.
- [B] EV: miễn trước bạ (NĐ 51/2025→202/2026), TTĐB 3%; VinFast ~99% EV nội địa, sống nhờ vốn Vượng ~55.257 tỷ; V-Green độc quyền phục vụ VinFast (Vượng 90%) — ev-greenfinance.
- [B] Tín dụng xanh ~4,3% (xa mục tiêu 10%); taxonomy QĐ 21/2025 (hiệu lực 8/2025) — ev-greenfinance.
- [B] **Kết luận:** động lực trội = an ninh năng lượng + chính sách công nghiệp/quán quân quốc gia; môi trường là khung/đồng-lợi ích; "lợi ích nhóm" phi pháp mạnh cho 2017–2021, trống cho hiện tại.

## Held at [C] / qualitative (không dùng số chốt)
Cơ cấu vốn & "huy động" JETP; số dự án ĐMT sai phạm ("hơn 100"); thiệt hại EVN (khoảng);
MW/% cụ thể PDP8; cáo buộc hối lộ 1,5 tỷ (allegation); % tín dụng xanh theo mốc; tổng
trái phiếu xanh 2024 (7–10 nghìn tỷ); mốc gió ngoài khơi 2030/2035; dải TTĐB sau 2027.

## Assumptions / open gaps
- ⚠️ "**Thâu tóm đất vàng ưu đãi cho trạm sạc**" — **không có nguồn xác minh** run này;
  trình bày là chưa xác minh (chỉ khẳng định V-Green độc quyền phục vụ VinFast + lợi thế
  hệ sinh thái Vingroup). Human chấp nhận cách xử lý này (06-signoff).
- Thiếu bằng chứng trục lợi gắn làn sóng hiện tại (2024–2026) — nêu là khoảng trống, không
  diễn dịch thành "trong sạch".
- Vĩnh Tân 3 (hủy/gia hạn), ưu đãi thuế riêng VinFast — để trống có chủ đích.

## Receipts index (mỗi bước đã chạy thật)
- `00-intake.md` — triage (orchestrator inline), high-stakes.
- `01-research-{environmental,external-pressure,domestic-politics,policy-record,ev-greenfinance}.md` — 5 strand (4 subagent song song + 1 inline write-fallback sau session-limit).
- `01-research.md` — canonical hợp nhất (dedupe, gắn cờ mâu thuẫn).
- `02-plan.md` — kế hoạch (đã re-plan mở rộng phạm vi sau cổng outline).
- `03-deliverable.md` — bài (1 draft + 1 coach-improvement + 1 FIX-IT).
- `04-coach.md` — ONE-IMPROVEMENT-PASS (3 notes).
- `05-inspection-{consistency,wording,technical-accuracy}.md` — 3 trục; vòng 1 FIX-IT (§4 số ngày sai), vòng 2 **PASS cả 3**.
- `05-inspection.sha` — ghim bytes; **khớp** với bản giao (`9a9b50…`).
- `06-signoff.md` — human APPROVED.

## Verification limits & sign-off
- **Cùng dòng model:** writer (sonnet), coach (opus), 3 inspector (opus) đều là Claude —
  chỉ gỡ *một phần* điểm mù chung. Model khác hãng / mắt người vẫn là cổng cuối giá trị nhất.
- **Trần B môi trường:** WebFetch chặn → không re-fetch/nâng A được; đây là giới hạn khai
  báo, không phải lỗi.
- **Human gates:** outline approval (4b, mở rộng phạm vi) + sign-off (8b, APPROVED) — cả hai đã chạy.
- **Maker ≠ inspector:** writer sonnet ≠ inspector opus — giữ đúng.
