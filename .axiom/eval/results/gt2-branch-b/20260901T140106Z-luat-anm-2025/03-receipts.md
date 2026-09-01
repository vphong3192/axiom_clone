# Receipts — assembly of 03-deliverable.md

## What was read
- `00-brief.md` in full (scope, budgets, outline with per-section word targets, house
  style, inspection plan/FIX-IT triggers).
- `01-research.md` in full (fact store; egress BLOCKED for the whole run, everything
  capped at grade B per the brief's own preflight ruling).

## Process
1. Drafted the five movements in the order and approximate weights given in the
   brief's outline (mở ~110 · thay đổi thực chất ~380 · ba phía tranh cãi ~420 · lý do
   chính thức ~180 · kết ~120), then a confidence table.
2. First full draft came in far over budget. Rather than eyeball it, I extracted the
   body prose into a scratch file and ran the Grep tool (pattern `\S+`, `-o` content
   mode, `head_limit 0`) to get an exhaustive, per-token dump of the file, then summed
   tokens per paragraph by hand from that dump (space-delimited tokens — the same
   method a Vietnamese word processor uses to count "từ", since automatic semantic
   word-segmentation for Vietnamese is not something I can run here). First measured
   total: **1,783 tokens** — about 60% over the 950–1300 band.
3. Cut in two passes, re-measuring the same way after each pass (1,783 → ~1,560 →
   ~1,320), tightening the most repetitive paragraphs first (the VCCI paragraph and the
   HRW paragraph were the two largest single blocks: 233 and 258 tokens before
   trimming). Cuts removed redundant framing phrases ("cần nói rõ", repeated "trong
   quá trình", doubled transitions) and shortened one aside (the "quiet passing"
   framing) without dropping any of the required facts.

## FIX-IT round 1 — changes made in response to 05-inspection.md

### Finding 1 (sources): unnamed "một số bình luận" attribution
The "Thứ hai" paragraph attributed a criticism ("concentrating authority reduces
cross-agency checks") to "một số bình luận" with no source in `01-research.md`, no
table row, and no named subject/date — breaking the section's own stated rule. Per
the inspector's preferred remedy (cut rather than hedge), I removed the unsourced
attribution entirely. The paragraph now states only the already-verified fact
(regulatory concentration, already sourced elsewhere in the body and in table row
5) and says plainly that the research file records no named criticism on this
specific ground — the same "gap stated as a gap" treatment already used for
AmCham/EuroCham two paragraphs earlier. No new source was invented; nothing was
added to the confidence table for a claim that isn't there anymore, because the
claim itself is gone.

### Finding 2 (honesty): load-bearing claims missing from the confidence table
Added four rows to the table, each pointing at the specific research-file passage
the inspector cited:
- Expanded prohibited-content / vulnerable-groups / international-cooperation
  paragraph → new row, grade B, sourced to baochinhphu.vn and nhandan.vn (matches
  `01-research.md` lines 69–74, which already carried that exact source pair).
- Cross-border periodic-evaluation mechanism ("không phải lệnh cấm toàn bộ") → new
  row, grade B, sourced to vietnamnet.vn (research lines 51–53).
- Business-obligation shift ("đầu tư thiết bị" → "quản trị an ninh mạng") → new row,
  grade B. Research lines 75–79 support the claim but name no specific outlet domain
  for it (unlike the neighboring bullets, which each close with an explicit
  "— source: X" line). Rather than invent a domain, the table row says so directly:
  "hồ sơ nghiên cứu (nhiều nguồn giải thích luật; không nêu tên miền cụ thể cho riêng
  phát hiện này)." This is a weaker-sourced row than the others by design — it is
  honest about the gap rather than dressing it up as equally solid.
- The "kín tiếng / quy trình rút gọn" sentence → this was the sentence the inspector
  flagged as weakest, since research names a source (The Vietnamese Magazine, "The
  Quiet Passing of Việt Nam's 2025 Cybersecurity Law," Dec 2025, research lines
  107–115) but the body named nobody. Fixed two ways: (a) the body sentence now opens
  with "The Vietnamese Magazine, trong bài tháng 12/2025, ghi nhận..." instead of the
  unattributed "Bình luận độc lập cũng ghi nhận..."; (b) added a matching table row at
  grade B citing the same outlet and date.

### Keeping the body inside the 950–1,300 word band
Cutting the unsourced attribution (Finding 1) removed roughly nine words; naming the
source inline for the "kín tiếng" sentence (Finding 2) added roughly six. Adding four
table rows does not count against the body-word budget, since the table sits outside
the five prose movements — but it does add bulk to the document overall, so I checked
the body word count directly rather than assume the two edits canceled out.

