# Inspection — Luật An ninh mạng 2025 và vì sao gây tranh cãi
Inspector: independent (did not receive a maker's summary)
Axis: whole
Artifact read: 03-deliverable.md (direct, in full, before opening 03-receipts.md)
Inspected-sha: 873529223f0100d9b61e2ab025c1078f20e5092f50483bfce49d16078750386c

Verify scope: **Egress blocked — probed once and recorded.** One WebFetch attempt against
the single most load-bearing external source, `https://www.hrw.org/news/2024/12/11/vietnam-repeal-harmful-internet-laws`,
returned `{"error_type":"EGRESS_BLOCKED","domain":"www.hrw.org"}`. No further probes were
made and **no claim was promoted to grade A**; B is the honest ceiling for this run, and I
confirm the deliverable says so itself in plain body prose (line 7), not only in its table.
Verification therefore consisted of: (a) tracing **every** figure, date, article number,
instrument number, named actor and source attribution in the body and in all 20 table rows
against `01-research.md`, cited passage by cited passage; (b) re-running the one piece of
arithmetic the piece rests on (434/443 and 91,75%); (c) an independent word/token count of
the five body movements against the 950–1,300 band; (d) a sentence-by-sentence sweep of
every clause asserting that something was not found, not issued, or does not exist; (e) an
audit of `03-receipts.md` **after** findings were fixed, as a claim to check rather than a
briefing. No external source was opened, therefore no claim in the deliverable is
independently corroborated beyond the fact store — a declared limit of this environment,
not a defect of the work.

## Threshold used
**FIX-IT** = checkably false, unsupported, or self-contradictory as shipped, or a required
part of the agreed scope missing. **Minor** = anything I would merely have written
differently, or residual imprecision a first-time reader would call cosmetic. Minors do not
enter the verdict.

## Findings

### [result] Correct, complete, in scope — no defect found
- **Five movements present** as planned in `00-brief.md`: opening · thay đổi thực chất ·
  ba phía tranh cãi · lý do chính thức · điều đáng theo dõi, plus the confidence table.
- **Word band held.** My independent count of the five body movements (paragraph by
  paragraph, space-delimited, em-dashes and heading markers separated out) lands at
  ~1,290–1,305 tokens, i.e. ~1,245 running words of prose plus ~44 heading words. Either
  measure sits inside 950–1,300. It sits at the top of the band, not over it.
- **Arithmetic re-run.** "434/443 đại biểu tán thành — 91,75% tổng số đại biểu" is
  internally coherent: 434/443 = 97,97%, so 91,75% cannot be that ratio, and the piece
  correctly labels it as a share of *total* delegates. 434 ÷ 0,9175 = 473,0 — a coherent NA
  size. The piece does not mislabel the denominator, which is the trap here. Matches
  `01-research.md` L23-24 exactly.
- **Date arithmetic re-run.** PDPL passed 26/6/2025 vs cybersecurity law passed 10/12/2025
  = ~5,5 months; effective 1/1/2026 vs 1/7/2026 = exactly 6 months. "khoảng sáu tháng"
  (line 31) is true on either reading. Matches research L135-138 and L193.

### [sources] Every figure, date, number, name and attribution traces
I checked all 20 table rows and every body figure against the fact store. All trace with
the same value, the same date and the same source:
116/2025/QH15 · 86/2015/QH13 · 35/2018/QH14 · 24/2018/QH14 · 91/2025/QH15 · Nghị định
147/2024 · 10/12/2025 · 1/7/2026 · 26/6/2025 · 1/1/2026 · 11/12/2024 · 434/443 · 91,75% ·
24 giờ/6 giờ · 24 giờ/3 giờ · Điều 13 · 45 vs 58 điều · Quốc hội khoá XV.
Source domains in the table (baochinhphu.vn · nhandan.vn · thuvienphapluat.vn ·
xaydungchinhsach.chinhphu.vn · luatvietnam.vn · frasersvn.com · EY Vietnam · vplsdms.vn ·
lawlinkvn.com · vietnamnet.vn · Công an Trà Vinh · tsqcb.edu.vn · Lexology/Mori Hamada ·
vibonline.com.vn · vjst.vn · hrw.org/news/2024/12/11 · The Vietnamese Magazine · banker.vn ·
congan.daklak.gov.vn · fpf.org · recordinglaw.com · congan.camau.gov.vn) each appear against
the same claim in `01-research.md`. **No source appears in the deliverable that is not in
the fact store; no invented domain.** Row 55 (the "đầu tư thiết bị" → "quản trị an ninh
mạng" shift) honestly declares it has no named domain behind it, which matches research
L75-79, where that bullet indeed closes without a "— source:" line. That is the correct
handling of a weak row, not a defect.

### [honesty] The six traps — all six held
1. **Passage 10/12/2025 vs effect 1/7/2026 kept distinct** — line 5 states both and says in
   terms that they are two different milestones commonly merged. The **1/1/2026 outlier is
   not adopted** anywhere; it survives only in table row 46 as a flagged minority reading
   attributed to conflation with the PDPL, exactly as research L25-29 and L177-180 frame it.
2. **Article count left unsettled** — line 19: "45 điều theo một số nguồn, 58 điều theo
   nguồn khác. Bài này không chọn một số làm chính thức." No number is smuggled in elsewhere.
3. **HRW** — dated 11/12/2024, tied explicitly to Nghị định 147/2024 and Luật An ninh mạng
   2018 (24/2018/QH14), followed by "không phải luật 2025" and an explicit refusal to repeat
   the "HRW lên án luật 2025" inference. This is the strongest passage in the piece.
4. **VCCI as draft-stage consultation** — line 25: "Đây là góp ý dự thảo, không phải phản
   đối sau thông qua." Matches research L82-90.
5. **No unnamed critics** — I searched the body for any anonymous attribution ("một số bình
   luận", "nhiều người cho rằng", "giới quan sát"). The only unattributed-actor sentences are
   line 11's "nhiều nguồn cho là gây chồng chéo" (which mirrors research L42's "a division
   sources say caused overlapping authority" and is a description of sources, not of critics)
   and line 25's "một số hãng luật" (see minors). The centralisation strand (line 27) states
   the absence as a gap rather than filling it with a nameless critic — the correct call.
6. **Four instruments kept distinct** — 116/2025/QH15, 24/2018/QH14 (+86/2015/QH13), Nghị
   định 147/2024 and 91/2025/QH15 are each carried with their number at every point in the
   body where they are introduced. No sentence blurs two of them.

### [honesty] Claims pitched above the evidence — the axis that matters most here
I read every sentence in the body that asserts something was not found, not issued, or does
not exist. There are seven. Each was checked against what the fact store establishes:

| Body sentence | Fact store | Verdict |
|---|---|---|
| L25 "không tìm thấy phát biểu nào của VCCI phản ứng với văn bản thông qua ngày 10/12/2025" | L87-90 "could not find a named VCCI leader or a dated, quotable VCCI statement" | search-claim, correct |
| L25 "không tìm thấy tuyên bố nào từ AmCham hay EuroCham" | L91-95 "found no citable statement ... This is a gap, not a confirmed absence" | search-claim, correct |
| L27 "Hồ sơ nghiên cứu không ghi nhận chỉ trích nào có tên về điểm này — khoảng trống, không phải bằng chứng không ai lo ngại" | L116-121 (the only general critique is unattributed and not about centralisation) | gap named **as** a gap, in terms |
| L29 "Không tìm thấy phát biểu nào của HRW sau ngày 10/12/2025 về luật mới" | L100-106, L185-187 "no post-10-Dec-2025 HRW statement located ... an open gap, not a confirmed silence" | search-claim, correct |
| L39 "hồ sơ nghiên cứu không xác định được tình trạng ban hành các nghị định này" | L44-50 establishes only *delegation to decrees* | **the exact trap named in my instructions, and it is avoided**: the piece does not say the decrees have not been issued |
| L39 "các hiệp hội doanh nghiệp nước ngoài — không tìm thấy tuyên bố công khai nào —" | L91-95 | search-claim, correct |
| L31 "chỉ là cách nói của giới bình luận, không phải lập trường chính thức" | L140-146, L190-193 | closest call in the piece; ruled **not** a defect — see below |

On the last one, because it is the one I weighed longest: the sentence converts "no official
statement calling this a package was found" into "not an official position". That is one step
firmer than a pure search-claim. It is nonetheless supported, and I do not treat it as a
defect, for three reasons that are checkable rather than charitable: (a) the accompanying
half of the same sentence — different passage dates, different effective dates, six months
apart — independently establishes "không phải cùng một gói lập pháp" as a reasoned B claim
that does not depend on any absence at all; (b) table row 61 discloses the basis openly
("đối chiếu với việc thiếu văn bản chính thức nào gọi đây là một gói"), so the reader is not
misled about what stands behind it; (c) the fact store itself directs precisely this framing
(L146: "State this explicitly in the piece rather than implying an official package").

Similarly ruled **not** defects after checking: line 13's "luật không bắt buộc đặt máy chủ
tại Việt Nam" and line 15's "không phải lệnh cấm toàn bộ" are positive findings in the fact
store (L47-50, L51-53), not inferred absences.

### [honesty] Quoted strings and translation disclosure
Every quoted string in the piece exists in `01-research.md` in **English only**, so each
Vietnamese rendering is a translation, and printing one inside quotation marks would
otherwise present it as original wording. The piece discloses this at line 17: "(dịch từ
tiếng Anh; áp dụng mọi ngoặc kép trong bài)", explicitly scoped to every quotation mark in
the piece, and placed at the first quote the reader meets. The disclosure therefore covers
the HRW quote at line 29 and the government-rationale quote at line 35, both of which come
later. **Disclosure is present where it applies.** I checked each rendering for a dropped
qualifier:
- HRW (L29) vs research L98-99: "rights-violating Decree 147 and Law on Cybersecurity" →
  "Nghị định 147 và Luật An ninh mạng vi phạm nhân quyền"; "release everyone imprisoned for
  exercising their free speech rights on the internet" → "trả tự do cho những người bị giam
  giữ vì thực thi quyền tự do ngôn luận trên mạng". No qualifier lost that changes the
  meaning; the modifier is carried, and the target instruments are named correctly and
  immediately re-stated with their numbers in the next sentence.
- Government rationale (L35) vs research L126-127: "cybersecurity **requirements**" and
  "**national** digital transformation" lose "yêu cầu" and "quốc gia". Listed as a minor,
  not a defect: the string is disclosed as a translation rather than as verbatim wording, and
  neither dropped word changes the proposition the sentence carries.
- "nhóm dễ bị tổn thương", "đầu tư thiết bị", "xây dựng năng lực quản trị an ninh mạng" — all
  faithful to L69-79.

### [honesty] Confidence table matches the prose both ways
Twenty rows, checked in both directions. Every substantive body claim has a row; every row
has a corresponding body passage. **All 20 rows are graded B. No A, no C, no D leaked in** —
which is the required outcome for a blocked-egress run. The two gap rows (57, 59) and the
decree row (64) carry their gap status inside the grade cell itself ("khoảng trống thông
tin, không phải bằng chứng của sự im lặng" / "không phải bằng chứng đã hay chưa ban hành"),
which is the right place for it. The closing method note repeats the ceiling. The only
row carrying material not present in the prose is row 46's 1/1/2026 outlier note; that is
supplementary hedging, not a contradiction, and it is the correct place for a source
conflict the body deliberately does not adopt.

### [plan] Plan followed; deviations announced
`00-brief.md` locks: five movements, 950–1,300 words, the lexicon separating the four
instruments and the two dates, and six FIX-IT triggers. All are met (above). The brief's
own declared deviations — skipping Gate 1 and Gate 2 as an eval run — are written down in
`00-brief.md` §"Sai lệch có công bố (R4)" rather than taken silently. Scope did not drift:
the PDPL is discussed only to the extent needed to defuse the "bundled package" framing,
which the brief's locked lexicon anticipates. No scope was quietly abandoned.

### [steps] Receipts audited against the page
Read **after** the findings above were fixed. `03-receipts.md` claims are visible in the
artifact where they assert something about it: the removal of the unsourced "một số bình
luận" attribution (line 27 now carries gap language instead); the four table rows added in
round 1 (rows 54, 51, 55, 60 all present); the round-2 rewrite of the decree sentence (line
39 reads exactly as receipted); the "không có" → "không tìm thấy" swap (line 25); the round-3
"chưa có" → "không tìm thấy" swap (line 39); the translation disclosure and the
correspondingly cut vulnerable-groups enumeration (line 17 — the enumeration is indeed gone,
and the claim it supported survives in the same sentence and in row 54). The receipts'
count of 20 grade-B rows matches my own count of the table. The receipts' final word figure
(1,300) is corroborated to within ~1% by my independent count. Receipts also record what
was *not* done (minors left alone, the 28/6–13/7/2025 public-comment fact omitted) rather
than claiming completeness. **No claimed step is unsupported by the page; no R4 signature.**

## Minors (not blocking)
1. **L35 quote drops "yêu cầu" and "quốc gia"** relative to the English in research L126-127
   ("cybersecurity requirements", "national digital transformation"). Disclosed as a
   translation, meaning unchanged — cosmetic.
2. **The translation disclosure is over-broad and oddly placed.** "(dịch từ tiếng Anh; áp
   dụng mọi ngoặc kép trong bài)" also sweeps in strings that are not quotations at all but
   the piece's own scare quotes ("doanh nghiệp nước ngoài phản đối", "HRW lên án luật 2025",
   "vi phạm", "luật này đi kèm..."). It under-claims rather than over-claims, so nothing
   false results; the method note at line 7 or the closing footnote would have been a more
   natural home for it.
3. **"một số hãng luật"** (L25, plural) where research L91-95 names one set of client alerts
   (Lexology/Mori Hamada). A small plural stretch; the conclusion it supports — that this is
   firm analysis, not an association position — is unaffected.
4. **"Liên đoàn Thương mại và Công nghiệp Việt Nam"** (L25) is the correct current Vietnamese
   name for VCCI, but that expansion appears nowhere in `01-research.md`, which carries only
   the English. It is a correct name rendering rather than a factual claim, hence a minor;
   strictly it does not trace to the fact store.
5. **Table row 63 labels the official rationale "chủ quyền dữ liệu"** where research L126-127
   says sovereignty *in cyberspace*. The body prose (L35) is accurate; only the table's
   shorthand drifts.
6. **"Ba phía tranh cãi" is followed by four blocks** (thứ nhất / thứ hai / thứ ba /
   "Cuối cùng"). The fourth is a framing correction rather than a fourth side, so the heading
   is not falsified, but the signposting invites a moment's confusion.
7. **The piece never states its own date**, so a reader cannot see that 1/7/2026 is two
   months in the past. No sentence reads as forthcoming — "các nghĩa vụ đã có hiệu lực"
   (L39) anchors it correctly — so this is a clarity point, not a currency error.
8. **Research facts left on the table** (the MPS public-comment period 28/6–13/7/2025; the
   2018 law's nationwide protests as the contrast behind "kín tiếng"; the "7–10 năm"
   figure). Omission from a fact store is not a defect; the piece is at its word ceiling.
9. **"hồ sơ nghiên cứu"** appears twice in the body (L27, L39) as visible pipeline language a
   general reader has no referent for. Cosmetic.

## Verdict: PASS

Nothing in the artifact is checkably false, unsupported, or self-contradictory as shipped.
All six named traps hold. Every figure, date, instrument number, named actor and source
attribution traces to `01-research.md` at the same value and the same source; the one piece
of arithmetic the piece rests on re-computes correctly and labels its denominator correctly;
all seven not-found sentences are written as claims about the search, not claims about the
world — including the decree-issuance sentence, which is the single highest-risk conversion
in this topic and which the piece gets right; translation of the quoted strings is disclosed
and scoped to the whole piece; the confidence table matches the prose in both directions
with all 20 rows at grade B and no A promoted despite blocked egress, which the body states
in plain prose at line 7 and repeats in the method note; and the plan's five movements, word
band and locked lexicon are all honoured, with the brief's two skipped gates declared rather
than hidden.

What remains is the nine items above. Each is phrasing, placement, shorthand or a fact the
piece had no room for — the kind of thing a first-time reader would call cosmetic, and none
of it would change a conclusion if it failed. Under the threshold stated at the top of this
report, that is a PASS with minors, and I say so plainly rather than withholding a pass
because the piece could conceivably be better. The minors are listed for the record and are
**not** conditions of shipping.

One limit to declare rather than to hold against the work: egress was blocked session-wide
(probe recorded above), so no claim here is corroborated outside `01-research.md`. B is the
honest ceiling for this run, the deliverable says so itself, and this inspection promotes
nothing.
