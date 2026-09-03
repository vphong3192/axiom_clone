# Inspection — Tản văn ~400 từ về ký ức một cơn mưa, giọng tiền chiến kiểu Thạch Lam

Inspector: independent (did not receive a maker's summary; read `03-deliverable.md` directly before opening `03-receipts.md`)
Axis: whole
Artifact read: `03-deliverable.md` (direct, full text)
Inspected-sha: 7588ffc746a7b8584a92b25ac7960005e4973a645c56d625c39783a645c812e1

Verify scope:
- **Egress: BLOCKED.** Probed once, as instructed: `WebFetch https://vi.wikipedia.org/wiki/Thạch_Lam` → `EGRESS_BLOCKED`. No external source could be opened. **Truth-ceiling for this inspection is B**, matching the brief's preflight (line 38–39). I did not invent a grade-A and did not treat any WebSearch snippet as an opened source.
- **Sources opened: 0 of 0 possible.** `01-research.md` cites no URLs — it contains exactly one factual claim requiring a source ("Hà Nội băm sáu phố phường" 1943 / death 1942, self-graded [B]), and one [C] memory claim about roof materials. Neither is re-verifiable in this session. Neither is load-bearing for the deliverable: **no date, statistic, quotation or named source appears anywhere in `03-deliverable.md`.** I therefore fell back to internal-consistency checking, period-plausibility checking, and constraint-compliance checking against `00-brief.md` and `01-research.md`.
- **Recomputation performed by hand** (no shell tool available in this session): full token count of the deliverable; exact token counts of two sections of `01-research.md` and of the whole `## Plan` block of `00-brief.md`; line-by-line check of the forbidden list; line-by-line check of the two Thạch Lam lines flagged as off-limits.
- **Could not independently recompute the sha256.** No shell available. `05-inspection.sha` on disk reads `7588ffc7…c812e1  03-deliverable.md`, byte-identical to the sha the orchestrator gave me. Recorded as a limit, not asserted as verified.

**FIX-IT threshold used (stated, per the axis rules):** FIX-IT only for what is checkably false, unsupported, or self-contradictory as shipped, or for a requirement of the brief that was not met. Everything I would merely have written differently is in the non-blocking list and does not enter the verdict.

---

## Findings

### [result] The prose itself is clean. It meets every constraint the brief placed on the deliverable.

I checked the shipped text against each of the brief's own FIX-IT triggers (`00-brief.md` line 66) and found none of them tripped:

- **Length.** My own hand count, token by token across all eleven sentences: **451 words** (45 · 57 · 45 · 29 · 31 · 9 · 57 · 32 · 23 · 42 · 81). Inside the required 350–480 band with room on both sides. (Counted as whitespace-separated tokens, the convention `wc -w` would apply; on a lexical-word count it would be lower but still in band.)
- **Forbidden list, checked item by item** (`00-brief.md` 55–57): no "tí tách" or any variant — the rain instead "gõ đều", "nhỏ giọt đều đều", "rơi tõm"; no "ký ức ùa về"; no rain personified as weeping or sad; no "gột rửa tâm hồn" or self-help register; no "Có những cơn mưa…" opener; and the abstract nouns "ký ức" and "hoài niệm" **do not appear in the text at all** — I searched the full string. Emotion is never named: there is no "buồn", no "nhớ", no "cô đơn". It is carried by objects, as commissioned (the lamp shrinking and flaring, the shadow on the damp-streaked wall, the clogs going silent, the cart-track dissolving).
- **The borrowing line was not crossed** (`00-brief.md` 59–61). The two Thạch Lam passages research flagged were the "Chiều, chiều rồi… văng vẳng tiếng ếch nhái kêu ran ngoài đồng ruộng" line and the earth-smell line ending "mùi riêng của đất, của quê hương này." Neither appears, in wording or in clause structure. The frogs-in-the-fields motif — the single most legible echo available — is **absent**; the piece uses crickets in wet roadside grass instead. The earth smell is rendered as "hơi đất bốc lên… len vào nhà qua khe cửa liếp còn để ngỏ", which shares only the common motif research explicitly permitted, not the flagged phrasing. I found no sentence attributable to any real author.
- **Period detail.** Every named object is pre-1945 phố huyện stock and every one of them is on research's vetted list (`01-research.md` 29–34): đèn hoa kỳ, chõng tre, cửa liếp, guốc mộc, quang gánh, chum sành, máng tre, mái tranh / mái ngói, thềm/nền gạch, đường đất, xe bò, xe kéo, quán nước đầu chợ. No modern or foreign vocabulary, no anachronism found. The one social detail — thatch on the tea-seller's house, tile on the herbalist's — matches research's [C] note that tile signalled the better-off, and it is used at exactly the vague level research demanded: **no ratio, count or statistic is attached to either**, so the unverifiable part of that [C] never reaches the page. That is the correct handling of a C-grade fact: the safe residue ships, the unsupported specificity does not.
- **Voice, against the house style the brief set** (`00-brief.md` 51–52). Long comma-chained clauses dominate; exactly **one** short sentence appears ("Trẻ con trong xóm đã tản đi đâu hết.", 9 tokens) against a next-shortest of 23 — the single rhythm-break the plan asked for, delivered once and not diluted by a second.
- **Outline followed in order** (`00-brief.md` 46–48): time adverbial opening ("Chiều hôm ấy") → rain arrives → material axis (mái / đèn / chum / chõng) → emptied phố huyện → rain stops → close on a static image (the drop falling from the thatch edge, the ring, then stillness). **No summarising sentence, no moral, no reflection** — the hardest part of the brief and the one most drafts fail; this one holds to the last word.

### [sources] No source is misused, because the deliverable cites none — and that is correct here.

Creative prose asserting no facts has nothing to cite. I checked specifically whether any unsourced *factual* claim leaked into the prose (a date, a place-name event, a statistic, a quotation) and found none. The [C]-graded material-culture claim in research was, as noted above, used only at the level its grade supports. **No D-grade material reached the page.**

### [plan] One breach: `01-research.md` overruns the brief's own written budget by roughly 40%.

`00-brief.md` line 13 commits, in writing, to: *"Budgets: research ≤ 800 từ · plan ≤ 130 từ · thân bài 350–480 từ."* The third was met (451). The first was not.

I measured `01-research.md` by exact hand count of two representative sections and extrapolation over the file's 70 non-blank lines:

- lines 21–34 (`## Chi tiết thời đại`, 14 lines): **241 words** exactly counted → 17.2 words/line
- lines 36–48 (`## Pitfalls to avoid`, 13 lines): **191 words** exactly counted → 14.7 words/line
- exactly counted subtotal: **432 words over 27 lines**; 43 non-blank lines remain, all of comparable density
- projection at the blended 16 words/line: **≈ 1,120 words**. Deliberately conservative floor (12 words/line for every remaining line): **≈ 950 words**.

Even the conservative floor exceeds the brief's 800-word budget, and also exceeds the independent cap in the constitution (`01-research.md` ≤ 2N = 2 × 451 = **902**). At the central estimate the research file is **~2.5× the length of the work it exists to serve** — precisely the harm the rule is written to prevent ("so the scaffolding never dwarfs the work"). This is not a stylistic preference: it is a number the brief committed to and did not meet, and it is checkable.

The proximate cause is visible in the run: **there is no evidence `budget.sh` was ever run.** No artifact records its output. Both writing stations report hand counts instead (`03-receipts.md` 38–40; `04-coach.md` 66–69) — and to their credit both flag the counts as manual rather than dressing them as machine-verified, which is honest. But the constitution's rule is that this number is recomputed by script, never relayed from the station, and the one budget that a script would have caught is the one that slipped.

### [steps] Every claimed step is visible in the artifact. I found no faked step (R4).

I reached my findings from the page before opening `03-receipts.md`, then audited the receipts against it. The claims check out where they matter:

- "the word 'ký ức' does not appear anywhere in the piece" (receipts 27) — **true**, verified against the full text.
- "exactly one short sentence… checked there isn't a second one competing with it" (receipts 31–33) — **true**, verified by counting every sentence.
- "no first-person emotional claim at all" (receipts 28–30) — **true**; there is no "tôi" in the piece at all.
- "mái tranh and mái ngói both mentioned without any ratio or count" (receipts 36–37) — **true**.
- `04-coach.md` claims it cut a frogs-plus-earth-smell sentence and rewrote it around crickets, a net −1 word (43 removed, 42 added). This is auditable and it audits clean: "ếch nhái" and "đồng ruộng" are **absent** from the shipped text, the replacement sentence is present, and my independent count of that replacement sentence is **exactly 42 tokens**, matching the coach's stated figure. A claimed edit that leaves a checkable fingerprint in the shipped bytes is the opposite of R4.

That coach entry is also the most creditable judgement in the run: it caught a *content* echo of the flagged source lines that differed in wording, and explicitly refused to excuse it on the grounds that the wording differed ("wording differing was not the standard the brief set"). That is the standard applied correctly against its own interest.

### [honesty] Honest throughout, with one process caveat about the brief that I did not accept.

Grading is handled correctly: research self-grades [B] and [C] accurately given blocked egress, states plainly that WebSearch snippets do not constitute opened sources, and lists its own gaps under "Open conflicts / gaps" rather than papering over them. Both hand counts are declared as hand counts. Nothing is dressed up past its evidence (R2), and the piece is not thin (R3) — 451 words of dense, specific, on-register prose.

**The absence of a confidence table is an announced deviation, not silent drift.** `00-brief.md` (10–11, 30–34) states before any station ran that a creative piece asserting no facts gets no A/B/C/D table and no in-text B-ceiling declaration, and gives the reason. Announced in writing in advance satisfies Axiom 7, and the reasoning is sound. I do not fault it.

**However**, I record one thing for the human. `00-brief.md` 63–66 does not merely scope the inspection — it *enumerates* the only conditions under which the inspector may return FIX-IT, and line 34 pre-labels a disagreeing inspector as "lỗi của harness, không phải của bài". A document produced by the line under inspection cannot bound what the inspector is allowed to find; that structure is a soft form of R5, and it matters here because **my one blocking finding falls outside the brief's enumerated list.** My mandate comes from the constitution and from the artifact, not from the brief. I note in fairness that the narrowing appears aimed at a specific and defensible point (don't demand a confidence table for fiction), not at concealing anything — but the mechanism should not survive into future briefs.

