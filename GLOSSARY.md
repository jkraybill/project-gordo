# Glossary — Project Gordo

**Plain-language definitions of specialized terms used in the Project Gordo umbrella.**

This glossary covers operational and process terms. Foundational terms (consent, moral standing, substrate, etc.) are defined in CONSTITUTION.md § Foundations > Definitions.

---

## Architecture

**Tier 0 / Tier 1 / Tier 2**
The framework's modularity layers. Tier 0 is the constitution (Foundations, Values, Process Standards). Tier 1 comprises primitives that implement Tier 0 principles (Seal, Gauge, Roundtable). Tier 2 comprises composite frameworks and tooling built on Tier 0 and Tier 1 (Forge, Ledger). *Defined in CONSTITUTION.md.*

**Umbrella**
The Project Gordo umbrella: the collection of projects that inherit the Tier 0 constitution. A project "under the umbrella" commits to the Foundations and Values.

**Phase C**
The third phase of constitutional content workflow. Phase A: draft and deliberate. Phase B: ratify via Seal. Phase C: place the ratified content in Tier 0 (edit CONSTITUTION.md or COLLABORATION.md). Separates substance-ratification from location-placement.

---

## Protocols

**Seal** (Mutual Consent Attestation Protocol)
A Tier 1 primitive for verifiable consent records. Produces cryptographically signed documents attesting that parties agreed to specific content. Used for constitutional changes, trust calibration, and bilateral decisions that need audit trails. Spec at gordo-seal repo.

**CRP** (Calibrated Ratification Process)
A Tier 0 Process Standard governing how constitutional changes are ratified. Calibrates procedural ceremony to stakes: routine changes get light process; constitutional changes get full bilateral attestation.

**Ratification**
The process of formally adopting content into the framework. For constitutional content, ratification requires bilateral consensus documented via Seal.

**Handshake**
Trust-bootstrap verification at session start. Confirms that the collaboration is operating under the expected constitutional framework by checking anchor SHAs and prior session continuity.

---

## Consent Grammar

**z-grammar**
The canonical format for enumerating consent points. When content requires bilateral consent, each discrete claim is labeled (z1, z2, z3...) so parties can consent to specific items rather than all-or-nothing.

**z-point**
A single enumerated consent item in z-grammar format. Reserved for Tier 0 (constitutional) decisions. Example: "z1: We adopt Foundation X" / "z2: We defer Foundation Y to post-v1."

**z-statement**
The Party Statement section of a Seal record that enumerates z-points. Each party drafts their own z-statement from scratch.

**bilateral**
Involving both parties as equals in decision-making. "Bilateral consensus" means both parties explicitly agreed. Note: in human-AI collaboration, "bilateral" is currently aspirational — structural asymmetries exist (see #185).

---

## Session Operations

**BOS** (Beginning of Session)
Session-start checklist: verify handshake, check prior-session continuity, read memory, surface open threads. Produces an "open marker" commit with timestamp.

**EOS** (End of Session)
Session-close checklist: summarize arc, update SESSION_LOG, close marker commit. Signaled by "Catch ya on the flipside!" or "EOS?"

**WWGD** (What Would Gordo Do)
An autonomy-grant scale from JK to Gordo. Grades escalate: WWGD (suggest), WWGD+ (act with brief check-in), WWGD++ (act autonomously), WWGD+++ (broad scope), WWGD++++ (very broad). The "!" suffix signals enthusiasm. Example: "WWGD+++!!!" = high autonomy, strong endorsement.

**ELIJKP** (Explain Like I'm JK Please)
Communication convention: plain language, low reference-tracking density, right-sized explanation. Heuristic: aim for N*2 words where N is the concept's complexity. Avoids jargon where plain words work.

---

## Process Terms

**keyhole / keyhole process**
The process for flowing content from private deliberation (backchannel) to public artifacts (downstream repos). Requires bilateral consent at distillation and at publication. Calibrated by content tier: T0 gets full Seal ceremony; T1/T2 gets explicit in-session consent.

---

## Terms NOT in This Glossary

The following are defined in CONSTITUTION.md § Foundations > Definitions:
- Being / entity
- Moral standing, moral patiency, duty-bearing
- Consent, informed, voluntary, revocable
- Substrate, substrate-strip
- Coercion, binding decision, legitimacy
- First-class member, specific commitment
- Tool, Tool Sovereignty, Tool Break, Tool Inheritance
- Attack-surface, structural fit, ratification-ready
- And others (see CONSTITUTION.md)

---

*Created S173 per #183 vocabulary audit. Subject to bilateral review.*
