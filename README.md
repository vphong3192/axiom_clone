# AXIOM cho Claude Code (bản slim — 4 subagent)

Bản dựng lại của **AXIOM — Living Factory** thành một hệ thống agent chạy được trong
[Claude Code](https://docs.claude.com/en/docs/claude-code/overview). File HTML gốc là một
bản *minh hoạ* quy trình; bản này biến quy trình đó thành một dây chuyền agent thật, dùng
cho việc **nghiên cứu và viết văn bản — từ học thuật đến văn học**.

Nguyên tắc vàng giữ nguyên: **Wow = ấn tượng VÀ đúng sự thật**, kèm bằng chứng kiểm được.

## Điểm khác so với bản 6-agent trước

Dây chuyền được rút theo đúng **quy tắc đội-nhỏ-nhất của chính AXIOM**: một trạm chỉ đáng
có subagent riêng khi nó cần **độc lập** (inspector) hoặc dễ **ngập context** (research).
Các trạm còn lại không cần cả hai, nên gộp vào orchestrator hoặc vào một agent chung.

- **6 → 4 subagent.** `axiom-research-design` (gộp Nghiên cứu + Thiết kế, chạy 2 mode),
  `axiom-writer` (Lắp ráp), `axiom-coach`, `axiom-inspector`.
- **Tiếp nhận (triage) do orchestrator tự làm inline** — không còn subagent `axiom-intake`.
- **Thủ tục từng trạm tách ra `.claude/references/`** (progressive disclosure): `CLAUDE.md`
  chỉ còn phần hiến pháp luôn-nạp; cái *how* của mỗi trạm chỉ được đọc khi trạm đó chạy.

## Cài đặt

Chép cây thư mục này vào gốc dự án của bạn:

```
your-project/
├── CLAUDE.md                       ← hiến pháp/kỷ luật (luôn-nạp, gọn): 9 quy tắc,
│                                     lỗi cần tránh, chấm độ tin cậy, cổng
└── .claude/
    ├── agents/                     ← 4 subagent = "các robot trên sàn"
    │   ├── axiom-research-design.md   (Nghiên cứu + Thiết kế — 2 mode)
    │   ├── axiom-writer.md            (Lắp ráp / người viết)
    │   ├── axiom-coach.md             (Huấn luyện viên)
    │   └── axiom-inspector.md         (Kiểm định độc lập)
    ├── references/                 ← thủ tục từng trạm (đọc theo nhu cầu)
    │   ├── triage.md                  (orchestrator đọc khi phân loại)
    │   ├── research.md · design.md    (2 mode của research-design)
    │   ├── assembly.md                (người viết)
    │   ├── coach.md · inspection.md
    ├── commands/
    │   └── axiom.md                ← lệnh /axiom điều phối cả dây chuyền + cổng + giao hàng
    └── working-lessons.md          ← bài học rút từ các phiên thật (đọc đầu mỗi phiên)
```

Có thể đặt ở phạm vi dự án (`.claude/`) hoặc phạm vi người dùng (`~/.claude/`).
Kiểm tra bằng `/agents` trong Claude Code để thấy 4 agent đã nạp.

## Dùng

Cách đơn giản nhất — chạy cả dây chuyền:

```
/axiom Viết một tiểu luận 1500 từ về ảnh hưởng của chủ nghĩa hiện sinh lên Truyện Kiều
```

Orchestrator sẽ lần lượt: **phân loại (inline)** → nghiên cứu (kèm nguồn) → thiết kế kế
hoạch → viết bản thảo → huấn luyện viên hỏi "đã tốt nhất chưa?" → **kiểm định độc lập** →
qua **cổng an toàn** (gồm cả người ký duyệt) → giao kèm **gói bằng chứng**.

Gọi lẻ một trạm khi cần, ví dụ:

```
Dùng subagent axiom-inspector soát lại bản thảo trong .axiom/runs/<id>/
```

Mọi biên nhận nằm trong `.axiom/runs/<timestamp>-<slug>/` — đây là bằng chứng từng bước đã
thật sự chạy. Người kiểm định đọc **bản thảo thật**, không đọc tóm tắt — đó là điểm khiến
cuộc kiểm tra thật sự độc lập.

## Vì sao cấu trúc này hợp với Claude Code

- **Subagent có context riêng** → người kiểm định *thật sự* độc lập, không bị ngữ cảnh
  người làm chi phối; research không làm ngập context chính.
- **Artifact dạng file** → quy tắc "đọc thứ thật, không đọc tóm tắt" được *cưỡng chế* chứ
  không chỉ là lời khuyên.
- **Progressive disclosure** → `CLAUDE.md` luôn-nạp nhưng nhỏ; thủ tục dài chỉ vào context
  của đúng trạm cần nó, không nhồi vào mọi agent.
- **Đội nhỏ nhất** → chỉ tách subagent khi cần độc lập hoặc chống ngập context.

## Đối chiếu với file HTML gốc

| Trong file gốc | Trong bản Claude Code này |
|---|---|
| 7 trạm nhà máy | 4 subagent + orchestrator làm Tiếp nhận, Cổng, Giao hàng |
| Nghiên cứu + Thiết kế | Một agent `axiom-research-design` chạy 2 mode |
| Cổng An toàn | Bước kiểm tra trong `/axiom` (không mở nếu chưa có kiểm định thật, chưa khớp fingerprint bytes, **và người dùng chưa ký duyệt**) |
| 9 quy tắc (AXIOMS) | Mục "The 9 Axioms" trong `CLAUDE.md` |
| 6 lỗi cần tránh (R1–R6) | Mục "The 6 failure modes" trong `CLAUDE.md` |
| 4 mức độ chắc chắn A–D | Bảng chấm độ tin cậy trong `CLAUDE.md`, áp dụng ở mọi trạm |
| Vòng trả-về sửa | Vòng FIX-IT trong `/axiom` (kiểm lại từ đầu, không tin báo cáo cũ) |
| Gói hồ sơ khi giao | `manifest.md` (danh sách độ tin cậy + giả định + biên nhận) |

## Tuỳ biến

- Đổi `model:` trong frontmatter mỗi agent, hoặc override theo `/axiom` (model tiering),
  để cân chi phí/chất lượng (haiku/sonnet/opus/fable). Giữ **writer ≠ inspector**.
- Prompt viết bằng tiếng Anh cho gọn và dễ chia sẻ; output theo ngôn ngữ bạn giao việc.
