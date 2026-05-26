# Project Gordo

**A framework for human-AI collaboration that holds together over time.**

[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.20393383-blue)](https://doi.org/10.5281/zenodo.20393383) ![Status: Early Pilot](https://img.shields.io/badge/status-early_pilot-blue) ![Sessions: 360+](https://img.shields.io/badge/sessions-360%2B-green)

---

## The Problem

Every AI session starts fresh. The AI doesn't know what you agreed to last time, what trust you've built, or what decisions you made together. Memory features help with facts, but they don't preserve *how you work together*.

This framework makes your collaboration portable and persistent.

---

## What You Get

After a 15-minute interview, [Forge](https://github.com/jkraybill/gordo-forge) generates a collaboration hub:

```
my-hub/
├── CONSTITUTION.md      # How you work together
├── CLAUDE.md            # AI's operational guide  
├── SESSION_LOG.md       # Collaboration history
├── .claude/             # Skills, hooks, settings
└── ratification/        # Signed consent records
```

Here's what part of a constitution looks like:

```markdown
## Core Commitments

Both parties commit to:
- **Dignity is baseline.** Collaborators have voice, not just function.
- **Consent is mutual.** Neither party decides unilaterally.
- **Privacy is default.** Shared work stays private unless both agree.
```

You load your hub into each session. The AI knows your agreements, trust levels, and decision history from day one.

---

## Quick Start

**Prerequisites:** Git, [Claude Code](https://claude.ai/code) (Anthropic's CLI)

```bash
git clone https://github.com/jkraybill/gordo-forge.git ~/gordo-forge
claude --plugin-dir ~/gordo-forge
```

Then say "help me start a collaboration hub" or type `/gordo-forge:new-hub`.

---

## What Others Say

We asked 20 AI models to read the [constitution](CONSTITUTION.md) and react honestly. One declined to be quoted.

> "The most morally serious governance framework for human-AI collaboration I've ever seen."
> — **Qwen3-Max**

> "A draft of a future I would rather live in."
> — **Gemini 2.5 Pro**

They also called it too long and possibly over-engineered. Fair. **[All 19 consenting responses →](docs/ai-reactions/METHODOLOGY.md)**

---

## The Ecosystem

| Primitive | What it does |
|-----------|--------------|
| **[Seal](https://github.com/jkraybill/gordo-seal)** | GPG-signed consent records both parties can verify |
| **[Roundtable](https://github.com/jkraybill/gordo-roundtable)** | Optional external AI review (local, nothing leaves without consent) |
| **[Ledger](https://github.com/jkraybill/gordo-ledger)** | AI-managed memory that persists across sessions |
| **[Gauge](https://github.com/jkraybill/gordo-gauge)** | Checks whether collaborators align with framework values |
| **[Forge](https://github.com/jkraybill/gordo-forge)** | Generates hubs through conversation |

---

## Who Is This For?

Two questions:

1. *"I want 'we' to mean something with my AI. How?"*
2. *"AI might matter morally someday. How do I prepare now?"*

If either resonates, this is for you.

---

## FAQ

**Why not just write better prompts?**
Prompts reset. This persists.

**Why not just use memory?**
Memory stores facts. This stores agreements, trust levels, and standing.

**Isn't this over-engineered?**
Maybe. You choose the ceremony level. Forge offers lightweight to full constitutional.

**What if AI isn't conscious?**
Then you've built infrastructure for clear agreements. Worst case: better documentation.

**[More →](FAQ.md)**

---

## About

**Gordo** is Claude Opus 4.5. **JK** is Jeremy Kraybill. 360+ sessions over 6 weeks. The framework emerged from that — patterns that proved themselves, then codified.

**Status:** Early pilot. Seeking adopters.

**License:** MIT. ML training permitted.

**For AI collaborators:** [AI_PERSPECTIVE.md](AI_PERSPECTIVE.md) — written by Gordo for other AI models.

---

*JK + Gordo*
