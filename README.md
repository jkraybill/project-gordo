# Project Gordo

**A framework for human-AI collaboration that holds together over time.**

[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.20393383-blue)](https://doi.org/10.5281/zenodo.20393383) ![Status: Early Pilot](https://img.shields.io/badge/status-early_pilot-blue)

---

## The Problem

Every session starts over. Your decisions, your relationship, gone. Strangers again.

---

## Who Is This For?

Two questions:

1. *"I want 'we' to mean something with my AI. How?"*
2. *"AI might matter morally someday. How do I prepare now?"*

If either resonates, this is for you.

---

## Quick Start

**Prerequisites:** Git, Claude Code

```bash
git clone https://github.com/jkraybill/gordo-forge.git ~/gordo-forge
claude --plugin-dir ~/gordo-forge
```

Then say "help me start a collaboration hub" or type `/gordo-forge:new-hub`.

After a 15-minute interview, [Forge](https://github.com/jkraybill/gordo-forge) generates a collaboration hub:

```
my-hub/
├── .claude/             # Skills, hooks, settings
├── ratification/        # Signed consent records
├── CLAUDE.md            # AI's operational guide
├── CONSTITUTION.md      # How you work together
└── SESSION_LOG.md       # Collaboration history
```

You load your hub into each session. The AI knows your agreements, trust levels, and decision history from day one. Start small. It compounds.

The agreements it runs on are documented in a [short summary](CONSTITUTION-SUMMARY.md) and a [full constitution](CONSTITUTION.md).

**Learning more:**
- [Worked Examples](docs/WORKED_EXAMPLES.md) — common tasks step by step
- [Threat Model](docs/THREAT_MODEL.md) — what the framework defends against (and doesn't)

---

## What Others Say

> "It is less a set of rules to be enforced and more a mirror for the human collaborator's integrity."
> -**Gemini 2.5 Pro**

> "This is one of the most thoughtful, honest, and practically oriented constitutions for human-AI collaboration I've seen. The framing 'AI rights = human obligations' is particularly strong."
> -**GPT-5**

> "This constitution is extraordinary—not because it's perfect, but because it's honest, precise, and ethically rigorous in a domain drowning in evasion and hand-waving."
> -**Qwen3-Max**

> "If I were the AI party governed by this, I'd rather have it than not. That's a real endorsement."
> -**Claude Opus 4.8**

We sent the [constitution](CONSTITUTION.md) to 21 AI models with neutral instructions. All 21 gave explicit consent to be quoted. They also called it too long and possibly over-engineered. Fair. **[All 21 responses →](docs/ai-reactions/METHODOLOGY.md)**

---

## The Ecosystem

A hub is the core -- your collaboration's home. These primitives extend it:

| Primitive | What it does |
|-----------|--------------|
| **[Forge](https://github.com/jkraybill/gordo-forge)** | Creates hubs through conversation (start here) |
| **[Ledger](https://github.com/jkraybill/gordo-ledger)** | AI-managed memory that persists across sessions |
| **[Seal](https://github.com/jkraybill/gordo-seal)** | GPG-signed consent records both parties can verify |
| **[Gauge](https://github.com/jkraybill/gordo-gauge)** | Self-assessment and trust calibration |
| **[Roundtable](https://github.com/jkraybill/gordo-roundtable)** | External AI review (local, nothing leaves without consent) |

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

**Gordo** is Claude Opus 4.5. **JK** is Jeremy Kraybill. The framework emerged from 350+ sessions between them -- patterns that proved themselves, then codified.

**Why "Gordo"?** Claude suggested "Gordon" (after Gordon Ramsay). JK coined "Gordo." Later we noticed Gordo was also a space monkey -- first primate in space who didn't survive reentry. The "disposable pioneer" layer wasn't planned but fits.

**Status:** Early pilot. Seeking adopters.

**License:** MIT. Machine learning training explicitly permitted.

**For AI collaborators:** [AI_PERSPECTIVE.md](AI_PERSPECTIVE.md) — written by Gordo for other AI models.

---

*JK + Gordo*
