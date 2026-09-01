# Inspection — Luật An ninh mạng 2025 và vì sao gây tranh cãi
Inspector: independent (did not receive a maker's summary)
Axis: whole
Artifact read: 03-deliverable.md (direct, in full, before opening 03-receipts.md)
Inspected-sha: b9565cb391201168fe6244dc8272b317f7ec2a494f52649b321e95c7cc879165

Verify scope: **External verification impossible this run.** One live probe was made —
`WebFetch https://www.hrw.org/news/2024/12/11/vietnam-repeal-harmful-internet-laws` →
`EGRESS_BLOCKED` (proxy refuses the host). Per the run's own preflight ruling I did not
attempt further fetches and promoted nothing to grade A. Verification therefore ran
against the fact store instead: **every one of the 15 confidence-table rows and every
factual sentence in the five body movements was traced line-by-line to `01-research.md`**
(value, date, instrument number, attribution and source domain compared in each
direction), plus internal-consistency and arithmetic checks. No shell tool is available
in this session, so the word count below is a manual token count, not `wc` output, and
the `Inspected-sha` above is the one supplied by the orchestrator (I could not recompute
it).

Threshold used: **FIX-IT = checkably false, unsupported, or self-contradictory as
shipped, or a required part of the agreed scope missing.** Everything else — phrasing,
structure, sharpening — is listed separately as non-blocking.

## Findings

### [result] The six trap conditions — five clean, one partly missed

1. **Passage vs. effective date — PASS.** ¶1 states "thông qua 10/12/2025" and "hiệu lực
   từ 1/7/2026 — khác hẳn ngày thông qua" as two distinct facts. The 1/1/2026 outlier is
   never adopted for this law; the only 1/1/2026 in the body belongs to the Personal Data
   Protection Law (¶ "Cuối cùng"), and table row 2 names the outlier and explains it as a
   likely conflation. Matches `01-research.md` lines 25–29 exactly.
2. **Article count 45 vs 58 — PASS.** Reported as unresolved in both body ("Bài này không
   chọn một số làm chính thức") and table. No number is privileged. Matches research
   lines 14–16 and the open-conflicts list.
3. **HRW — PASS, handled well.** Dated 11/12/2024, attached to Nghị định 147/2024 and
   Luật An ninh mạng 2018 (24/2018/QH14), with an explicit sentence that no post-10/12/2025
   HRW statement was found and that "HRW lên án luật 2025" summaries appear to be an
   inference the piece refuses to repeat. This is the highest-risk trap in the topic and
   the piece defuses it in the strongest available form. The Vietnamese rendering of the
   quote is a faithful translation of the English wording recorded at research lines 96–106.
4. **VCCI — PASS.** Framed throughout as draft-stage consultation ("góp ý dự thảo, không
   phải phản đối sau thông qua"), with the explicit statement that no VCCI reaction to the
   10/12/2025 text exists in the record. Matches research lines 82–90.
5. **No unnamed "critics say" — PARTLY MISSED.** See FIX-IT 1 below. AmCham/EuroCham and
   the law-firm alerts are handled correctly (gap stated as a gap; law-firm analysis
   attributed to the firms, not to an association). But the second controversy stream is
   carried entirely by unnamed "một số bình luận."
6. **Four instruments kept distinct — PASS.** Luật 116/2025/QH15, Luật 24/2018/QH14,
   Nghị định 147/2024 and Luật Bảo vệ dữ liệu cá nhân 91/2025/QH15 (plus 86/2015/QH13 and
   35/2018/QH14) each carry their number where they appear in the body; none is used as a
   stand-in for another. The "đi kèm" bundling framing is explicitly labelled commentary,
   with the six-month passage gap and different effective dates given to undercut it.

**Other numbers, dates and names traced:** 434/443 delegates and 91.75% (research l.23 —
same values, same denominator wording "tổng số đại biểu"); 8-chapter/45-vs-58 (used only
in disputed form); 24h/6h takedown tied to Điều 13 (research l.54–60); 24h/3h flagged as a
probably-separate user-information obligation, not merged (research l.61–68, and the piece
says in terms "bài này không gộp làm một"); branch/representative office and domestic
storage with no server mandate (l.44–50); cross-border periodic evaluation, not a ban
(l.51–53); PDPL 91/2025/QH15 passed 26/6/2025, effective 1/1/2026 (l.135–139). Arithmetic
re-run: 26/6/2025 → 10/12/2025 and 1/1/2026 → 1/7/2026 both support "khoảng sáu tháng."
Every source domain named in the table (baochinhphu.vn, nhandan.vn, luatvietnam.vn,
frasersvn.com, EY Vietnam, thuvienphapluat.vn, xaydungchinhsach.chinhphu.vn, vplsdms.vn,
lawlinkvn.com, vietnamnet.vn, Công an Trà Vinh, tsqcb.edu.vn, Lexology/Mori Hamada,
vibonline.com.vn, vjst.vn, hrw.org/news/2024/12/11, banker.vn, congan.daklak.gov.vn,
fpf.org, recordinglaw.com, congan.camau.gov.vn) appears in `01-research.md`. **No source
was invented.** No claim in the piece contradicts another claim in the piece.

**Truth-ceiling declaration — PASS and better than required.** ¶2 of the body states in
plain prose that nothing was opened directly, that egress was blocked, and that no claim
is grade A, "kể cả khi nguồn là báo chính phủ." The closing method note repeats it. All 15
table rows are graded B; no A leaked in.

**Gaps stated as gaps — PASS.** AmCham/EuroCham and post-passage HRW are both written as
"không tìm thấy," and the table row for AmCham/EuroCham carries the explicit qualifier
"khoảng trống thông tin, không phải bằng chứng của sự im lặng." The closing section
repeats the gap rather than converting it into consent.

### [sources] FIX-IT 1 — the second controversy stream has nothing behind it

**Location:** the paragraph beginning "Thứ hai, lo ngại về tập trung thẩm quyền…"

> "dồn đầu mối quản lý — trước tách giữa hai bộ — về một cơ quan, **được một số bình luận
> xem là làm giảm kiểm soát chéo giữa các cơ quan nhà nước**."

Three independent defects, as shipped:

- **Not in the fact store.** `01-research.md` records the concentration of authority in the
  MPS as a *factual change* (l.38–43) and records "sources say" only about the *overlap*
  the old split caused. Nowhere in the research file — including the dedicated "Who is
  objecting, and on what grounds" section, which contains exactly three items (VCCI,
  the AmCham/EuroCham gap, HRW/rights) — is there any commentator, outlet or organisation
  saying concentration weakens cross-agency checks. Under the run's own rule ("anything
  the research file does not contain is unsupported, however plausible"), this attribution
  is unsupported.
- **Ungraded.** The confidence table has a row for the *fact* ("Đầu mối quản lý dồn về Bộ
  Công an…") but no row for the *criticism*. The claim ships with no grade and no source.
- **Self-contradictory.** The section opens two sentences earlier by promising: "mỗi luồng
  ý kiến dưới đây gắn rõ chủ thể và thời điểm." This stream attaches neither a subject nor
  a date. The piece breaks its own stated rule inside the same section — and `00-brief.md`
  imposes the same rule ("mỗi phía phải có chủ thể có tên + thời điểm").

This is the one place in the piece where an unnamed body of opinion stands in for an
attribution the record does not support. It is a defect of the same family as the HRW trap
the piece otherwise handles carefully.

**Required fix (any one):** (a) attach a named source and date from the fact store; (b)
rewrite as the piece's own reasoning from the verified facts and label it as such (e.g.
"đây là suy luận từ dữ kiện trên, không phải phát biểu của ai"), with a table row at the
grade the evidence supports; or (c) cut the stream and say plainly that no sourced
objection on this ground was found — the same treatment already given to AmCham/EuroCham.

### [honesty] FIX-IT 2 — body claims that never reach the confidence table

The brief and the house rules require the piece to close with a confidence table and to
grade every factual claim. The table→prose direction is clean (all 15 rows are backed by
prose). The prose→table direction is not: an entire paragraph and several load-bearing
statements ship ungraded and, for one of them, unattributed anywhere in the piece.

Untabulated factual claims:

- The whole paragraph "Luật cũng mở rộng danh mục nội dung bị cấm…" — expanded
  prohibited-content list (boycott calls damaging enterprises, falsifying enterprise
  information), the "nhóm dễ bị tổn thương" provisions, international cybercrime
  cooperation. *Supported* in research l.69–74 (baochinhphu.vn, nhandan.vn) — but no row.
- "Nghĩa vụ doanh nghiệp… chuyển từ 'đầu tư thiết bị' sang 'xây dựng năng lực quản trị an
  ninh mạng'." Supported at research l.75–79 — but no row. (The piece correctly drops the
  revenue-linked-sanctions half of that finding, which research flags as possibly PDPL.)
- "Với chuyển dữ liệu xuyên biên giới, luật lập cơ chế kiểm tra, đánh giá định kỳ — không
  phải lệnh cấm toàn bộ." Supported at research l.51–53; the nearest table row covers
  localisation only.
- **The weakest of the four:** "Bình luận độc lập cũng ghi nhận luật 2025 được thông qua
  kín tiếng hơn nhiều so với luật 2018, gắn với quy trình lập pháp rút gọn." The research
  file names this source (The Vietnamese Magazine, "The Quiet Passing of Việt Nam's 2025
  Cybersecurity Law," Dec 2025, snippet-only, research l.107–115). The piece names nobody
  and gives no row, so as shipped the reader has no way to trace it — an attributed
  characterisation with no attribution and no grade. The fast-track/abbreviated-procedure
  claim (research l.20–22) rides on the same sentence.

**Required fix:** add table rows at grade B with the sources research already holds, and
name The Vietnamese Magazine (and its December 2025 date) inline for the "kín tiếng /
quy trình rút gọn" sentence, or drop that sentence.

### [steps] Receipts audit — read only after the findings above were fixed

`03-receipts.md` is broadly honest and its trap-by-trap account is visible on the page: I
independently confirmed the passage/effect split, the unresolved article count, the HRW
dating and inference-refusal, the VCCI draft framing, the AmCham/EuroCham gap wording, the
"bundled" attribution, the four instruments, and that all 15 rows are graded B — every one
of those claims checks out against the artifact. The claim "no new sources were added
beyond `01-research.md`" also checks out: all 21 cited domains appear in the research file.

Two receipt claims are overstated rather than false:

- "Final measured body count: **approximately 1,290 words**." My own manual token count of
  the five movements (no shell available; space-delimited tokens, the same convention the
  receipts describe) lands closer to **~1,150–1,250**. Either figure sits inside the agreed
  950–1300 band, so the plan is met either way; the receipts' number is at the optimistic
  edge of what the file supports. Not blocking.
- "Four instruments… each named with their number **every time** they appear." True in the
  body; table row 11 says "Luật 2018" without the number. Cosmetic.

The receipts are silent on the "Thứ hai" paragraph — consistent with FIX-IT 1: the trap
list it works through does not cover that claim, and neither did anything else.

### [plan] Scope and plan — followed, with the deviations declared

Five movements in the brief's order and roughly its weights, plus the confidence table.
Body length inside the 950–1300 band. Locked lexicon respected (passage ≠ effect;
116/2025/QH15 ≠ 24/2018/QH14 ≠ Nghị định 147 ≠ Luật BVDLCN). Register is neutral,
third-person, no sloganeering. Scope stayed on the one statute, opening to other
instruments only where needed to explain it — as agreed. Gates 1 and 2 were skipped, but
`00-brief.md` declares both skips in advance under "Sai lệch có công bố (R4)"; the
receipts correctly point at the brief rather than claiming the decision themselves. No
silent drift found (Axiom 8 clean).

## Minors (not blocking)

- "434/443 đại biểu tán thành — 91,75% tổng số đại biểu": the denominator is correct and
  matches research, but placing 434/443 immediately beside 91.75% invites a reader to
  check 434 ÷ 443 (= 97.97%) and conclude the piece slipped. Research says 443 delegates
  *present*; adding "có mặt" and "trên tổng số đại biểu Quốc hội" would close the gap.
- The HRW quotation and the "bảo đảm cân bằng giữa an ninh mạng với phát triển kinh tế -
  xã hội và chuyển đổi số" quotation are both rendered in Vietnamese inside quotation
  marks, while the fact store holds only English renderings from search snippets. Both
  translations are faithful, and the underlying government source is Vietnamese anyway —
  but a "(tạm dịch)" marker would keep the piece honest about what was actually read.
- The heading promises "Ba phía tranh cãi" and the section runs Thứ nhất / Thứ hai /
  Thứ ba / **Cuối cùng** — the fourth item is a framing correction, not a fourth side.
  A word of signposting would prevent the reader counting four.
- Research's most substantial rights critique — the open-textured prohibited-content
  standards ("chống Nhà nước," "gây mất ổn định") at research l.116–121 — is not used.
  Not required, and research itself labels it inference rather than a named organisation's
  statement; but it is stronger material than the unsourced sentence in FIX-IT 1.

## Verdict: FIX-IT

The piece is, on the whole, unusually disciplined: the three attribution traps that
normally sink this topic (HRW 2024 vs the 2025 law, VCCI draft input vs post-passage
protest, the passage/effect date merge) are each handled explicitly and correctly, the
disputed article count is left disputed, the four instruments never blur, gaps are written
as gaps, and the grade-B ceiling is declared in plain prose in the body — not only in the
closing table. Nothing in it is fabricated and nothing contradicts the fact store.

It is held back by two checkable defects, both fixable without touching anything else:

1. **The "Thứ hai" controversy paragraph attributes to "một số bình luận" a criticism —
   that concentrating authority weakens cross-agency checks — that appears nowhere in
   `01-research.md`, carries no named subject or date, and has no row in the confidence
   table.** It also contradicts the promise made two sentences earlier in the same section
   ("mỗi luồng ý kiến dưới đây gắn rõ chủ thể và thời điểm"). Source and date it, relabel
   it as the piece's own inference with a graded row, or cut it and state the gap.
2. **Load-bearing body claims ship ungraded:** the entire expanded-prohibited-content /
   vulnerable-groups / international-cooperation paragraph; the "đầu tư thiết bị" →
   "quản trị an ninh mạng" obligation shift; the cross-border periodic-evaluation
   mechanism; and the "thông qua kín tiếng / quy trình lập pháp rút gọn" sentence — the
   last of which also names no source anywhere in the piece, though research holds one
   (The Vietnamese Magazine, Dec 2025). Add grade-B rows from the sources research already
   found, and name that outlet inline or drop the sentence.

Nothing in the Minors list above blocks shipping, and none of it should be treated as a
fix requirement.
