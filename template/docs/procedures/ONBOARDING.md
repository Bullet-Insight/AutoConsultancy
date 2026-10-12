# Onboarding: {{Project}}

<!-- Wren fills in the double-brace fields during the consultation; everything else stays as is. If any are still unfilled, the consultation isn't finished. -->

_Status: in progress_   ← the tech lead changes this to "complete (<date>)"

Client: {{name}} · Tech lead: {{Lead}} · Involvement: {{level}}

1. **Specs consultation.** {{Lead}} reads `client/client_{{slug}}.md` and
   works with the client to write `docs/high_level/CLIENT_SPECS.md`.
2. **Client approves CLIENT_SPECS.md.** Required. If not approved, go back
   to step 1.
3. **Design and plan.** {{Lead}} writes `DESIGN.md` (system diagrams, repo
   structure, style guide) and `PHASES.md` (a high-level overview of every
   phase, and who is involved in each). First, agree two limits with the
   client and record them at the top of `PHASES.md`: developers per phase
   (default {{developers per phase}}) and the client's hands-on hours per
   phase (default {{client hours per phase}}). Every phase must fit both
   limits and the client's Claude {{plan}} plan.
4. **Client review of the design.** {{Hands-off: optional, with a
   plain-language summary. | Checkpoint: plain-language summary, approval
   requested. | Collaborative: full review of both documents.}} If not
   approved, go back to step 3.
5. **Assemble the team.** {{Lead}} writes developer profiles in
   `.claude/agents/`, starts each developer's checklist in
   `docs/checklists/<role>_<name>.md`, writes the tutorial template in
   `client/tutorials/README.md` to match the client's tutorial depth, and
   initializes the git repository in `build/`.
6. **Client ready?** Confirm that any accounts or keys needed for Phase 1
   exist.
7. **Launch Phase 1.** Enter the phase loop defined in the lead's profile.

If the client edits `CLIENT_SPECS.md` at any point, `DESIGN.md` and
`PHASES.md` must be realigned before work continues.
