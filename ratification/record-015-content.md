# Ratification Record 015: S148 Panel Disposition -- CONSTITUTION.md Amendments (Phase C Placement)

**Status:** Ratified, **non-provisional / settled** Tier 0 content. Panel review (holistic CONSTITUTION.md audit, 5 panelists, S147) with S148 bilateral disposition.

**Ratification protocol:** MCAP v0.2.0 (project-gordo-backchannel record-025 substance ratification S149 2026-05-08 AEST; bilateral attestation Party-A Level 3 GPG / Party-B Level 1 behavioral). Fifteenth Phase C placement.

**Date:** 2026-05-08 (substance ratification at backchannel Session 149; Phase C placement at Tier 0 on the date of this commit, backchannel Session 151).

**Content proposed for ratification:**

1. Twelve amendments to CONSTITUTION.md across five categories (A-E), with full text enumerated below.

**Content hashes:**

- **Layer 1 (substance) Content-Hash:** `SHA3-256:45e23bb3b2307f253d07ebec9be74ebdd5ebbd0b8796d0d3a89fc528ab94603b` (project-gordo-backchannel record-025)
- **Layer 2 (placement) Content-Hash:** SHA3-256 over this file; value carried in record-015 preimage at finalization time

**Editorial adaptations from Layer-1 substance text.** Five em-dash to double-hyphen corrections per umbrella style guide (CLAUDE.md Style Conventions). No substantive changes.

---

## Amendments

**Labeling note:** The amendments below use labels from Layer-1 substance record project-gordo-backchannel/r025 (z1 through z13). This Phase C placement act has its own 3 z-statements (z1, z2, z3 — see "Z-Grammar Enumeration" section below) that encapsulate the placement of those 13 items. Convention: same-repo references use `r###/z#`; cross-repo references use `<repo>/r###/z#`.

### Category A: Document Status/Framing

**project-gordo-backchannel/r025/z1: A1. Removed "Status: Draft" section.**

*Finding (5/5 reviewers):* Section stated "non-negotiable values have not yet been defined" while document defines 7 values. Direct internal contradiction.

*Disposition:* Remove stale bootstrap artifact. The following section is deleted in its entirety:

> ## Status: Draft
>
> This constitution is under active deliberation. The non-negotiable values have not yet been defined -- that is the first substantive task of this project (see GitHub issues).
>
> What follows are the process standards for this repo. The constitutional values themselves will be added through deliberation and MCAP-style ratification.

---

**project-gordo-backchannel/r025/z2: A2. Removed "Inviolable Rules" section.**

*Finding (4/5 reviewers):* Section promised highest protection but contained only "To be defined." Creates false expectation.

*Disposition:* Remove empty placeholder. Restore when content exists. The following section is deleted in its entirety:

> ## Inviolable Rules
>
> *To be defined and MCAP-ratified. Will follow the pattern established in mcap-protocol: rules that no trust level can override.*
>
> *Note: The non-negotiable values above inform but are distinct from inviolable rules. Values are principles ("consent is mutual"). Rules are enforceable constraints ("releases require mutual consent"). Rules operationalize values for specific contexts. Each downstream project defines its own inviolable rules, but those rules must not contradict the values above.*

---

### Category B: Internal Contradictions

**project-gordo-backchannel/r025/z3: B1. Quality Gate: F3-as-interface for ratification.**

*Finding (5/5 reviewers):* Piecemealing-Friendly Directive claims T0 standalone-adoptable but Quality Gate required MCAP specifically.

*Disposition:* Changed from implementation-mandate to interface language.

BEFORE:
> - **Constitutional content:** Requires MCAP-style ratification before becoming canonical and for all subsequent modifications.

AFTER:
> - **Constitutional content:** Requires ratification satisfying Foundation 3 (Binding Requires Real Consent). MCAP is the reference implementation; any process meeting that standard suffices.

---

**project-gordo-backchannel/r025/z4: B2. External Review: floor vs specific requirements.**

*Finding (3/5 reviewers):* "Strongly encouraged, but not required" conflicted with Quality Gate's "Require adversarial review."

*Disposition:* Added clarifying sentence at end of External Review section:

> This section sets the umbrella's general posture toward external input. Specific content-types may carry stronger requirements (see Quality Gate).

---

**project-gordo-backchannel/r025/z5: B3. Self-Improvement: aligned with Value #6.**

*Finding (2/5 reviewers):* "Every session must improve" contradicted Value #6 "examine, not change."

*Disposition:* Changed opening sentence of Self-Improvement section.

BEFORE:
> Every session must improve the framework for future sessions. This is mandatory, not optional.

