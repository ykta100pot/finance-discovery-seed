---
name: closeout
description: Session closeout that updates the worldview and writes a handoff note. Run at the end of every session after the task is complete. Designed to be executed by the primary agent or delegated to a sub-agent when the primary agent's context window is full.
---

## Context

Every session changes the worldview — even if only slightly. Closeout ensures those changes are captured before the session ends. Without it, the next session starts from a stale MEMORY.md and ARCHITECTURE.md, and the gap between what the repo says and what is actually true begins to widen.

Closeout is not a summary exercise. It is the mechanism that keeps the repository honest. The agent reviews what changed, updates the files that track the worldview, writes a handoff note for the next session, and commits.

## When to run

At the end of every session, after the scoped task is complete. No exceptions.

If the session was interrupted or the task is incomplete, closeout still runs. Partial progress is better than no record. Note what was attempted, what was achieved, and what remains.

## Inputs

- AGENTS.md (for contributor rules — do not modify unless a factual error is found)
- ARCHITECTURE.md (current state)
- MEMORY.md (current state)
- The work performed during this session
- The task document or scope description that initiated the session

## Steps

### 1. Review what changed

Before updating any file, inventory what actually happened in this session:

- What was the task?
- What was discovered or resolved?
- What artifacts were created, updated, or retired?
- Were any bottlenecks made explicit or resolved?
- Did any recurring patterns emerge that should become skills?
- Were there surprises — things that contradicted the prior worldview?

### 2. Update ARCHITECTURE.md

Compare the current ARCHITECTURE.md against what this session revealed.

- Does ARCHITECTURE.md still reflect the actual state of the system?
- Are there findings from this session that should be promoted into the architecture?
- Are confidence labels (Confirmed, Inferred, Open Question) still accurate?
- Has a bottleneck been resolved that changes the "Current Bottleneck" section?

Update what changed. Do not rewrite sections that were not affected by this session.

### 3. Update MEMORY.md

MEMORY.md is the repositioning layer. It should reflect the state of discovery *after* this session, not a transcript of what happened during it.

- Update the current status and discovery focus
- Move resolved items out of "Still Unclear" and into "Confirmed" or "Strong Inferences"
- Update the "Next Likely Bottleneck" section
- Update pointers to any new archival content
- Keep MEMORY.md lean — if it is growing beyond what an agent needs to reposition, flag that a defrag is due

Do not append session history to MEMORY.md. The handoff note carries the session narrative. MEMORY.md carries the current state.

### 4. Write the handoff note

Create a dated file with model provenance in the `debriefs/` folder (or repo root if no debriefs folder exists):

Filename: `debrief_YYYY-MM-DD_model-name.md`

Contents:
- What was the focus of this session
- What was discovered or resolved
- What bottlenecks were made explicit
- What artifacts were created or updated
- What the next session should address
- Which model and tool were used

The handoff note should be concise enough to read in under two minutes and specific enough that someone picking it up cold could understand the state of discovery.

### 5. Commit

Stage all changed files and commit with a clear message, e.g.:

`closeout: [brief description of what this session accomplished]`

## Outputs

- Updated ARCHITECTURE.md (if the session changed the worldview)
- Updated MEMORY.md (always — at minimum the session summary and next bottleneck)
- A dated handoff note in `debriefs/`
- A clean commit

## Quality signal

After closeout, a new agent reading only MEMORY.md should be able to orient to the current state of discovery and begin useful work within a few exchanges. If it cannot, MEMORY.md is not carrying the right context. That is the test.

A second check: the handoff note should be understandable by someone who has never seen this repo. If it requires prior context to parse, it is too terse.
