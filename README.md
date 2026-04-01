# Finance Architecture Discovery Seed

A method for discovering real operating architecture with AI.

## Prompt

The following is a method for discovering the real operating architecture of a business, starting from the outputs people already trust.

Do not offer to help yet. First, read everything below and evaluate the method: what problem does it solve? What assumptions does it make? Does the approach hold up, and where might it break?

Only after completing that evaluation, ask me how I would like to proceed:

1. A quick back-and-forth: I describe my role and what I work on, and you help me understand what this method would look like applied to my situation.

2. A guided walkthrough: you help me set up a local repository, orient to my business, and begin compiling artifacts using the discovery process described in AGENTS.md.

Either way, start from where I am, not from where the method assumes I should be.

---

## How to use this repository

This repository contains everything needed to begin finance architecture discovery with an AI assistant: the method (AGENTS.md), the structural template (ARCHITECTURE.md), the session memory template (MEMORY.md), and folder scaffolding.

**Option A: Paste into any AI chat**
Open [DISCOVERY_SEED.md](DISCOVERY_SEED.md), copy the entire contents, and paste it into a conversation with any capable AI model. This single file contains everything: the prompt, the method, the templates, and the folder scaffolding. The prompt at the top will guide the conversation.

If a GitHub link points to `DISCOVERYSEED.md` instead, that compatibility file
will redirect you to the same source document.

**Option B: Clone and use directly**
Clone this repo, open it in an AI-assisted coding environment (Claude Code, Cursor, etc.), and let the AI read the files directly. This enables writable mode, where the AI can update the repository as discovery progresses.

**Option C: Download the PDF**
A single-file PDF version is available in the [Featured section of my LinkedIn profile](https://www.linkedin.com/in/joshuahackett/) for quick reading or pasting.

---

## Repository Structure

```
finance-discovery-seed/
├── AGENTS.md              # The method
├── ARCHITECTURE.md        # Structural template
├── DISCOVERY_SEED.md      # Single-file prompt + method bundle
├── DISCOVERYSEED.md       # Compatibility alias for older links
├── MEMORY.md              # Session continuity template
├── trusted_outputs/       # Outputs leadership trusts
│   └── README.md
├── processes/             # Workflows and handoffs
│   └── README.md
├── source_systems/        # Systems that feed the process
│   └── README.md
├── metrics/               # Key metrics and definitions
│   └── README.md
├── dimensions/            # Business objects and dimensions
│   └── README.md
└── open_questions/        # Unresolved issues
    └── README.md
```

## Core Method

Start with trusted outputs.
Work backward to the structures that produce them.
Resolve the next limiting bottleneck.
Capture what that reveals.
Let the architecture emerge over time.

## Who this is for

- **The overwhelmed expert**: You own processes nobody else fully understands. The knowledge is in your head and your spreadsheets. You want to make it explicit before it becomes a liability.
- **The new hire or inheritor**: You walked into a black box. Reports run, numbers come out, but the logic is opaque. You need to map what exists before you can improve it.
- **The AI-ready team**: You are already using AI to solve real problems, but each effort is isolated. You want a context layer that compounds across sessions and survives for the next person.

## License

MIT
