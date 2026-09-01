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
  confidence table (19 rows after this round) is graded B.

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

## Gates skipped (per brief)
- Outline approval (Gate 1) and sign-off (Gate 2) were explicitly waived by the brief
  itself as an eval run; this is stated in `00-brief.md`, not decided here.
