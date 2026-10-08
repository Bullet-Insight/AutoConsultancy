#!/bin/sh
# Keeps every agent except Dexter (context_manager_dexter) out of stale/.
# Runs as a PreToolUse hook (see .claude/settings.json). Claude Code passes the
# tool call as JSON on stdin; exit code 2 blocks the call and shows stderr.

input=$(cat)
root=${CLAUDE_PROJECT_DIR:-$PWD}

# Dexter is the only agent allowed in.
if printf '%s' "$input" | grep -Eq '"agent_type"[[:space:]]*:[[:space:]]*"context_manager_dexter"'; then
  exit 0
fi

# Block any call that names the project's stale/ folder, by absolute path
# (<project>/stale) or relative path (stale/, ./stale, ../stale).
if printf '%s' "$input" | grep -Fq "$root/stale" ||
   printf '%s' "$input" | grep -Eq '(^|["[:space:]=(])(\.\.?/)*stale(/|"|$)'; then
  echo "stale/ is Dexter's archive, and only context_manager_dexter may open it. If you need archived content, ask the tech lead to have Dexter restore it." >&2
  exit 2
fi

exit 0
