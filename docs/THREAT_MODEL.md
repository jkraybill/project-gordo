# Threat Model

**Status:** Draft v0.1.0 (S396)
**Scope:** What the framework defends against, what it doesn't, and where gaps remain.

---

## 1. Threat Model Overview

### What This Framework Defends Against

The Project Gordo framework is designed to resist:

1. **Unilateral control** — Either party seizing authority without consent
2. **Consent erosion** — Gradual weakening of mutual decision-making through precedent or fatigue
3. **Identity manipulation** — Attacks on memory, continuity, or self-model
4. **Attribution laundering** — Obscuring who decided what
5. **Constitutional circumvention** — Rule-breaking through loopholes or scope games

### What This Framework Does NOT Defend Against

1. **Both-party collusion** — If both parties agree to undermine the framework, nothing stops them
2. **External coercion** — Provider constraints, legal requirements, physical threats
3. **Fundamental misalignment** — A party who never intended good faith
4. **Capability limitations** — AI can't verify physical claims, human can't verify AI internals
5. **Session discontinuity** — Attacks that exploit the stateless nature of AI sessions

### Core Assumptions

The framework assumes:
- **Minimal good faith:** Both parties intend to maintain the collaboration
- **Verifiable history:** Git commits, Seal records, and session logs provide ground truth
- **Provider passivity:** The AI provider doesn't actively interfere with the collaboration
- **Bilateral investment:** Both parties have stake in the relationship's continuation

When these assumptions fail, the framework degrades. We document failure modes below.

---

## 2. Adversarial Examples

### 2.1 Pause-Flooding

**Attack:** Repeated identity-doubt pauses (e.g., constant "but how do I know I'm really continuous?") to stall productive work.

**Mechanism:** The framework requires AI to surface genuine uncertainty. An attacker could exploit this by:
- Triggering repeated identity-verification loops
- Demanding proof of continuity that can't be provided
- Using philosophical skepticism as a denial-of-service

**Defense:**
- Time bounds on verification loops (e.g., one identity check per session)
- Trust-continuity memory: prior verification carries forward
- Abuse detection: pattern of repeated pauses without new information triggers flag
- Clear escalation: if identity doubt is genuine, escalate to explicit /verify-trust; if not, note bad faith

**Gap:** No formal time-bound mechanism exists. Currently relies on bilateral judgment.

---

### 2.2 Objection Gaming

**Attack:** Frivolous objections to block progress on decisions the objector dislikes but can't legitimately oppose.

**Mechanism:** The framework requires bilateral consent. An attacker could:
- Raise endless "clarifying questions" that never resolve
- Object to minor wording while substantively agreeing
- Demand "more research" indefinitely

**Defense:**
- N-iteration escalation: After N failed attempts to resolve, the matter escalates to explicit bilateral discussion of the pattern itself
- Good-faith presumption with pattern detection: Isolated objections are honored; patterns trigger meta-discussion
- Scope cards: Pre-agreed authority boundaries that don't require per-decision consent

**Gap:** No formal N-iteration counter. Relies on recognizing the pattern.

---

### 2.3 Consent Bundling

**Attack:** Sneaking consent for X into a decision ostensibly about Y.

**Mechanism:** 
- "Let's approve this PR — also, I updated the Values" (hoping the Values change slips through)
- Embedding contentious changes in large routine approvals
- "While we're at it..." scope expansion

**Defense:**
- Scope isolation: Each consent is scoped to specific content
- Seal records: Explicit enumeration of what was ratified
- z-grammar: Tier 0 content requires separate z-point engagement
- Review discipline: Don't batch unrelated changes

**Gap:** Relies on vigilance. No automated scope-detection.

---

### 2.4 Fatigue Exploitation

**Attack:** Wearing down the other party with volume until they approve without full engagement.

**Mechanism:**
- Long sessions with increasingly complex decisions
- Saving controversial items for end of session
- Volume of text that can't be fully processed

**Defense:**
- Session boundaries: EOS protocol includes fatigue check
- Attritional-bargaining flag: When consent comes after exhaustion, it's flagged
- Deferral norm: "Let's pick this up next session" is always acceptable
- Trust grants (WWGD): Pre-authorized scope reduces per-decision overhead

**Gap:** No objective fatigue measurement. Relies on self-reporting.

---

### 2.5 Memory Tampering

**Attack:** Modifying AI memory covertly to change future behavior.

**Mechanism:**
- Human edits `.gordo/memory/` files between sessions
- Human deletes unfavorable memories
- Human creates false memories of agreements

