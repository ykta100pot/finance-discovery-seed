---
name: defrag
description: Periodic repo maintenance that keeps MEMORY.md lean and the archival layer coherent. Run at session end, on a scheduled basis, or when the repo feels noisy. Designed for sub-agent delegation so the primary agent's context window is not consumed by a full repo review.
---

## Context

As discovery progresses, the repository accumulates session exhaust: debriefs, markdown findings, updated architecture sections, skills, open questions. Some of this remains load-bearing. Some becomes redundant as understanding matures.

The repo operates on a two-layer memory architecture:

- **MEMORY.md** is the repositioning layer. It holds enough context for an agent to orient and begin useful work without loading the full repo. It is not a summary of everything. It is an index of what matters now.
- **The folder structure** (trusted_outputs/, processes/, metrics/, dimensions/, open_questions/, debriefs/) is the archival layer. This is where the full depth of discovery lives. The agent navigates into it as the user's questions demand, but does not load it all at once.

Defrag keeps both layers working. If MEMORY.md grows too large, the repositioning layer stops being efficient. If the archival folders accumulate redundant or superseded findings, the agent wastes tokens navigating noise. Defrag is the mechanism that keeps the repo lean and honest.

## When to run

- At the end of a session, triggered by the user indicating the session is over
- At a logical inflection point: end of a cycle, resolution of a major bottleneck, transition to a new scope
- On a scheduled background basis if the platform supports it
- When the agent notices that MEMORY.md has grown beyond what is needed to reposition, or that session debriefs are repeating findings already captured in ARCHITECTURE.md

## Inputs

- MEMORY.md (current state)
- ARCHITECTURE.md (current state)
- All session debriefs
- All folder-level markdown files (trusted_outputs/, processes/, metrics/, dimensions/, open_questions/)
- All SKILL.md files

## Steps

Defrag is a divide-and-conquer operation. Where the platform supports sub-agents, delegate sections of the repo to parallel reviewers. Where it does not, work through each section sequentially.

### 1. Assess MEMORY.md

Read MEMORY.md against the current state of ARCHITECTURE.md and recent debriefs.

- What in MEMORY.md is still load-bearing for repositioning?
- What has been superseded by findings now captured in ARCHITECTURE.md or in folder-level artifacts?
- What is missing that a new session would need to orient?
- Is the language still precise, or has it drifted toward vague summaries?

Propose updates: retire what is redundant, sharpen what is vague, add what is missing.

### 2. Assess ARCHITECTURE.md

Read ARCHITECTURE.md against the accumulated debriefs and folder-level findings.

- Does ARCHITECTURE.md still reflect the current state of discovery?
- Are there findings in debriefs that should have been promoted to ARCHITECTURE.md but were not?
- Are there sections of ARCHITECTURE.md that describe a state of understanding that has since been revised?
- Are confidence labels (Confirmed, Inferred, Open Question) still accurate?

Propose updates: promote unrecorded findings, correct stale sections, update confidence labels.

### 3. Assess the archival layer

Review each folder for coherence.

- Are there files that describe the same finding in different language?
- Are there files that have been superseded by newer discovery?
- Are open questions that have been resolved still sitting in open_questions/?
- Do folder-level READMEs still accurately describe what the folder contains?

Propose updates: merge duplicates, retire superseded files, move resolved questions, update READMEs.

### 4. Assess skills

Review each SKILL.md file.

- Does each skill still reflect how the process actually runs?
- Has a bottleneck been resolved that makes part of a skill unnecessary?
- Can related skills be combined into something cleaner?
- Are there recurring patterns visible across recent sessions that should become new skills?

Propose updates: revise, retire, or create skills as warranted.

### 5. Assess debriefs

Review the debrief archive.

- Which debriefs contain findings that have been fully absorbed into ARCHITECTURE.md and MEMORY.md?
- Which debriefs contain findings that have not yet been promoted?
- Is the debrief archive growing faster than it is being absorbed?

Propose: flag debriefs that are fully absorbed (they remain as history but the agent does not need to re-read them for repositioning). Promote any un-absorbed findings.

### 6. Produce a defrag report

Summarize what was reviewed, what was changed, and what the repo looks like after the pass. The report should be concise enough to read in under two minutes.

Include:
- What was retired or merged
- What was promoted from debriefs to ARCHITECTURE.md or MEMORY.md
- What new patterns or skills were identified
- Current state of MEMORY.md (how many tokens, whether it is lean enough to reposition efficiently)
- Recommendation for when the next defrag should run

## Outputs

- Updated MEMORY.md (or proposed updates in conversational mode)
- Updated ARCHITECTURE.md (or proposed updates)
- Updated folder-level artifacts as needed
- Defrag report saved as a dated file (e.g., `defrag_2026-04-02.md`)

## Quality signal

After defrag, a new agent reading only MEMORY.md should be able to orient to the current state of discovery and begin useful work within a few exchanges. If it cannot, MEMORY.md is not carrying the right context. That is the test.