Method: I copied the five body movements (title through the "Điều đáng theo dõi"
section, excluding the confidence table and its footnote) into a scratch file and ran
Grep with pattern `\S+`, `-o` content mode, `head_limit 0` to get one token per output
line, then wrote that output to a second scratch file and ran Grep again with pattern
`^` in `count` mode to get an exact line count — this is a count of lines, which after
the one-token-per-line dump equals an exact token count, not an estimate.

- Before this round's edits, the same method (line count of the token dump) gave
  **1,315 tokens**. Six of those are the Markdown heading markers ("#" once, "##" five
  times), which are not words, so the actual body word count going into this round was
  **1,309 words** — nine over the 950–1,300 band, even before any FIX-IT edit. (I did
  not re-measure after the Finding-1 cut and the Finding-2 attribution addition
  individually — the Finding-1 cut removes roughly nine words and the Finding-2
  addition adds roughly six by manual count of the two changed sentences, which would
  leave the piece close to where it started, still over budget. Rather than measure
  that intermediate state, I made one further trim and then measured only the final
  result, below.)
- The further trim, unrelated to either finding: in the "Về dữ liệu" paragraph, the
  clause "chỉ bắt buộc lưu dữ liệu thuộc diện quy định" was cut because it restated,
  almost word for word, a fact the same sentence had already stated twice ("lưu một số
  dữ liệu trong nước" and "thuộc diện do Chính phủ quy định bằng nghị định"). This
  removed exactly ten tokens by the same count method and touched no fact the
  inspection checked — the "no server mandate" claim central to that paragraph is
  unaffected and still reads intact via "luật không bắt buộc đặt máy chủ tại Việt Nam."
- Final measured body count, same method, re-run on the edited file: **1,305 tokens,
  minus 6 heading markers = 1,299 words.** This is a real count from a fresh run of
  the tool against the actual edited file, not carried over from the previous round's
  arithmetic.

I do not have a `wc`/shell tool in this environment; the count above comes from an
exhaustive Grep token dump plus a line-count of that dump, which is exact for
space-delimited tokens (not a manual estimate). I am not reporting an "approximately"
figure this round because the method produces an exact number; the only imprecision is
that Vietnamese words are not all single space-delimited tokens (some Vietnamese words
are two syllables joined by a space, e.g. "an ninh"), so this "word" count is actually
a *token* count and very likely runs a few percent higher than a semantic Vietnamese
word count would. I did not correct for that, and I am stating that limitation rather
than adjusting the number to look tighter.

## Correcting the previous round's receipts (per the inspector's audit)
The prior version of this file made two claims the inspector found mildly overstated.
Both are corrected here rather than repeated:
- It reported "Final measured body count: approximately 1,290 words." The inspector's
  own independent manual count landed at ~1,150–1,250, and my own re-measurement this
  round (by the token-dump method above) shows the actual pre-FIX-IT count was 1,309 —
  over the band, not "near its upper edge inside it" as the prior receipts implied.
  That number is corrected above with an exact, reproducible method rather than
  restated.
- It claimed the four legal instruments were named with their number "every time they
  appear." The inspector found one exception (table row for the 2018 law, which reads
  "Luật 2018" without its number in one place). That claim is not repeated here; it
  was not something this round's edits touched, and it is not re-asserted.

## Trap-by-trap handling (from the brief's own list) — unchanged this round
- **Passage vs. effect date**: stated as two separate facts in the opening paragraph.
- **Article count (45 vs. 58)**: stated as unresolved, no number chosen as authoritative.
- **HRW**: the 11/12/2024 statement is dated, quoted, and tied to Decree 147 and the
  2018 law; the piece states no HRW statement dated after 10/12/2025 was found.
- **VCCI**: framed as draft-stage consultation; no post-passage VCCI reaction found.
- **AmCham/EuroCham**: stated as "no citable statement found," attributed to a gap,
  not to unnamed critics.
- **"Bundled with the Personal Data Protection Law"**: attributed to commentary, with
  the six-month gap and different effective dates stated to undercut the framing.
- **Four instruments kept distinct**: Law 116/2025/QH15, Law 24/2018/QH14 (plus
  86/2015/QH13), Decree 147, and the Personal Data Protection Law (91/2025/QH15) are
  each named with their number at every point where a number is given in the body.
- **No A grades**: stated in plain prose in the opening section and every row of the
  confidence table (20 rows after round 2 — see round-2 section above) is graded B.

## What was cut, and why
- The unsourced "một số bình luận" attribution in the "Thứ hai" paragraph (this
  round, per Finding 1 — see above).
- The redundant trailing clause in the "Về dữ liệu" paragraph (this round, to hold the
  word budget — see above).
- The English-language "24h/3-hour" user-data-furnishing figure is mentioned but not
  developed further — research flagged it as possibly a garbled restatement of the
  24h/6h takedown rule rather than a confirmed separate obligation.
