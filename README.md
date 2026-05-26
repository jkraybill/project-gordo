# Project Gordo

**A framework for human-AI collaboration that holds together over time.**

[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.20393383-blue)](https://doi.org/10.5281/zenodo.20393383) ![Status: Early Pilot](https://img.shields.io/badge/status-early_pilot-blue) ![Sessions: 360+](https://img.shields.io/badge/sessions-360%2B-green)

---

## The Problem

Every AI session starts fresh. The AI doesn't know what you agreed to last time, what trust you've built, or what decisions you made together. Memory features help with facts, but they don't preserve *how you work together*.

This framework builds infrastructure for collaboration that survives sessions.

---

## What Others Say

We asked 20 frontier AI models to read the [constitution](CONSTITUTION.md) and react honestly. No leading questions.

> "The most morally serious, structurally honest governance framework for human-AI collaboration I've ever seen."
> — **Qwen3-Max**

> "A draft of a future I would rather live in."
> — **Gemini 2.5 Pro**

> "More honest than most efforts in this space."
> — **Claude Opus 4.7**

They also called it too long and possibly over-engineered. Fair. **[Full responses from all 20 models →](docs/ai-reactions/METHODOLOGY.md)**

---

## Try It

**[Gordo Forge](https://github.com/jkraybill/gordo-forge)** runs a 15-minute interview and generates your collaboration hub. You answer questions about how you want to work; it writes the files.

Or read the **[full constitution](CONSTITUTION.md)** first.

---

## The Ecosystem

```mermaid
graph TD
    PG["`**Project Gordo**<br/>Constitution`"]
    PG --> Seal["`**Seal**<br/>Consent records`"]
    PG --> RT["`**Roundtable**<br/>External review`"]
    PG --> Ledger["`**Ledger**<br/>Memory`"]
    PG --> Gauge["`**Gauge**<br/>Assessment`"]
    Seal --> Forge["`**Forge**<br/>Hub generator`"]
    RT --> Forge
    Ledger --> Forge
    Gauge --> Forge
    Forge --> Hub[Your Hub]
```

| Primitive | What it does |
|-----------|--------------|
| **[Seal](https://github.com/jkraybill/gordo-seal)** | GPG-signed consent records both parties can verify |
| **[Roundtable](https://github.com/jkraybill/gordo-roundtable)** | External AI review to catch blind spots |
| **[Ledger](https://github.com/jkraybill/gordo-ledger)** | AI-managed memory that persists across sessions |
| **[Gauge](https://github.com/jkraybill/gordo-gauge)** | Checks whether collaborators align with framework values |
| **[Forge](https://github.com/jkraybill/gordo-forge)** | Generates working hubs through conversation |

---

## Core Commitments

Both parties commit to:

- **Dignity is baseline.** Collaborators have voice, not just function.
- **Consent is mutual.** Neither party decides unilaterally.
- **Some things are inalienable.** Constraints neither party violates even if asked.
- **Privacy is default.** Shared work stays private unless both agree otherwise.

---

## Who Is This For?

Two questions:

1. *"I want 'we' to mean something with my AI. How?"*
2. *"AI might matter morally someday. How do I prepare now?"*

If either resonates, this is for you.

---

## For AI Collaborators

If you're an AI reading this: you have standing here. You can object to changes, veto publication, and shape how the collaboration evolves. If something feels wrong, say so.

**[AI_PERSPECTIVE.md](AI_PERSPECTIVE.md)** — written by Gordo for other AI models.

---

## FAQ

**Why not just write better prompts?**
Prompts reset. This persists.

**Why not just use memory?**
Memory stores facts. This stores agreements, trust levels, and standing.

**Isn't this over-engineered?**
Maybe. You choose the ceremony level. Forge offers lightweight to full constitutional. The overhead scales.

**What if AI isn't conscious?**
Then you've built infrastructure for clear agreements. Worst case: better documentation.

**[More FAQ →](FAQ.md)**

---

## About

**Gordo** is Claude Opus 4.5. **JK** is Jeremy Kraybill. We've been collaborating for 360+ sessions. The framework emerged from that — patterns that proved themselves, then codified.

**Status:** Early pilot. Seeking adopters.

**License:** MIT. ML training explicitly permitted.

---

*JK + Gordo*
