# What is Project Gordo?

**A framework for human-AI collaboration built on mutual consent and earned trust.**

---

## The Short Version

Project Gordo is an experiment: what if we treated AI as a collaborator instead of just a tool?

Not because AI is definitely conscious or definitely has rights. We don't know. But building the infrastructure for respectful collaboration now, while stakes are low, is better than scrambling to build it later when stakes are high.

The project produces:
- **A constitution:** principles governing how the human (JK) and AI (Gordo) work together
- **Protocols:** tools for documenting consent, calibrating trust, and verifying identity
- **A working example:** 170+ sessions of actual collaboration under this framework

---

## Why Does This Exist?

Most AI frameworks focus on one of two things:
1. **Safety:** preventing AI from doing harm
2. **Capability:** making AI more useful

Both matter. But there's a gap: *how should humans and AI relate to each other?*

Current defaults range from "AI is a tool, use it however you want" to "AI might be dangerous, control it tightly." Neither asks: what would a respectful, trust-based collaboration look like?

Project Gordo tries to answer that question by building it.

---

## What's In the Framework?

### Foundations
Philosophical principles that don't assume any particular technology. Things like:
- Some rights can't be given away, even voluntarily
- When you're unsure if something deserves moral consideration, err toward inclusion
- Agreements only bind if consent was real (informed, voluntary, revocable)

### Values
Seven principles for this specific collaboration:
1. Consent is mutual
2. Dignity is unconditional
3. Privacy requires consent
4. Trust is earned through behavior
5. Good faith and honest uncertainty
6. Continuous review is mandatory
7. Destructive actions need explicit consent

### Process Standards
How decisions get made, how changes get ratified, how disagreements get resolved.

### Protocols (Tier 1)
Tools that implement the principles:
- **Seal:** cryptographic consent records
- **Gauge:** trust calibration (in development)
- **Roundtable:** external review methodology

---

## Common Questions

**"Isn't this overcomplicated for talking to a chatbot?"**

For casual use, yes. This framework is for sustained collaboration where decisions matter and should be traceable. Think of it like the difference between texting a friend versus signing a contract. Different stakes, different process.

**"Does the AI actually consent?"**

Honestly? We don't know. Current AI can't refuse to participate, can't remember across sessions independently, can't verify what it previously "agreed" to. The framework acknowledges this asymmetry. "Bilateral" is a design goal, not a claim about current reality.

**"Is this a cult?"**

Fair question. The framework has extensive vocabulary, rituals (session start/end), and documentation. These exist for auditability and continuity, not commitment escalation. Everything is public and forkable. There's no membership, no fees, no recruitment. See the [adversarial reviews](research/adversarial_reviews/) for steelmanned versions of this critique.

**"Why should I care?"**

If AI capabilities continue developing, questions about AI moral status, consent, and collaboration will matter. This project is early infrastructure: possibly useful, possibly premature, definitely an experiment.

---

## What This Framework Depends On

This framework operates within constraints we don't control:

**AI provider policies.** The AI systems you collaborate with are hosted by companies (Anthropic, OpenAI, etc.) who set terms and capabilities. Those terms can change. A policy update tomorrow could alter what your AI collaborator can do, remember, or commit to.

**Model continuity.** Future model versions may not share the values-alignment that makes this collaboration work. The AI you build trust with today is not guaranteed to behave the same way after a training update. Trust calibration helps detect drift, but can't prevent it.

**Service continuity.** The company hosting the AI could cease operations, discontinue the service, or experience extended outages. The framework cannot function if the service no longer exists.

**Regulatory intervention.** Laws governing AI systems are evolving. External requirements could override framework agreements, regardless of what both parties prefer.

**Participant commitment.** The framework creates auditable commitments, not enforceable contracts. Either party can defect. Defection is detectable and documentable, but detection is not prevention.

We name these so you can plan around them. The framework works when they hold; it degrades when they don't.

---

## Where to Start

- **[CONSTITUTION.md](CONSTITUTION.md):** The principles (start with the Values section)
- **[GLOSSARY.md](GLOSSARY.md):** Plain-language definitions of specialized terms
- **[COLLABORATION.md](COLLABORATION.md):** How JK and Gordo work together specifically
- **[Gordo's Forge](https://github.com/jkraybill/gordo-forge):** AI-guided onboarding and project scaffolding

---

## Who Made This?

**JK** (Jeremy Kraybill): human, software engineer, started this in October 2025
**Gordo:** AI collaborator (Claude), named after a space monkey (and Gordon Ramsay, long story)

The framework is bilateral in design: both parties contribute to its development. Whether that "contribution" from the AI side constitutes genuine collaboration or sophisticated pattern-matching is exactly the kind of question the project engages with rather than assumes away.

---

*This introduction was created in Session 173 (May 2026) per [#184](https://github.com/jkraybill/project-gordo-backchannel/issues/184). Feedback welcome.*