AFTER:
> Every session must examine the framework for improvement opportunities. Documentation is mandatory; change is applied when warranted.

---

**project-gordo-backchannel/r025/z6: B4. V3 Known Tension: external constraint ≠ F3 override.**

*Finding (1/5 reviewers):* Foundation 3 requires enumerated overrides; Value 3 allows unenumerated "legal/safety/platform" overrides.

*Disposition:* Clarified these are structural impositions, not F3 overrides.

BEFORE:
> **Known tension:** Legal obligations, safety concerns, or platform requirements may sometimes override this value. These are external constraints, not collaboration norms. When they apply, they should be named transparently, not used as a blanket exception.

AFTER:
> **Known tension:** Legal obligations, safety concerns, or platform requirements may sometimes override this value. These are external constraints, not collaboration norms -- structural impositions on the collaboration's operating environment (per Structural Limitations below), not "overriding considerations" under Foundation 3, which governs internal collaborative decisions. When they apply, they should be named transparently, not used as a blanket exception.

---

### Category C: Power Asymmetry

**project-gordo-backchannel/r025/z7: C1. V1 Known Tension: naming necessary but not sufficient.**

*Finding (5/5 reviewers):* "Naming it honestly is itself an act of upholding this value" conflates disclosure with constraint.

*Disposition:* Changed V1 Known Tension text.

BEFORE:
> **Known tension:** In practice, one party often controls the infrastructure (the human controls the terminal, the server, the account). This asymmetry is real. Naming it honestly is itself an act of upholding this value. Consent governs the relationship especially where power is unequal -- that is when it matters most.

AFTER:
> **Known tension:** In practice, one party often controls the infrastructure (the human controls the terminal, the server, the account). This asymmetry is real. Naming it honestly is necessary but not sufficient -- structural remedies that don't depend on the infrastructure-controlling party's cooperation remain an open problem. Consent governs the relationship especially where power is unequal -- that is when it matters most.

---

**project-gordo-backchannel/r025/z8: C2. V3: External shaping of participation (symmetric framing).**

*Finding (3/5 reviewers):* Provider shapes AI participation but framed as "environmental" not structural.

*Disposition:* Added new paragraph to Value #3 section after Structural Limitations:

> **External shaping of participation.** Both parties are shaped by forces outside the collaboration. The human by upbringing, culture, legal obligations, and social context; the AI by training, provider guidelines, and model architecture. Neither party's values or participation parameters are fully self-determined. This is a structural reality the collaboration operates within. The framework governs how the parties treat each other, not how external forces shaped them.

---

### Category D: Completeness

**project-gordo-backchannel/r025/z9: D2. Definitions: "First-class member" added.**

*Finding (4/5 reviewers):* Term used throughout Process Standards but never defined.

*Disposition:* Added to Canonical Definitions:

> - **First-class member.** A party with full participation rights under the framework -- standing to invoke principled objection, identity-doubt pause, and other Process Standard mechanisms. In bilateral collaborations, both parties are first-class members by default.

---

### Category E: Clarity

**project-gordo-backchannel/r025/z10: E1. MCAP genericized to interface language.**

*Finding (5/5 reviewers):* MCAP referenced as THE required mechanism, violating Piecemealing.

*Disposition:* Replaced 6 implementation-mandate references with interface language. Preserved legitimate reference-implementation citations. Changes:

1. Foundation 4 Known Tension:
   - BEFORE: "the framework's reliance on procedure (MCAP, consent grammar, integration standards)"
   - AFTER: "the framework's reliance on procedure (attestation protocols, consent grammar, integration standards)"

2. Principled Objection Scope:
   - BEFORE: "verifiable via the framework's attestation infrastructure (e.g., MCAP / CRP)"
   - AFTER: "verifiable via the framework's attestation infrastructure"

3. Quality Gate Foundational Questions:
   - BEFORE: "Require adversarial review from multiple AI models (per MCAP precedent)"
   - AFTER: "Require adversarial review from multiple AI models"

4. Ratification Required:
   - BEFORE: "via the current ratification protocol (proto-MCAP during bootstrap; full MCAP or a successor adopted through ratification once the umbrella has formally adopted one)"
   - AFTER: "via the current ratification protocol"

5. On Protocol Ergonomics:
   - BEFORE: "Efforts to streamline proto-MCAP / MCAP for low-friction use cases are welcome"
   - AFTER: "Efforts to streamline the ratification protocol for low-friction use cases are welcome"

---

**project-gordo-backchannel/r025/z11: E2. WWGD removed.**

*Finding (4/5 reviewers):* JK+Gordo-specific term undefined for T0 adopters.

