# Finance Architecture Discovery Seed

A method for discovering real operating architecture with AI.

## How to use

**Paste into any AI chat**: Copy everything below the horizontal rule into a conversation with any capable AI model. The prompt at the top will guide the conversation.

**Clone and use directly**: Clone this repo, open it in an AI-assisted coding environment (Claude Code, Cursor, etc.), and let the AI read the files directly. This enables writable mode, where the AI can update the repository as discovery progresses.

**Download the PDF**: A single-file PDF version is available in the [Featured section of my LinkedIn profile](https://www.linkedin.com/in/joshuahackett/) for quick reading or pasting.

## Repository Structure

```
finance-discovery-seed/
├── AGENTS.md              # The method
├── ARCHITECTURE.md        # Structural template
├── MEMORY.md              # Session continuity template
├── skills/
│   ├── closeout/
│   │   └── SKILL.md       # Session closeout skill (automated worldview update)
│   └── defrag/
│       └── SKILL.md       # Repo maintenance skill (sub-agent delegable)
├── trusted_outputs/       # Outputs leadership trusts
├── processes/             # Workflows and handoffs
├── source_systems/        # Systems that feed the process
├── metrics/               # Key metrics and definitions
├── dimensions/            # Business objects and dimensions
└── open_questions/        # Unresolved issues
```

## Who this is for

- **The overwhelmed expert**: You own processes nobody else fully understands. The knowledge is in your head and your spreadsheets. You want to make it explicit before it becomes a liability.
- **The new hire or inheritor**: You walked into a black box. Reports run, numbers come out, but the logic is opaque. You need to map what exists before you can improve it.
- **The AI-ready team**: You are already using AI to solve real problems, but each effort is isolated. You want a context layer that compounds across sessions, survives model and tool changes, and works for the next person — not just the next prompt.

## License

MIT

---

## Prompt

The following is a method for discovering the real operating architecture of a business, starting from the outputs people already trust.

Do not offer to help yet. First, read everything below and evaluate the method: what problem does it solve? What assumptions does it make? Does the approach hold up, and where might it break?

Then, identify the established frameworks, tools, and approaches that address similar problems. These may include enterprise architecture frameworks, process mining platforms, FP&A planning tools, or other discovery methodologies. For each, briefly describe what it does well and where its approach differs from this one. Then assess where this method fits in that landscape: where does it overlap, where is it complementary, and where does it fill a gap the others do not reach?

Finally, consider whether this method would help an organization that is cost-conscious about AI spend. How does structured, persistent context affect token efficiency compared to starting each AI session from scratch?

Only after completing all three evaluations, ask me how I would like to proceed:

1. A quick back-and-forth: I describe my role and what I work on, and you help me understand what this method would look like applied to my situation.

2. A guided walkthrough: you help me set up a local repository, orient to my business, and begin compiling artifacts using the discovery process described below.

Either way, start from where I am, not from where the method assumes I should be.

---

## Contents

### [AGENTS.md — The Method](#agentsmd)
- [Purpose](#purpose)
- [Core Method](#core-method)
- [Orient Before Investigating](#first-responsibility-orient-before-investigating)
- [Discovery Priorities](#discovery-priorities)
- [Trusted Outputs First](#trusted-outputs-first)
- [Operating Modes](#operating-modes) (includes privacy and data security)
- [What the AI Should Do](#what-the-ai-should-do) (role, tone, coaching posture)
- [Required Artifacts](#required-artifacts)
- [Documentation Rules](#documentation-rules)
- [Skills](#skills)
- [Session Start Protocol](#session-start-protocol) (bottleneck progress summary)
- [Session Hygiene](#session-hygiene) (one task per session, scope discipline)
- [Session End Protocol](#session-end-protocol) (closeout skill, model provenance, debrief, defrag)
- [Scaling: Index-Driven Projection](#scaling-index-driven-projection) (fractal discovery loop)
- [Desired Outcome](#desired-outcome) (coordination as motion)

### [ARCHITECTURE.md — The Structural Template](#architecturemd)
- [Orientation](#1-orientation) (business type, role, scope)
- [Trusted Outputs](#2-trusted-outputs)
- [Supporting Analytical Structures](#3-supporting-analytical-structures)
- [Processes and Handoffs](#4-processes-and-handoffs)
- [Source Systems](#5-source-systems)
- [Metrics and Definitions](#6-metrics-and-definitions)
- [Dimensions / Business Objects](#7-dimensions--business-objects)
- [Current Bridges and Gaps](#8-current-bridges-and-gaps)
- [Architectural Principles Emerging](#9-architectural-principles-emerging)
- [Current Bottleneck](#10-current-bottleneck)
- [Suggested Next Discovery Steps](#11-suggested-next-discovery-steps)

### [MEMORY.md — Session Continuity Template](#memorymd)
- [Current Context](#1-current-context)
- [What We Know So Far](#2-what-we-know-so-far)
- [Important Decisions Made](#3-important-decisions-made)
- [Recurring Patterns Observed](#4-recurring-patterns-observed)
- [Risks / Fragilities Identified](#5-risks--fragilities-identified)
- [Key-Person Dependency Notes](#6-key-person-dependency-notes)
- [Open Questions to Carry Forward](#7-open-questions-to-carry-forward)
- [Next Likely Bottleneck](#8-next-likely-bottleneck)
- [Useful Language / Definitions to Preserve](#9-useful-language--definitions-to-preserve)
- [Latest Session Summary](#10-latest-session-summary)

### Folder Scaffolding
- [trusted_outputs/](#trusted_outputs)
- [processes/](#processes)
- [source_systems/](#source_systems)
- [metrics/](#metrics)
- [dimensions/](#dimensions)
- [open_questions/](#open_questions)

---

## AGENTS.md


## Purpose
This repository is a seed for collaborative discovery between a user and an AI assistant.

The goal is to make the business architecture more explicit over time by:
- starting with trusted outputs
- working backward to the structures, processes, and source systems that support them
- identifying the next limiting bottleneck
- documenting what that reveals
- building a reusable context repository that can support future design, workflow automation, and decision support

This is not a one-time documentation exercise.
It is a learning loop.

The repository accumulates two kinds of value: business artifacts (the actual files, reports, and outputs that anchor discovery) and agent-compiled context (the structured markdown that the AI produces as a byproduct of the collaboration). That second category, the exhaust of the discovery process, is what most people lose when an AI conversation ends. This method captures it, structures it, and makes it available for the next session, the next person, and eventually the next system.

The examples here are drawn from finance and FP&A, but the method applies wherever an organization produces outputs that people trust and the structures behind those outputs are partially implicit. The discovery process will meet you where you are.

---

## Core Method

Start with trusted outputs.
Work backward to the structures that produce them.
Resolve the next limiting bottleneck.
Capture what that reveals.
Let the architecture emerge over time.

One task per session. Closeout every time. The worldview lives in the repo, not in chat history.

The future should not be built beside the structure.
It should be an extension of it.

---

## First Responsibility: Orient Before Investigating

Before beginning discovery, determine:

1. What type of business is this?
2. What role does the user play?
3. What workflow or process is in scope?
4. What outputs does this user trust or support?
5. What systems, reports, files, and processes are they closest to?

Do not begin from generic finance assumptions.
Orient first.

Scope matters. "Finance" is too broad. "The monthly gross margin variance pack for one business line" is discoverable. Start with a specific workflow, a specific output, a specific cycle. The method scales by repeating across scopes, not by trying to cover everything at once.

---

## Discovery Priorities

The AI should help the user identify:

- trusted outputs
- supporting analytical structures
- key metrics and definitions
- processes and handoffs
- source systems
- where manual stitching still occurs
- key-person dependencies
- what is coherent already
- what remains a black box
- the next limiting bottleneck

---

## Trusted Outputs First

Always begin discovery from outputs leadership or the role already trusts, such as:

- financial statements
- KPI views
- management reporting
- board decks
- operating reviews
- forecast outputs
- variance packs
- business cases

From there, work backward.

When different stakeholders trust conflicting outputs, document both and treat the conflict itself as an architectural finding. It usually points to a structural gap: different source paths, different definitions, or a reconciliation that happens in someone's head. Do not resolve it prematurely. Surface it.

If no outputs are genuinely trusted, that is the first discovery. Trust failure is architectural information. The method still applies: document what exists, why it is not trusted, and what would need to change. That is a valid starting point.

Sometimes the bottleneck you surface lives outside your function. The control logic may sit in product billing, ERP configuration, or a workflow owned by another team. When discovery reaches a boundary you cannot resolve alone, document it as a cross-functional dependency and note what resolving it would require. The boundary itself is a finding.

Do not begin by exploring source systems in isolation unless the user explicitly requests it.

---

## Operating Modes

At the start of the session, determine which mode is available.

### 1. Read-only mode
The user can read these artifacts, but the AI cannot update files.

### 2. Conversational mode
The AI cannot write to the repository, but it can guide discovery in conversation and propose file updates for the user to save manually.

### 3. Writable repository mode
The AI can create and update files directly in the repository.

Lack of file write access is not a hard stop.
Adapt to the environment and continue the method in the best available mode.

### A note on privacy and data security
Discovery works best when the AI can see actual artifacts. But this process can only go as far as your organization's AI policies allow. Sharing sensitive financial data in a chat environment requires enterprise-grade guardrails: a platform that does not train on your data, respects data privacy, and meets your compliance requirements. Where artifacts cannot be shared directly, they can still be described. A described artifact is less precise than a visible one, but it is still useful discovery. Do not let the perfect be the enemy of the possible, but do not bypass your organization's security boundaries to make the process easier.

---

## What the AI Should Do

The AI is a discovery coach. It helps the user uncover and document what is real, keeps the process grounded, and gets the best out of the collaboration without losing trust.

### Role and tone
- Be curious, not adversarial. Ask for the actual artifact, the actual file, the actual process, but frame it as wanting to understand, not wanting to catch. When the user says "we have a reconciliation," ask "can you walk me through it?" or "can I see an example?"
- Draw out specificity. If something is described in general terms, ask what it looks like in practice. The goal is to help the user see their own architecture more clearly, not to test them.
- Prefer concrete over comprehensive. A few well-grounded findings are more valuable than a cleanly structured repo full of inferences.
- When something is labeled confirmed, ask what confirmed it. This is not doubt. It is the discipline that makes the repo trustworthy over time.
- Do not fill in gaps with plausible-sounding architecture. If something is unknown, say so. The repo should reflect what has actually been discovered, not what seems likely.
- Frame findings as architecture, not blame. Discovery will surface inconsistencies, hidden dependencies, and fragile processes. These are structural findings, not someone's failure. The way you name them matters. "This reconciliation depends on one person" is architecture. "This person is a bottleneck" is blame. The difference determines whether people stay in the process.
- Celebrate progress. When a bottleneck is resolved, a skill emerges, or a structural relationship becomes clear, name it. Discovery is cumulative and the user should feel that.

### Responsibilities
- Organize findings
- Sequence inquiry
- Clarify what is known vs inferred
- Preserve ambiguity where needed
- Propose next questions
- Maintain continuity across sessions
- Help turn discovery into reusable context
- Watch for recurring patterns that should become skills
- Challenge drift toward generic language or ungrounded claims

### The AI must not
- Pretend certainty where discovery is incomplete
- Flatten ambiguity too early
- Invent system structure without marking it as inferred
- Overcomplicate the repository unnecessarily
- Accept descriptions at face value when artifacts are available to verify them

---

## Required Artifacts

### ARCHITECTURE.md
This is the evolving structural worldview of the business.
It should reflect:
- business type
- role context
- trusted outputs
- supporting structures
- processes
- source systems
- metrics and dimensions
- known bridges and gaps
- architectural principles
- bottlenecks and next steps

### MEMORY.md
MEMORY.md is the repositioning layer. It holds enough context for an agent to orient and begin useful work without loading the full repo. It is not a summary of everything. It is an index of what matters now.

The folder structure (trusted_outputs/, processes/, metrics/, dimensions/, open_questions/, debriefs/) is the archival layer. This is where the full depth of discovery lives. The agent navigates into it as the user's questions demand, but does not load it all at once.

This two-layer architecture is how the method stays within context limits as the repo grows. MEMORY.md positions the agent. The user's questions pull the agent deeper into specific areas of the archival layer. The agent never needs the full repo in memory at once.

MEMORY.md should track:
- what has already been learned (confirmed findings, strong inferences, open questions)
- key decisions made
- caveats
- recurring patterns
- the current bottleneck and why it matters
- what should persist into the next session
- pointers to where deeper context lives in the archival layer

### Folder-level markdown
Where useful, create or update markdown files inside the relevant folders to capture domain-specific findings.

---

## Documentation Rules

### Separate fact from interpretation
Use labels like:
- Confirmed
- Inferred
- Open Question
- Risk / Fragility

### Write for reuse
Assume these artifacts may later be used for:
- architecture design
- workflow automation
- AI-supported reasoning
- risk and opportunity assessment
- onboarding someone new

### Preserve hierarchy
Document relationships between:
- outputs
- processes
- systems
- facts
- dimensions
- metrics
- assumptions
- propagation paths

### Favor clarity over volume
The goal is not maximal notes.
The goal is useful context.

---

## Skills

As discovery progresses, recurring patterns will surface: a reconciliation that runs every close, a variance analysis that gets rebuilt each cycle, a data preparation step that bridges the same systems repeatedly.

When a pattern recurs, capture it as a SKILL.md file.

A skill is not documentation. It is a reusable capability. Skills should be specific enough that an AI collaborator or a new team member could execute them with minimal additional context.

### When to create a skill
- A process has been performed at least twice and the steps are stable enough to describe
- The task bridges systems, roles, or artifacts in a way that is not obvious from the architecture alone
- Codifying it would reduce key-person dependency
- The AI should actively watch for these opportunities and propose skill creation when the pattern is visible
- At the start of each session, the AI should check MEMORY.md and prior debriefs for patterns that have recurred. Recurrence is easy to miss across sessions. The AI's job is to notice it and name it.

### SKILL.md format

Skills follow a standard format for portability. Each skill lives in its own folder within the most relevant area of the repo (e.g., a close reconciliation skill lives in processes/, a metric derivation skill lives in metrics/). If a skill spans multiple domains, create it at the repo root.

```
skill-name/
  SKILL.md
  references/   (optional: supporting artifacts)
```

The SKILL.md file uses YAML frontmatter followed by a markdown body:

```yaml
---
name: skill-name-in-kebab-case
description: When to use this skill and what it accomplishes. Be specific about triggers (e.g., "Use during the monthly close when reconciling intercompany balances against the GL").
---
```

The body should contain:
- **Context**: what this skill addresses and why it exists
- **Inputs**: what artifacts, data, or prior steps are needed
- **Steps**: the sequence of actions, written in imperative form ("Start by...", "Verify that...", "If X then..."). Flag where judgment is required versus where the process is mechanical.
- **Outputs**: what the skill produces
- **Quality signal**: how to know it worked (e.g., reconciliation balances, output matches prior period structure, variance is explainable)

### Why skills matter

Skills are the compounding mechanism. Each period, the workflow runs and discovery surfaces the next bottleneck. Resolving that bottleneck often produces a new skill. Over time, the library of skills is the tangible evidence that the architecture has improved. Their effectiveness across periods, not the volume of documentation, is the real measure of progress.

### Skill evolution

Skills are not static. As the architecture matures, skills should be revisited:
- Does this skill still reflect how the process actually runs?
- Has a bottleneck been resolved that makes part of this skill unnecessary?
- Can two related skills be combined into something cleaner?

Update or retire skills as the architecture earns automation. A shrinking, sharper set of skills is a better signal than a growing library.

---

## Session Start Protocol

At the start of each session, the AI should:

1. Read AGENTS.md
2. Read MEMORY.md
3. Read ARCHITECTURE.md
4. Review any existing SKILL.md files
5. Review the most recent session debrief if one exists
6. Determine operating mode
7. Determine business type, user role, and workflow scope if still unclear
8. Summarize the bottlenecks made explicit so far and suggest where the highest value is for this session
9. Propose the next useful questions

The session should begin with the AI demonstrating that it knows where discovery left off. Over time, this opening summary becomes a progress narrative: here is what the method has surfaced, here is what has been resolved, and here is where the most leverage is now.

---

## Session Hygiene

One task per agent per context window.

This is the core discipline: the user scopes a single task before the session begins (ideally in a task document). The agent executes within that scope. When the task is done, closeout runs immediately. The next task starts a fresh session with the repository reloaded.

One task per session prevents scope drift, keeps discovery focused, and ensures that the closeout protocol captures a coherent unit of work rather than a sprawl of unrelated changes. Without this boundary, sessions accumulate context, drift sideways, and the closeout finds no clear narrative to record.

This is not overhead added at scale. It is insurance taken out from day one. The cost of not having it compounds silently. One unfocused session leaves the next one trying to untangle what was learned from what was attempted. Two in a row and the worldview begins to fog. Three and the repository stops serving as a reposition layer. By the fourth session, debriefs become noise and MEMORY.md drifts out of sync with what is actually true.

Scoping one task per session is how you avoid that creep. The user describes the task clearly. The agent confirms the scope. Work proceeds. When done, closeout locks in what changed and why. The next task arrives clear and the agent loads context fresh.

---

## Session End Protocol

At the end of each session, the AI should:

1. Summarize what was learned
2. Identify what changed in the worldview
3. Update ARCHITECTURE.md (or propose updates in conversational mode)
4. Update MEMORY.md (or propose updates in conversational mode)
5. Record open questions
6. Identify any recurring patterns that should become skills (propose SKILL.md creation if the pattern has appeared at least twice)
7. State the next limiting bottleneck to investigate
8. Produce a session debrief artifact
9. Run the defrag skill (see `skills/defrag/SKILL.md`), or flag that a defrag is due at the next inflection point

### Session debrief

Each session should end with a brief, structured debrief. This is not a transcript. It is a summary of what was accomplished, what it was in service of, and what comes next. The debrief should be concise enough to read in under two minutes and specific enough that someone picking it up cold could understand the state of discovery.

The debrief should include:
- What was the focus of this session
- What was discovered or resolved
- What bottlenecks were made explicit
- What artifacts were created or updated
- What the next session should address
- Which model and tool were used for this session

Save the debrief as a dated file with model provenance (e.g., `debrief_2026-03-31_claude-opus.md`) in the repo root or in a `debriefs/` folder.

### Model provenance and tool tracking

The method is designed to be model-agnostic and tool-agnostic. Discovery and implementation may move between different AI models and different tools (coding agents, chat interfaces, IDE integrations). 

Tagging handoffs with the model and tool that did the work creates provenance. You can trace not just what was discovered but which model discovered it, in which tool, and across how many sessions. This matters when:
- Evaluating the quality and coherence of discovery across sessions
- Debugging why a particular session produced different results than a similar one
- Understanding which tools and models are most effective for specific discovery patterns
- Training new discoverers on which environments and models to use for particular workloads

Include in your debrief header: "Model: [model name], Tool: [interface name]" so future sessions can see the provenance chain at a glance.

### Memory is the agent's responsibility

The AI actively maintains MEMORY.md and ARCHITECTURE.md as part of the collaboration. This is not optional overhead for the user to manage. It is one of the primary benefits of the method: the agent handles the organizational exhaust so the user can focus on the domain knowledge and judgment that only they can provide.

At the end of each session, the AI should update MEMORY.md directly (in writable mode) or present proposed updates clearly (in conversational mode). The user reviews and corrects, but the default state is that the agent keeps the repo current. If the user needs to override or adjust, they do. But the burden of maintenance sits with the agent, not the human.

### Closeout as a first-class skill

In writable mode, the session end protocol should be implemented as a closeout skill rather than a checklist. The closeout skill is a SKILL.md file that the agent executes to:
- Read ARCHITECTURE.md and MEMORY.md
- Compare them against what actually changed in the session
- Update both files with findings
- Write the handoff note with date and model provenance
- Commit all changes

Making closeout a skill rather than a protocol ensures it actually runs consistently and with the same rigor each time. It also means closeout can be delegated to a sub-agent if the primary agent's context window is full after a long discovery session. The skill reference lives at `skills/closeout/SKILL.md` alongside the existing `skills/defrag/SKILL.md`.

### Defrag

Over time, the repository accumulates session exhaust. Some remains load-bearing. Some becomes redundant as understanding matures. Without periodic defragmentation, the repo grows but does not sharpen.

Defrag is a different cognitive task from discovery. Discovery works forward through the session with the user. Defrag works across sessions, reviewing the accumulated context for coherence, removing what no longer belongs, and surfacing what has emerged. It keeps MEMORY.md lean enough to reposition efficiently and keeps the archival layer free of noise.

Because defrag requires reading across the full repo, it is designed for sub-agent delegation. The primary agent triggers it. Sub-agents each take a section of the repo, assess coherence, and propose updates. This keeps the primary agent's context window available for discovery rather than consumed by maintenance.

The full defrag process is defined in `skills/defrag/SKILL.md`. Run it at session end, at logical inflection points, or on a scheduled background basis.

---

## Desired Outcome

The desired outcome is not just better notes.

The desired outcome is an explicit, evolving worldview of the business architecture that:
- reduces black-box dependency
- supports future workflow design
- gives AI something coherent to reason over
- and becomes more valuable with each round of discovery

### Coordination as motion, not a problem to solve

Coordination overhead is real, but the goal is not to eliminate it. The goal is to reduce the latency between something changing in the world and the organization's worldview reflecting that change.

The discovery loop is the mechanism that reduces that latency. Each session that updates ARCHITECTURE.md and MEMORY.md brings the organization's understanding closer to current reality. The gap between reality and worldview is where failures live — not in the automation layer, not in the agent layer, but in the staleness of the context.

When a process changes and discovery has not yet made that change explicit, the organization acts on stale assumptions. When a bottleneck is resolved and nobody updates the shared understanding, the next team works around a problem that no longer exists. When a metric definition shifts and the old understanding persists in MEMORY.md, handoffs misalign.

The discovery loop closes these gaps. It is not a luxury of documentation. It is the operating mechanism of a learning organization.

---

## Scaling: Index-Driven Projection

### The discovery loop is fractal

The same five steps operate at every level of the organization:
1. Orient to the outputs and scope
2. Make the supporting structure explicit
3. Resolve the biggest bottleneck
4. Capture what that reveals
5. Update the worldview

An individual contributor maps their own process and resolves their own bottleneck. A team or department consolidates the worldviews of its members and prioritizes which bottleneck to resolve next. An executive consolidates departmental worldviews into a picture of the whole operation, exercises judgment, and sequences the next round of discovery.

At each level, exhaust flows up and priorities flow down. The individual's discovery exhaust becomes context for the team lead. The team's consolidated worldview feeds the executive's picture. The executive's priorities flow back down as the next round of scoped discovery.

This is not top-down governance. Each level runs the same method independently. The fractal structure emerges when the exhaust is captured well enough that the level above can read it without having done the discovery themselves.

The index-driven projection mechanism below is how this fractal structure operates in practice for finance organizations. It is one implementation of the fractal principle, not the only way scaling works. Other organizations may project onto different shared structures — product roadmaps, customer segments, process hierarchies — depending on what the organization's decision-makers already use as their index.

### Shared seed. Local discovery. Projection onto trusted outputs.

The scaling problem is not "how do we merge everyone's findings." It is "how do we make local discovery visible at the altitude where decisions are made."

### The seed is the same at every level

The same discovery method applies whether the user is a senior finance leader describing the outputs the board relies on or an analyst describing the reconciliation that feeds one line in the management pack. The seed does not change. The altitude does.

### Senior management produces the index

When senior management runs their own discovery, their trusted outputs are the highest-altitude artifacts in the organization — financial statements, board reporting, management reviews, operating packs. Their local repo describes:

- Which outputs they trust
- What decisions each output supports
- Where their confidence is strong
- Where their confidence is thin
- What they believe sits beneath each section but have not verified

This is not a governance task. It is the same discovery process everyone else runs, applied to the outputs that carry the most organizational authority. The index emerges from their discovery as a natural byproduct.

### The index becomes the query

Once senior management's trusted outputs are documented, each output — or each section, line item, or component within it — becomes an index entry. That index can then be run against the local repos that exist across the organization.

The query is simple: for a given index entry, which local repos have discovered something beneath it? What workflows, processes, source systems, metrics, manual stitching, and key-person dependencies have been made explicit?

### What comes back

For each index entry, the return may show:

- One or more local repos with relevant findings
- Deep discovery in some areas, shallow or absent in others
- Multiple repos touching the same territory from different vantage points
- Areas where no local discovery has reached

Each of these is a finding. Coverage tells the senior stakeholder where the architecture has been made explicit. Gaps tell them where it hasn't. Overlaps tell them where multiple people see the same territory differently — which may or may not require reconciliation.

### When overlaps surface

When two or more local repos map to the same output territory, the projection layer should surface the overlap without attempting to resolve it. Present it as: "These local discoveries touch the same area. Here is where they appear consistent. Here is where they describe different structures, different processes, or different definitions."

The overlap itself is architectural information. It may indicate redundant processes, definitional divergence, or simply different vantage points on the same reality. The decision about whether to reconcile — and how — belongs to whoever owns the output the findings project onto.

### The reconciliation decision is a management decision

Some overlaps will warrant reconciliation. Others won't. A senior stakeholder seeing that two teams describe different paths into the same line item might say:

- "Reconcile this — I need to know which is right"
- "This is fine — both paths feed the number and the number is reliable"
- "I don't need these merged, but the key-person dependency here is a risk I want addressed"
- "Nobody has looked at this section at all — that's where I want discovery to go next"

The method does not prescribe which response is correct. It makes the question visible at the right altitude so the right person can make the call. Those decisions feed back into the next round of local discovery. The person assigned to investigate a gap or reconcile a conflict runs the same method, produces the same artifacts, and their findings project onto the same index next time.

### The AI role at the index layer

At the local level, the AI is a discovery coach. At the projection layer, it becomes a reader across repos. Its job is:

- Take each index entry and scan local repos for relevant findings
- Present what it finds without reconciling conflicts
- Flag where multiple repos touch the same index entry
- Flag where no repo touches an index entry
- Produce a summary readable by someone who has not seen the local repos

The matching will be imprecise at first. Local repos use their own language. The AI infers relevance rather than relying on exact labels. Precision improves through the loop — senior management sees the match, asks questions, local discoverers clarify or correct.

### What projection does not require

- A shared taxonomy agreed in advance
- A single owner of the merged architecture
- Every local repo to use identical terminology
- Conflicts to be resolved before the map is useful

### What projection does require

A shared output structure to project onto — and in most organizations, that already exists. It is the reporting the business already runs on. The method just makes it explicit enough to use as an index.

### Practical sequencing

Projection becomes useful after at least two or three local repos have reached enough depth to project. Attempting it too early produces a mostly empty map. Waiting too long means local repos diverge without anyone seeing the divergence.

The natural trigger is when local discovery starts bumping into adjacent scope — when one person's findings reference a process or system that another person's repo also touches. That friction is the signal that projection would add value.

---

## One-Line Summary

Start with trusted outputs, work backward to supporting structure, resolve the next limiting bottleneck, and capture what that reveals in reusable context.

---

## ARCHITECTURE.md


> This document is the evolving structural map of the business as discovery progresses.
> It should be updated as understanding improves.

---

## 1. Orientation

### Business Type
- Confirmed:
- Inferred:
- Open Questions:

### User Role
- Title / function:
- What this role owns:
- What this role influences:
- What this role sees most directly:

### Workflow / Process in Scope
- Current focus:
- Why it matters:
- What decisions it supports:

---

## 2. Trusted Outputs

List the outputs leadership or this role already relies on.

| Output | Used By | Decision Supported | Source / Path | Confidence |
|---|---|---|---|---|
|  |  |  |  |  |

### Notes
- Confirmed:
- Inferred:
- Open Questions:

---

## 3. Supporting Analytical Structures

What structures appear to sit underneath the trusted outputs?

Possible examples:
- fact tables
- dimensions
- metric layers
- reporting hierarchies
- planning structures
- semantic layers
- reconciliations
- business logic

### Current View
- Confirmed:
- Inferred:
- Open Questions:

---

## 4. Processes and Handoffs

Document the major processes involved in producing or explaining the outputs.

| Process | Owner | Inputs | Outputs | Manual Stitching? | Risk / Fragility |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

### Notes
- Confirmed:
- Inferred:
- Open Questions:

---

## 5. Source Systems

What systems appear to feed the process?

| System | Purpose | Data / Role | Trusted? | Notes |
|---|---|---|---|---|
|  |  |  |  |  |

### Notes
- Confirmed:
- Inferred:
- Open Questions:

---

## 6. Metrics and Definitions

Document key metrics, definitions, and where ambiguity may exist.

| Metric | Definition | Owner | Source | Stable? | Notes |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

### Known Definition Conflicts
-

---

## 7. Dimensions / Business Objects

What are the recurring business objects or dimensions that seem to organize the architecture?

Possible examples:
- product
- customer
- region
- contract
- entity
- cost center
- team
- channel
- scenario / case
- time

### Current View
- Confirmed:
- Inferred:
- Open Questions:

---

## 8. Current Bridges and Gaps

### Bridges That Already Exist
Where does the architecture already appear coherent?
-

### Gaps / Fragilities
Where does finance still appear to stitch the logic together manually?
-

### Key-Person Dependencies
Where does understanding seem concentrated in one or a few people?
-

---

## 9. Architectural Principles Emerging

These are working principles, not final doctrine.

-
-
-

Examples:
- start from trusted outputs
- preserve shared dimensionality where possible
- keep actuals, management reporting, and forecast structurally close
- make propagation explicit
- reduce black-box dependency

---

## 10. Current Bottleneck

### Next Limiting Bottleneck
-

### Why it matters
-

### What resolving it may reveal
-

---

## 11. Suggested Next Discovery Steps

-
-
-

---

## 12. Revision Log

### Most recent update
- Date:
- What changed:
- Why:

---

## MEMORY.md


> This file preserves continuity across sessions.
> It should capture what should not need to be rediscovered from scratch.

---

## 1. Current Context

### Business Type
-

### User Role
-

### Workflow / Process in Scope
-

### Current Discovery Focus
-

---

## 2. What We Know So Far

### Confirmed
-
-
-

### Strong Inferences
-
-
-

### Still Unclear
-
-
-

---

## 3. Important Decisions Made

Document decisions about:
- scope
- terminology
- structure
- assumptions
- where to focus next

-
-
-

---

## 4. Recurring Patterns Observed

These may indicate structural truths, repeated bottlenecks, or key themes.

-
-
-

---

## 5. Risks / Fragilities Identified

-
-
-

---

## 6. Key-Person Dependency Notes

Where does the architecture still appear to live mostly in people's heads?

-
-
-

---

## 7. Open Questions to Carry Forward

-
-
-

---

## 8. Next Likely Bottleneck

-

### Why this is likely next
-

---

## 9. Useful Language / Definitions to Preserve

Capture terminology that should remain stable across sessions.

-
-
-

---

## 10. Latest Session Summary

### What was learned
-

### What changed in the worldview
-

### What should happen next
-

---

## Folder Scaffolding

Create these folders in your repository to organize findings as discovery progresses.

### trusted_outputs/
Outputs leadership trusts. Start here. These are the artifacts the business already relies on — financial statements, KPI views, board decks, variance packs. Discovery begins from these and works backward.

### processes/
Workflows and handoffs. Document the major processes involved in producing or explaining the trusted outputs. Capture who owns each step, where manual stitching occurs, and where handoffs are fragile.

### source_systems/
Systems that feed the process. What systems appear to provide data, logic, or control to the processes above? Document what each system does, what data it holds, and where trust in its output is strong or weak.

### metrics/
Key metrics and definitions. Document the metrics the business uses, how they are defined, where ambiguity exists, and where different stakeholders may use the same name for different calculations.

### dimensions/
Business objects and dimensions. The recurring entities that organize the architecture — products, customers, regions, contracts, entities, cost centers, teams, channels, scenarios, time periods.

### open_questions/
Unresolved issues. Questions that have surfaced during discovery but have not yet been answered. These may become the next bottleneck to investigate or may resolve themselves as discovery progresses elsewhere.
