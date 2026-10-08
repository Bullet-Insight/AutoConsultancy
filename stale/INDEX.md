# stale

Dexter's archive of legacy context: content moved out of the documents agents
read at startup, kept in case it's needed later. Only `context_manager_dexter`
may open this folder. A hook (`.claude/hooks/guard_stale.sh`) blocks every
other agent.

Each archived item lives in `S-<nnn>_<slug>.md`, and its original location
holds a one-line placeholder pointing to the ID.

| ID | Archived | From | What it was | Status |
|---|---|---|---|---|