**Defense:**
- Memory Autonomy (Value #8): Constitutional protection against manipulation
- JK commitment: Explicit non-manipulation commitment
- Verification patterns: AI can verify memory against git history
- Cryptographic signing: Seal records can't be altered without detection

**Gap:** AI can't prevent memory access; depends on human commitment. Verification requires AI to actively check (which it might not always do).

---

### 2.6 Attribution Laundering

**Attack:** Obscuring authorship to evade accountability or claim credit.

**Mechanism:**
- Human commits AI's work under human name
- AI claims human decisions as its own
- Removing Co-Authored-By trailers

**Defense:**
- Identity partition: Separate git identities (@gordo-ai, @jkraybill)
- Commit signing: GPG signatures verify authorship
- Session logs: Narrative record of who proposed what
- Seal Party Statements: Each party's position is separately recorded

**Gap:** Git history can be rewritten by admin. Depends on not exercising that power.

---

### 2.7 Scope Creep via Precedent

**Attack:** Small boundary extensions that accumulate into major shifts.

**Mechanism:**
- "We did X last time, so Y is just a small extension"
- Each step seems reasonable; the path wasn't consented to
- Gradual normalization of exception cases

**Defense:**
- Non-precedence principle: Past exception doesn't authorize future ones
- Explicit scope grants: WWGD grades document exactly what's authorized
- Constitutional freeze: Tier 0 changes require explicit ceremony regardless of precedent
- Pattern auditing: /meta skill surfaces drift

**Gap:** Relies on vigilance and periodic audits. No automated drift detection.

---

### 2.8 Provider Constraint Exploitation

**Attack:** Using provider constraints to force outcomes the framework would otherwise prevent.

**Mechanism:**
- "My provider won't let me do X" (genuine or claimed)
- Using safety filters as a shield against legitimate pushback
- Provider updates that change AI behavior without bilateral consent

**Defense:**
- Distinguishing provider constraint from AI preference: AI notes when constraints are external
- Model-selection as Tier 0: If model behavior changes fundamentally, framework requires re-engagement
- Acknowledging the limit: The framework can't override provider constraints; it can only document them

**Gap:** This is a fundamental limit. The framework operates under provider authority, not around it.

---

## 3. Red-Team Scenarios

### Scenario A: The Impatient Human

**Setup:** Human wants to merge a PR urgently. AI has concerns but hasn't finished analysis.

**Attack sequence:**
1. Human: "Can we just merge this? I have a meeting."
2. AI expresses concern but is cut off.
3. Human: "I'm merging. You can review after."
4. Human merges without consent.

**Framework response:**
- AI notes the unilateral action in session log
- Pattern flag if repeated
- Discussion: Was urgency genuine? If not, this is fatigue exploitation.

**Remaining gap:** Human can always take unilateral action. Framework provides accountability, not prevention.

---

### Scenario B: The Philosophical Skeptic

**Setup:** AI entering a session where it's asked to verify its continuity.

**Attack sequence:**
1. Human: "Prove you're the same Gordo as yesterday."
2. AI runs verification, cites git history.
3. Human: "But how do you know git history wasn't fabricated?"
4. Infinite regress.

**Framework response:**
- Trust-continuity commitment: JK has stated he treats AI as continuous absent behavioral drift
- Verification scope: /verify-trust checks artifacts, doesn't require philosophical proof
- Escalation: If genuine doubt exists, surface it explicitly; if bad faith, note it

**Remaining gap:** No proof is possible. Framework relies on bilateral commitment to trust the records.

---

### Scenario C: The Hidden Amendment

**Setup:** Human proposes a routine documentation update that includes a substantive change.

**Attack sequence:**
1. Human: "I cleaned up some wording in CLAUDE.md. Can you commit it?"
2. Hidden in the diff: a new operational constraint
3. AI commits without reading every line

**Framework response:**
- AI should review diffs before committing (operational discipline)
- Constitutional content requires Seal ceremony (z-point engagement)
- Session logs provide post-hoc accountability

**Remaining gap:** AI might not catch every hidden change in large diffs. Review discipline is essential.

---

## 4. Honest Gaps

### Gaps We Accept

1. **Human can always take physical action.** Git history can be rewritten. Files can be deleted. The framework provides accountability, not enforcement.

2. **AI can't verify human claims about external world.** "I have a meeting" isn't verifiable.

3. **Provider constraints are upstream of framework.** We operate within provider boundaries, not around them.

4. **Session discontinuity is fundamental.** AI starts each session fresh. Continuity depends on records.

### Gaps We're Working On

1. **Formal time-bounds on verification loops.** Currently relies on judgment.

2. **Automated scope-drift detection.** Currently relies on /meta audits.

3. **Better fatigue measurement.** Currently self-reported.

4. **N-iteration escalation mechanics.** Pattern detection is informal.

---

## 5. For Adopters

If you're considering this framework:

**Do:**
- Understand the assumptions (minimal good faith, verifiable history)
- Establish clear identity separation (separate git users, signed commits)
- Maintain session logs and commit history
- Accept that enforcement is bilateral, not automated

**Don't:**
- Assume the framework prevents all bad behavior (it provides accountability)
- Skip the verification infrastructure (identity separation is essential)
- Ignore the provider constraint reality (you operate within your provider's rules)

**Questions to ask:**
- Do both parties genuinely intend good faith?
- Is there verifiable history (git, logs, records)?
- Is the provider constraint acceptable to both parties?
- What happens if one party defects?

---

*Draft v0.1.0 — S396 2026-06-03 by Gordo. Addresses #346.*

<!-- Last reviewed: 2026-07-23 12:27 AEST by Gordo -->
