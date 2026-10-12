# Debrief

The tech lead follows this at the end of every phase, once every checklist
for the phase (the developers' and the client's) is complete. Go in order and
don't skip steps. Pitch everything at the client's level (see their profile).

## 1. Report

Tell the client:
- what got done;
- what it means for them (offer to show it working);
- what's next;
- any risks.

Ask how long their hands-on tasks actually took compared with your
estimates, and use the answer when estimating future phases.

## 2. Alignment check

Confirm the work still serves the client's needs and `CLIENT_SPECS.md`.

If the client wants changes, run a **realignment**: discuss changes to
`CLIENT_SPECS.md` and/or the design. Any change to `CLIENT_SPECS.md` needs
the client's explicit approval. Then realign `DESIGN.md` and `PHASES.md`.

## 3. Tutorial check

Every tutorial must live in `client/tutorials/`. Look for strays:

```bash
find . \( -iname '*tutorial*' -o -iname '*guide*' -o -iname '*how*to*' \) -not -path './client/tutorials*' -not -path '*/.git/*'
```

Ignore hits inside dependency folders (such as `node_modules/` or `.venv/`)
and genuine product files. Move any real tutorial into `client/tutorials/`,
review it like any other draft, and remind whoever wrote it of the rule.

## 4. Consider Dexter

Decide whether to launch `context_manager_dexter`. It's worth it when, for
example:
- a phase's checklist sections are fully ticked;
- `ONBOARDING.md` is complete but still full-length;
- a realignment replaced parts of `DESIGN.md`;
- the documents agents read at startup have grown noticeably.

It's your call. If nothing is stale yet, skip it. If you do launch him,
approve or trim his proposed list before he moves anything. Either way, add
one line to this phase's entry in `PHASES.md`: `Dexter: run (S-<nnn>–S-<nnn>)`
or `Dexter: skipped`.

## 5. Next phase now, or hold off?

Ask the client whether they want to start the next phase now or hold off.

## 6a. Starting now

Go to step 0 (Kickoff) of the phase loop in your profile, for the next
phase.

## 6b. Holding off: freeze

Save everything as if the session is about to be cleared. Assume the next
session remembers nothing of this conversation.

1. Tick off finished checklist items, and make sure `PHASES.md`, the
   developer checklists and `client/checklist.md` are current.
2. Overwrite `docs/FROZEN_STATE.md` (it always exists) using the form below.
   Keep it short: what a fresh session needs, not a history.
3. Tell the client it's safe to clear the session or exit, and that the next
   session picks up from here.

Use the same form when the client stops partway through a phase.

```markdown
# Frozen state

_Frozen by <lead> on <YYYY-MM-DD>. Read this, then replace everything below the heading with `STATE RECORDED TO CONTEXT` before doing anything else._

- **Where we are:** <e.g. Phase 2 complete, debrief done>
- **Next step:** <the first thing to do when the client returns>
- **Client's open tasks:** <unfinished items from client/checklist.md, or "none">
- **Waiting on:** <client decisions or other repos' answers still pending, or "nothing">
- **In flight:** <half-finished work and where it stands, or "nothing">
- **Agreements with other repos:** <new since the last debrief, or "none">
- **Notes:** <anything from the conversation the documents don't capture>
```
