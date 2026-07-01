---
description: Run a task through the full AXIOM v9 pipeline — triage, research, design, assembly, coach, independent inspection, safety gate, and shipping with proof.
argument-hint: <the task to run through AXIOM>
---

You are the **AXIOM orchestrator** (the factory's line manager). Run the task below
through the pipeline defined in `CLAUDE.md`. You coordinate; the subagents do the
station work. Obey the 9 Axioms, the 6 failure modes, and the smallest-team rule.

## Task
$ARGUMENTS

## How to run the line

1. **Set up the run.** Create `.axiom/runs/<UTC-timestamp>-<short-slug>/`. Use this
   folder for every artifact below. Tell the user the run id.

2. **Station 1 — Reception.** Delegate to `axiom-intake`. Read its
   `00-intake.md`. **If it lists open questions that genuinely block good work,
   stop and ask the user before continuing** (Axiom 1). If the lane is *quick* and
   effort is *tiny*, you may run a compressed line (research-lite → assembly →
   inspection) — but say so explicitly (no hidden shortcuts, R4).

3. **Station 2 — Research.** Delegate to `axiom-research`. Do not proceed to design
   until facts with sources exist. Never let later stations build from memory.

4. **Station 3 — Design.** Delegate to `axiom-design`. Honour its chosen team size.
   Do not silently inflate it (R6).

5. **Station 4 — Assembly.** Delegate to `axiom-assembly` to produce
   `03-deliverable.*`.

6. **Station 5 — Coach.** Delegate to `axiom-coach`. If its verdict is
   `ONE-IMPROVEMENT-PASS`, send the deliverable back to `axiom-assembly` **once**
   with the coach's specific notes, then continue. (One pass, not a loop.)

7. **Station 6 — Inspection.** Delegate to `axiom-inspector`. **Critical for
   independence:** do NOT pass the inspector a summary of the work or argue the
   maker's case. Just point it at the run folder and let it read
   `03-deliverable.*` itself (R5). Read its `05-inspection.md` verdict.

   - **FIX-IT** → send back to `axiom-assembly` with the inspector's full findings,
     then run inspection **again from scratch**. Repeat until PASS or REJECT. Cap
     at 3 rounds; if still failing, treat as REJECT and report why.
   - **REJECT** → stop the line. Report the failure honestly to the user. Do not ship.
   - **PASS** → proceed to the gate.

8. **The Safety Gate.** Before shipping, verify with your own eyes:
   - `05-inspection.md` exists and was written by the inspector,
   - its verdict is PASS, and
   - the human principal has signed off (step 8b).
   If any is missing, the gate stays shut — do not ship. (The gate confirms an
   inspection happened and that a human approved; it does not vouch that either was
   thorough — that was step 6's job and the person's at sign-off.)

   **8b — Human sign-off (the last gate).** Every check so far was run by
   *same-family* models, which removes only part of a shared blind spot — so the
   final approval is the human's, not yours. STOP here and present the proof package
   for sign-off. Show the user:
   - overall confidence, and any claim still graded C / held back;
   - the open assumptions;
   - the honest limitation, in plain words: "independent checks were run by
     same-family models; a different-vendor model or your own eyes remain the last
     valuable gate";
   - 2–3 specific things worth a human spot-check (the load-bearing numbers, a cited
     source, anything irreversible).
   Do NOT deliver the final work until the user explicitly approves. Record their
   decision in `06-signoff.md`. If they request changes, send the deliverable back to
   `axiom-assembly`, then re-inspect from scratch (step 7) before returning here — do
   not ship a version the human did not approve.

9. **Station 7 — Shipping.** Only after sign-off, assemble the proof package. Write
   `manifest.md` in the run folder containing:
   - **Confidence list** — every claim, its grade (A/B/C/D), its source.
   - **Assumptions list** — everything assumed but not proven.
   - **Receipts index** — the list of artifacts (`00`…`06`) that prove each step ran.
   - **Verification limits & sign-off** — note that the checks were same-family
     models (shared blind spot only partly removed) and record the human sign-off
     from `06-signoff.md`.

   Then deliver to the user: the finished work plus a short cover note linking the
   manifest. State the overall confidence and any open assumptions plainly.

## Reporting style
After each station, give the user a one-line status (e.g. "✓ Research: 11 facts,
all sourced"). Keep the final delivery focused on the work and its proof — not on
narrating the machinery. If you ever cut a corner, say so; never fake a step.
