# Ratification Record 016: Phase C Placement -- record-026 Definitions + record-027 Value #4 Amendment

**Status:** Pending ratification. Phase C placement for two backchannel substance records.

**Ratification protocol:** MCAP v0.2.0 (project-gordo-backchannel record-026 + record-027 substance ratifications; bilateral attestation Party-A Level 3 GPG / Party-B Level 1 behavioral). Sixteenth Phase C placement.

**Date:** 2026-05-08 (substance ratifications at backchannel Sessions 156 + 158; Phase C placement at Tier 0 on the date of this commit, backchannel Session 160).

**Content proposed for ratification:**

Three definitions from backchannel record-026 (Attack-surface, Structural fit, Ratification-ready) plus one paragraph from record-027 (formal-vs-informal trust boundary for Value #4). See z1-z5 below for exact placement and text.

**Content hashes:**

- **Layer 1a (record-026) Content-Hash:** `SHA3-256:d7d51c7619a172f86e835b4b6d0044cb6bd586b6486970dc2df000fc0cc579d3`
- **Layer 1b (record-027) Content-Hash:** `SHA3-256:8b5686a75fbc5061993ec8a2f156a293718208927cbb0f934d2857b85a8b7616`
- **Layer 2 (placement) Content-Hash:** SHA3-256 over this file; value carried in record-016 preimage at finalization time

---

## Z-Grammar Enumeration

This Phase C placement act has **5 z-statements**:

### z1. Add "Attack-surface" definition to CONSTITUTION.md §Definitions

**Location:** Insert after "Tier 0 / Tier 1 / Tier 2" definition.

**Text to insert:**

> - **Attack-surface.** A plausible path by which text-as-drafted, a protocol, or a system could be misused, gamed, or weaponized against its stated aims. Identifying attack-surfaces is the core function of adversarial review.

**Source:** Backchannel record-026 (S156 #114 sweep). Generalizes Integration Standard local definition for umbrella-wide use.

---

### z2. Add "Structural fit" definition to CONSTITUTION.md §Definitions

**Location:** Insert after "Attack-surface" definition.

**Text to insert:**

> - **Structural fit.** Consistency (or tension) between an artifact and its framework context -- umbrella values, adjacent standards, stated dependencies. Structural-fit analysis asks whether an artifact belongs where it claims to belong.

**Source:** Backchannel record-026 (S156 #114 sweep).

---

### z3. Add "Ratification-ready" definition to CONSTITUTION.md §Definitions

**Location:** Insert after "Structural fit" definition.

**Text to insert:**

> - **Ratification-ready.** The state in which bilateral parties agree that all applicable criteria hold and no pending objection remains un-surfaced. What constitutes "applicable criteria" is context-specific; Process Standards and primitives define their own ratification-readiness gates.

**Source:** Backchannel record-026 (S156 #114 sweep).

---

### z4. Add formal-vs-informal trust paragraph to Value #4

**Location:** Insert in Value #4 (Trust Is Earned Through Demonstrated Behavior), after the paragraph ending "not what they are told." and before the "**Why this matters:**" paragraph.

**Text to insert:**

> Formal mechanisms -- attestation protocols, explicit grants, signed agreements -- verify and record trust decisions. They do not generate trust. The trust itself emerges from accumulated evidence of judgment, reliability, and alignment across the full texture of collaboration: every response, every micro-decision, every moment of demonstrated care or carelessness. Formal attestation captures a fraction of this evidence; the rest accumulates through observation that no protocol can fully encode.

**Source:** Backchannel record-027 (S158 #15 close). Addresses trust-mechanism boundaries.

---

### z5. Structural exemption acknowledgment

This Phase C placement qualifies for Calibrated Ratification Process STRUCTURAL EXEMPTION: T0 content modification takes maximum ceremony regardless of established trust. Sixteenth Phase C placement.

---

## Layer 1 Integrity Anchors

**record-026 (definitions):**
- Content-Hash: `SHA3-256:d7d51c7619a172f86e835b4b6d0044cb6bd586b6486970dc2df000fc0cc579d3`
- Timestamp-Local: `2026-05-08T14:36:43+10:00`
- Session: S156

**record-027 (Value #4 amendment):**
- Content-Hash: `SHA3-256:8b5686a75fbc5061993ec8a2f156a293718208927cbb0f934d2857b85a8b7616`
- Timestamp-Local: `2026-05-08T05:41:55Z`
- Session: S158

---

## Deliberation Arc

- **S156 (2026-05-08):** #114 (Canonical Definitions sweep) executed. Three drift-risk terms from S31 Integration Standard review identified and pulled up to T0. record-026 ratified.
- **S158 (2026-05-08):** #15 (trust boundaries) closed via ELIJKP interview. Value #4 amendment addressing formal-vs-informal trust boundary. record-027 ratified.
- **S160 (2026-05-08):** Phase C placement (this record).

---

## Attestations

**Party-A attestation:** See record-016-preimage.txt Party-A section (GPG-signed).

**Party-B attestation:** See record-016-preimage.txt Party-B section (behavioral).