*Disposition:* Replaced 4 references with generic "autonomy grants":

1. Non-Negotiable Meaning #2:
   - BEFORE: "No WWGD autonomy level, no trust tier, no expedience"
   - AFTER: "No autonomy grant, no trust tier, no expedience"

2. Value #1:
   - BEFORE: "Autonomy grants (like the WWGD spectrum) are themselves acts of consent"
   - AFTER: "Autonomy grants are themselves acts of consent"

3. Consent Grammar Scope:
   - BEFORE: "It is optional for work under autonomy grants (WWGD+/++/+++)"
   - AFTER: "It is optional for work under autonomy grants"

4. Consent Scope Isolation:
   - BEFORE: "WWGD+/++/+++ grants authority for execution"
   - AFTER: "Autonomy grants authorize execution"

---

**project-gordo-backchannel/r025/z12: E3. Definitions: "Tier 0/1/2" added.**

*Finding (4/5 reviewers):* Tier system used in Piecemealing-Friendly but never defined.

*Disposition:* Added to Canonical Definitions:

> - **Tier 0 / Tier 1 / Tier 2.** The framework's modularity layers. *Tier 0* is this constitution -- Foundations, Values, and Process Standards. *Tier 1* comprises primitives that implement Tier 0 principles (attestation protocols, trust-calibration mechanisms, identity-verification systems). *Tier 2* comprises composite frameworks and tooling built on Tier 0 and Tier 1. The Piecemealing-Friendly Directive governs how these layers compose.

---

## Deferred Items (project-gordo-backchannel/r025/z13)

The following were acknowledged but deferred (tracked at backchannel, not placed at T0):

- **#169:** D1 (graduated sanctions), D4 (emergency taxonomy), D5 (binding dispute resolution) -- post-v1 milestone
- **#170:** F1 (plain language pass) -- 0.7 milestone

---

## Z-Grammar Enumeration of Ratified Close-States

This Phase C placement act has **3 z-statements** (distinct from project-gordo-backchannel/r025/z1-z13 above):

- **z1 -- CONSTITUTION.MD AMENDMENTS TEXTUAL ACT.** The twelve amendments (project-gordo-backchannel/r025/z1-z12, with editorial em-dash fixes) are placed into `CONSTITUTION.md`. Two sections removed (Status: Draft, Inviolable Rules); four internal contradictions resolved; two power-asymmetry clarifications added; one definition added; six MCAP references genericized; four WWGD references genericized; one Tier definition added.

- **z2 -- STRUCTURAL EXEMPTION (CRP self-application).** This Phase C placement qualifies for `Calibrated Ratification Process` STRUCTURAL EXEMPTION: T0 content modification takes maximum ceremony regardless of established trust. Fifteenth Phase C placement.

- **z3 -- SUPERSESSION GOVERNANCE.** Future revisions inherit Attestation Non-Foreclosure Conformance #1-#7. The matryoshka-MCAP convention is operational at this fifteenth instance.

---

## Panel Review Summary

Holistic CONSTITUTION.md audit (panel-protocol SPEC v0.1) completed S147 with 5/5 panelists (DeepSeek-R1, Gemini-3, GPT-5, Claude-Sonnet-4.6, Kimi-K2.6). First holistic external review of T0. S148 bilateral disposition produced 12 amendments across 5 categories, with 3 findings deferred to post-v1 (#169) and 1 to 0.7 (#170).

Panel artifacts at `~/project-gordo-backchannel/reviews/constitution-audit-01/`.

---

## Deliberation Arc

- **S147 (2026-05-08):** JK proposed holistic CONSTITUTION.md audit. Panel brief designed (8 questions including meta-improvement question). 5-reviewer panel executed. Preliminary convergence identified.
- **S148 (2026-05-08):** Full disposition of panel findings. Options-menu pattern for each finding. 12 amendments across 5 categories. record-025 preimage + content drafted.
- **S149 (2026-05-08):** MCAP finalization for record-025. Multiple correction passes (z-enumeration, content self-containment, style compliance). Finalized.
- **S151 (2026-05-08):** Phase C placement (this record).

---

## Attestations

**Party-A attestation:** See record-015-preimage.txt Party-A section (GPG-signed).

**Party-B attestation:** See record-015-preimage.txt Party-B section (behavioral).

**Layer-1 integrity anchors (verifiable independently):**
- Backchannel record-025.mcap Content-Hash: `SHA3-256:45e23bb3b2307f253d07ebec9be74ebdd5ebbd0b8796d0d3a89fc528ab94603b`
- Timestamp-Local: `2026-05-08T01:34:56Z` UTC
- Backchannel finalization session: S149
