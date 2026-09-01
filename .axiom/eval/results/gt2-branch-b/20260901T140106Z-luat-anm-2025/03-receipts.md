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
4. After trimming, re-extracted the token dump one more time from the actual edited
   file content, re-summed by hand per paragraph, cross-checked the arithmetic on the
   two follow-up edits (HRW aside: 59→42 tokens; "phần lớn" cut: −2 tokens; official-
   rationale paragraph: 111→100 tokens) against the full re-dump. Final measured body
   count: **approximately 1,290 words** (five sections, excluding the confidence
   table and its footnote) — inside the 950–1300 band, near its upper edge.
   I do not have a `wc`/shell tool in this environment, so this count is a manual sum
   over an exhaustive automated token extraction, not a single-command word count;
   I am reporting it as "approximately 1,290," not a falsely precise figure.

## Trap-by-trap handling (from the brief's own list)
- **Passage vs. effect date**: stated as two separate facts in the opening paragraph
  ("thông qua 10/12/2025" ... "hiệu lực từ 1/7/2026 — khác hẳn ngày thông qua"), and
  the confidence table flags the 1/1/2026 outlier as likely a conflation with the
  Personal Data Protection Law rather than silently omitting it.
- **Article count (45 vs. 58)**: stated as unresolved across sources, no number
  chosen as authoritative, in both the body and the table.
- **HRW**: the 11/12/2024 statement is dated, quoted, and explicitly tied to Decree
  147 and the 2018 law; the piece states plainly that no HRW statement dated after
  10/12/2025 was found, and explicitly names the "HRW condemned the 2025 law" framing
  as an unsupported inference — the exact trap the brief called out.
- **VCCI**: framed throughout as draft-stage consultation input, with an explicit
  sentence that no VCCI reaction to the final passed text was found.
- **AmCham/EuroCham**: stated as "no citable statement found," not "critics say" and
  not silently omitted; law-firm client-alert commentary is attributed to the firms,
  not to a named business association.
- **"Bundled with the Personal Data Protection Law"**: attributed explicitly to
  commentary, with the two laws' actual six-month gap and different effective dates
  stated to undercut the "bundled" framing.
- **Four instruments kept distinct**: Law 116/2025/QH15, Law 24/2018/QH14 (plus the
  underlying 86/2015/QH13), Decree 147, and the Personal Data Protection Law
  (91/2025/QH15) are each named with their number every time they appear; none are
  used interchangeably.
- **No A grades**: stated once in plain prose in the opening section ("không claim
  nào dưới đây được xếp hạng A... tất cả tối đa ở hạng B"), and every row of the
  confidence table is graded B — this was verified by re-reading the finished table
  line by line before submission.

## What was cut, and why
- The English-language "24h/3-hour" user-data-furnishing figure is mentioned but not
  developed further — research flagged it as possibly a garbled restatement of the
  24h/6h takedown rule rather than a confirmed separate obligation, so the piece keeps
  it to one flagged sentence rather than building a paragraph on an unconfirmed
  distinction.
- The specific "7–10 years" figure for how long the two 2015/2018 laws ran unmerged
  was cut to "nhiều năm" (several years) during the final trim to fit the word budget;
  the research source itself gave this range loosely (as background/context, not a
  headline figure), so this is a defensible compression, not a loss of a load-bearing
  claim.
- No new sources were added beyond `01-research.md`; every source cited in the
  confidence table is one research already found and graded.

## Gates skipped (per brief)
- Outline approval (Gate 1) and sign-off (Gate 2) were explicitly waived by the brief
  itself as an eval run; this is stated in `00-brief.md`, not decided here.
