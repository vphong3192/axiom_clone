# AXIOM v10 cho Claude Code

Một dây chuyền agent để **nghiên cứu và viết** — từ học thuật đến văn học — chạy
trong [Claude Code](https://docs.claude.com/en/docs/claude-code/overview).

Nguyên tắc vàng giữ nguyên từ v9: **Wow = ấn tượng VÀ đúng sự thật**, kèm bằng chứng
kiểm được. Cái đổi ở v10 là **giá phải trả để có nó**.

## Cài đặt

```
your-project/
├── CLAUDE.md                       ← hiến pháp (~850 từ, nạp vào mọi agent)
└── .claude/
    ├── agents/                     ← 5 subagent
    │   ├── axiom-research.md           (2 · Nghiên cứu)
    │   ├── axiom-design.md             (3 · Thiết kế — full/high-stakes)
    │   ├── axiom-assembly.md           (4 · Lắp ráp + tự-coach)
    │   ├── axiom-coach.md              (5 · Huấn luyện viên — full/high-stakes)
    │   └── axiom-inspector.md          (6 · Kiểm định độc lập)
    ├── commands/axiom.md           ← lệnh /axiom điều phối cả dây chuyền
    ├── working-lessons.md          ← checklist đọc đầu phiên (~30 dòng)
    └── working-lessons-detail.md   ← chỉ mở đúng bài học cần
.axiom/bin/gate.sh                  ← Cổng An toàn, deterministic
.axiom/bin/manifest.sh              ← sinh gói bằng chứng từ artifact trên đĩa
```

Kiểm tra bằng `/agents` để thấy 5 agent đã nạp.

## Dùng

```
/axiom Viết một tiểu luận 1500 từ về ảnh hưởng của chủ nghĩa hiện sinh lên Truyện Kiều
```

**Bốn lane, mặc định là `normal`:**

| Lane | Khi nào | Trạm chạy | Lượt gọi model |
|---|---|---|---|
| `direct` | rõ, ngắn, không cần fact mới | trả lời thẳng — **đừng** chạy `/axiom` | 0 |
| `normal` | việc nghiên cứu/viết thường | research → assembly (tự-coach) → inspect | 3–4 |
| `full` | quan trọng hoặc nhiều phần | + design, + coach, 2 trục inspection | 6–7 |
| `high-stakes` | rủi ro, không đảo ngược được | + fan-out research, 3 trục inspection | 8+ |

Khi phân vân → **chọn lane thấp hơn**. Research hoặc design có quyền báo "đề rộng hơn
triage" và ép nâng lane; leo thang theo bằng chứng rẻ hơn là xây thừa vì lo xa.

Biên nhận nằm trong `.axiom/runs/<timestamp>-<slug>/`. Kiểm định đọc **bản thảo thật**,
không đọc tóm tắt — đó là điểm khiến cuộc kiểm tra thật sự độc lập.

## v9 → v10: cắt gì, giữ gì

Đo trên run thật `.axiom/runs/…-vn-sapnhap-tinh-2025/`: bài 1.030 từ sinh ra 26.870 từ
artifact (tỷ lệ 26:1), 4 strand research 15.609 từ gộp còn 2.063 (87% bị vứt, nhưng đã
đi qua context phiên chính), hiến pháp 4.054 từ nạp lại cho ~12 lượt gọi agent.

**Cắt** — đây là giàn giáo bù cho điểm yếu model không còn nữa:

| Bỏ / đổi | Vì sao |
|---|---|
| Trạm `axiom-intake` | orchestrator dù sao cũng phải đọc đề; spawn agent để đọc lại = 1 vòng nạp context đổi lấy 0 tiết kiệm. Triage làm inline. |
| Fan-out research mặc định | chiều rộng giờ đến từ nhiều tool call song song **trong một agent** — nơi mâu thuẫn giữa nguồn thật sự bị bắt. Fan-out chỉ còn ở `high-stakes`. |
| Gộp research bằng tay | nối bằng `cat`; orchestrator chỉ đọc mục `## Open conflicts` của mỗi nhánh. |
| Trạm Coach riêng ở lane thường | assembly tự chấm 6 góc và vẫn ghi `04-coach.md` (giữ cơ chế cưỡng chế, bỏ lượt gọi). |
| 3 trục inspection mặc định | `consistency` + `wording` là cùng một loại việc → gộp thành `text`. 3 trục chỉ còn ở `high-stakes`. |
| Lặp quy tắc ở mọi agent file | quy tắc sống ở `CLAUDE.md`; agent file chỉ giữ phần riêng của trạm. |
| `00-intake.md` + `02-plan.md` | gộp thành `00-brief.md`. |
| Viết `manifest.md` bằng model | sinh bằng script từ artifact trên đĩa — không thể trôi khỏi sự thật (R4). |

**Giữ nguyên** — đây là *cấu trúc*, không phải bù đắp năng lực. Cắt chúng là biến
"hiệu quả" thành R2:

- inspector chạy trong **context riêng**, đọc bản thảo trực tiếp;
- **fingerprint sha** ở cổng — bản được ship phải đúng bản đã soi;
- **hai cổng người**: duyệt outline (trước) và ký duyệt (sau);
- **nhãn A/B/C/D + nguồn** cho mọi claim;
- **maker ≠ inspector**, khác model.

**Ngân sách mới** (bài N từ): research ≤ 2N · plan ≤ N/3 · outline trình người ≤ 30 dòng.
Một cổng duyệt dài 1.900 từ thì không ai đọc — đó là cổng hình thức.

**Nới có tính toán:** verify nguồn phân tầng theo rủi ro — ≤10 nguồn A vẫn verify 100%
(bao trọn hầu hết bài luận); nhiều hơn thì verify toàn bộ claim chịu lực + mẫu ≥30% phần
còn lại, và **phải khai báo phạm vi đã verify**. Không khai báo = coi như chưa verify.

## Cổng an toàn chạy bằng script

```bash
.axiom/bin/gate.sh --pre-signoff .axiom/runs/<id>   # kiểm 1-3 trước khi hỏi người
.axiom/bin/gate.sh .axiom/runs/<id>                 # cổng đầy đủ
.axiom/bin/manifest.sh .axiom/runs/<id>             # sinh gói bằng chứng
```

Cổng kiểm: bản thảo tồn tại · mọi `05-inspection*.md` có dòng `## Verdict:` PASS do
inspector ghi · sha khớp `05-inspection.sha` · có `06-signoff.md`. Deterministic —
model không "lý luận" qua được một dòng FAIL.

## Đã chứng minh chưa?

Chưa. Con số cắt giảm ở trên là **ước tính nhãn C** suy ra từ số đo artifact, không
phải đo token thật. Giao thức A/B để nâng lên nhãn A nằm ở `.axiom/eval/` — chạy GT-2
(chất lượng có tụt không) và GT-3 (có chống được over-build không) với A = v9,
B = v10. Chính kỷ luật này đòi hỏi: *chứng minh đi, đừng tin lời nói*.