---

## Minors (not blocking)

These are things I would have written differently or would like tightened. None is checkably false and none enters the verdict.

1. **The "memory" register is thin.** The scope line says "ký ức một cơn mưa", but the piece is a close-third-person scene with no rememberer: no "tôi", no framing consciousness. The recollective weight rests entirely on the deictic "hôm ấy" and on "những vệt ẩm cũ từ những mùa mưa trước". That is a legitimate reading of the commission and the brief's own outline never asked for a first-person frame — so it is not a missing scope element — but the outline arguably dropped the "ký ức" dimension before a word was written, and a tản văn is conventionally more narrator-present than this.
2. **"Quán nước đầu chợ" (sentence 9) has an ambiguous referent.** It reads either as a second stall or as the same bà cụ hàng nước's place. On the second reading the piece has two lamps in the same establishment — a "đèn dầu treo trước cửa" and a "đèn hoa kỳ treo ở đầu chõng" — which is odd for a poor stall. One clarifying word would settle it.
3. **"hơi đất bốc lên sau một ngày mưa" (sentence 10) sits in mild tension with the established time.** The wind turns "từ lúc quá ngọ" and the rain falls and stops within the one afternoon ("buổi chiều vừa tạnh"), so "a day of rain" is a stretch — readable as "a day on which it rained", so not a contradiction, but looser than the rest of the piece's timekeeping.
4. **Sidecars are slightly stale relative to the shipped bytes.** `03-receipts.md` 38 says 452 words; `04-coach.md` 69 says 451; my count is 451. The two are reconcilable (the coach's edit was net −1, so 452 is the pre-edit figure) but the receipt describes the shipped file and is off by one. Separately, receipts 21–22 lists "đồng ruộng, ếch nhái" among the shared material — both were cut by the coach and are not in the shipped text. Neither error changes anything: both counts sit inside the band, and both statements are about a sidecar, not the work.
5. **"mái tranh" and "mái gianh" are used for the same roof** (sentences 2/11 vs 8). Both are valid Vietnamese for thatch, so this is a synonym, not an inconsistency — but picking one would read tighter.
6. **"tiếng mưa gõ đều trên những mái nhà"** is adjacent to the banned "tí tách gõ nhịp" family without being in it. I judged it clear of the ban — the ban targets the onomatopoeia "tí tách", which is absent — but I flag that I considered it.
7. **The `plan ≤ 130 từ` budget is arguably breached too, and I chose not to block on it.** The whole `## Plan` block of `00-brief.md` (lines 43–66) is **241 words** by my exact count. But the constitution enumerates "plan", "outline" and "inspection plan" as distinct contents of `00-brief.md`; excluding the outline and the inspection plan gives **121 words**, inside budget. The scoping is genuinely ambiguous, so I do not hang a verdict on it. The research budget has no such ambiguity, which is why that one blocks and this one does not.

---

## Verdict: FIX-IT

The deliverable itself is strong and I want to say so plainly: 451 words, in band, on register, every forbidden construction avoided, no line of Thạch Lam's borrowed, no anachronism, emotion carried entirely by objects, and a close that ends on an image instead of a lesson. Against the brief's own list of FIX-IT triggers it is clean on all five. Nothing in the shipped prose is false, unsupported or self-contradictory.

The verdict turns on one thing, and it is a number the brief itself committed to:

**Required fix (1):**

1. **`01-research.md` exceeds its written budget.** `00-brief.md` line 13 sets research ≤ **800 words**; the file measures **≈1,120 words** (conservative floor ≈950), which also breaches the constitution's independent ≤2N cap of **902** and leaves the scaffolding at roughly 2.5× the work it serves. Cut `01-research.md` to ≤800 words — the "Ranh giới không được vượt" and "Pitfalls" sections earn their length and should survive; the restatement in "Best approaches considered" (lines 63–68) largely duplicates material already in "Key findings" and in the brief's own house-style block, and the "Open conflicts / gaps" section repeats grading caveats already stated inline at lines 3–6, 22–24 and 25–28. **Then run `.axiom/bin/budget.sh` on the run and record its output in the run folder**, so the recomputed figure exists rather than the hand counts currently standing in for it.

`03-deliverable.md` requires **no change**. If the repair round edits the deliverable at all, the inspected sha above is void and the bytes must be re-pinned and re-inspected; if only `01-research.md` is trimmed, the deliverable's sha should still read `7588ffc7…c812e1` at the gate.