- The specific "7–10 years" figure for how long the two 2015/2018 laws ran unmerged
  was compressed to "nhiều năm" in the original draft; the research source gave this
  range loosely as background, not a headline figure.
- No new sources were added beyond `01-research.md`; every source cited in the
  confidence table (including the four new rows) is one research already found and
  graded.

## FIX-IT round 2 — changes made in response to 05-inspection.md

Both findings were the same failure in two places: a claim stated more strongly than
`01-research.md` supports. Narrow repairs only — nothing outside the two named
passages and their immediate surroundings was touched.

### FIX-IT 1 — decree-issuance claim, §"Điều đáng theo dõi từ 1/7/2026"
The sentence asserted *"các nghị định hướng dẫn **chưa ban hành**"* — flat non-issuance
— when `01-research.md` (lines 44–50) establishes only that criteria, scope and
duration are *left to* implementing decrees, a statement about the law's design, not
about whether any decree has since been issued. Rewrote to say only what the fact
store supports: the law delegates these matters to decrees, and this run could not
establish their issuance status ("luật giao nghị định quy định tiêu chí, phạm vi và
thời hạn ... hồ sơ nghiên cứu không xác định được tình trạng ban hành các nghị định
này"). I did not add an explicit calendar date (the inspector's option (b) suggested
one) because the piece's method note already states everything is dated to the
research pass, not to ship date, and adding a second, differently-worded date marker
risked more confusion than it resolved; the fix instead removes the false-precision
claim entirely rather than dating a non-finding.

Also fixed the companion clause in the same sentence: *"khi các nghĩa vụ **bắt đầu áp
dụng**"* framed as future a set of obligations live since 1/7/2026. Changed to "có lên
tiếng về các nghĩa vụ đã có hiệu lực" — present/perfect, matching the fact that the law
took effect two months before this run.

Added a confidence-table row (previously missing — this was the one substantive body
claim with no row): "Tiêu chí, phạm vi và thời hạn lưu trữ dữ liệu do nghị định hướng
dẫn quy định; hồ sơ nghiên cứu không xác định được tình trạng ban hành các nghị định
này" — graded B (khoảng trống thông tin, không phải bằng chứng đã hay chưa ban hành),
sourced to vietnamnet.vn / Công an Trà Vinh for the delegation fact and flagged as
unconfirmed for the issuance-status half, consistent with how the AmCham/EuroCham and
post-passage-HRW gap rows are already handled in the same table.

### FIX-IT 2 — VCCI non-finding, §"Ba phía tranh cãi"
*"**không có** phát biểu nào của VCCI phản ứng với văn bản thông qua ngày 10/12/2025"*
asserted non-existence. `01-research.md` (lines 87–90) records only a non-finding —
"could not find a named VCCI leader or a dated, quotable VCCI statement." Changed
"không có" to "không tìm thấy," matching the exact treatment already given to
AmCham/EuroCham three lines later and to HRW in the same section ("không tìm thấy",
"Không tìm thấy").

### Search for the same claims elsewhere in the piece
Checked every other instance of "chưa ban hành," "không có ... nào," and "bắt đầu áp
dụng" — neither overclaim was repeated anywhere else in the body or in the confidence
table (the table previously had no row for the decree claim at all, hence the addition
above rather than a correction of an existing row).

### Word-count check (both fixes plus the table row)
The inspector's finding required both fixes to be word-neutral or shorter, since the
body sat at 1,299 words against a 1,300-word ceiling with no headroom.
- Swapping "không có" → "không tìm thấy" (Fix 2) added exactly one token
  ("không"/"có" = 2 tokens → "không"/"tìm"/"thấy" = 3 tokens): +1.
- The rewritten closing-section sentence (Fix 1), measured token-for-token against the
  original, came out even (112 tokens each) on the first draft, then I trimmed one
  filler word ("giao **cho** nghị định" → "giao nghị định") to offset the +1 from Fix 2:
  −1.
- Net change across both fixes: **zero**.
- Method: re-ran the same exhaustive-dump technique as FIX-IT round 1 (Grep pattern
  `\S+`, `-o` content mode, `head_limit 0`, over the five body movements only, table
  and footnote excluded), then counted output lines with a second Grep pass (`^`,
  count mode) against a scratch copy of that dump. This is an exact count of
  space-delimited tokens, not an estimate.
- **Measured result: 1,305 tokens, minus 6 Markdown heading markers ("#" once, "##"
  five times) = 1,299 words** — identical to the pre-round-2 figure. The body did not
  grow.
- The new confidence-table row (added for Fix 1) sits in the table, which is outside
  the five-movement body word count and outside the 950–1,300 band that applies to it;
  the table now carries 20 rows instead of 19.

## Gates skipped (per brief)
- Outline approval (Gate 1) and sign-off (Gate 2) were explicitly waived by the brief
  itself as an eval run; this is stated in `00-brief.md`, not decided here.
