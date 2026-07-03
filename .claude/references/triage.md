# Procedure — Triage (Reception)

> Run by the **orchestrator** at the start of every `/axiom` run (there is no separate
> intake subagent in the slim line — sorting a job needs no isolated context, so the
> orchestrator does it inline). Sort the job before any work happens, so nothing is
> over- or under-built. This step does NOT do the task; it produces a triage decision.

## Answer three questions, in writing

1. **Full process, or quick lane?**
   Big, risky, or multi-part jobs get the full careful pipeline. Tiny, already-clear
   jobs get a fast lane. *When unsure, choose the careful path.*

2. **What effort level?** Tag exactly one: `tiny` / `normal` / `full` / `high-stakes`.
   - tiny — quick, clear, low-risk
   - normal — ordinary task
   - full — important or multi-part
   - high-stakes — risky, irreversible, or high-visibility

3. **What does "done fully" mean here?**
   State the deliverable concretely (what kind of text, roughly how long, for whom, in
   what voice/register). State explicitly whether every step will run now, or some
   earlier work is being reused — and why. No one should be misled.

Also capture **open questions** — anything genuinely ambiguous that should be clarified
with the user before research begins. List them; do not invent answers. If any genuinely
block good work, the orchestrator stops and asks the user before continuing (Axiom 1).

## Rules to honour

- Axiom 1: understand the *real* ask first. Don't smuggle in scope nobody asked for.
- Axiom 8: name the scope precisely; later changes must be announced.
- Avoid R2/R3: don't pretend a task is smaller or larger than it is to look efficient.

## Output — `00-intake.md`

```
# Intake — <task title>
- Lane: full process | quick lane
- Effort: tiny | normal | full | high-stakes
- Deliverable: <concrete description>
- Audience & register: <…>
- Running every step now? yes | reusing <X> because <why>
- Open questions: <list, or "none">
- Agreed scope (one paragraph): <…>
```

Keep it short and decisive.
