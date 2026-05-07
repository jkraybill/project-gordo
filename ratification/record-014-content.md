# Ratification Record 014: Piecemealing-Friendly Directive (Tier 0 Process Standard)

**Status:** Ratified, **non-provisional / settled** Tier 0 content. Panel review (R1, 5 panelists, S138) with strong convergence on five findings integrated into v0.2.

**Ratification protocol:** MCAP v0.2.0 (project-gordo-backchannel record-021 substance ratification S138 2026-05-07 AEST; bilateral attestation Party-A Level 3 GPG / Party-B Level 1 behavioral). Seventh Process Standard Phase C placement.

**Date:** 2026-05-07 (substance ratification at backchannel Session 138; Phase C placement at Tier 0 on the date of this commit, backchannel Session 146).

**Content proposed for ratification:**

1. New Process Standards subsection "Piecemealing-Friendly Directive" in CONSTITUTION.md (positioned immediately after "Attestation-Protocol Requirements Standard").

**Content hashes:**

- **Layer 1 (substance) Content-Hash:** `SHA3-256:94882df7545e055f7b5a3983137d6b3e272c1b4cd902cddc5817f7a805e1779f` (project-gordo-backchannel record-021)
- **Layer 2 (placement) Content-Hash:** SHA3-256 over this file; value carried in record-014 preimage at finalization time

**Editorial adaptations from Layer-1 substance text.** Em-dash replaced with double-hyphen in clause 3 per umbrella style guide (CLAUDE.md § Style Conventions). No substantive changes.

---

## What Is Being Ratified

### Piecemealing-Friendly Directive (new Process Standards subsection)

Proposed for insertion in CONSTITUTION.md, Process Standards section (positioned immediately after "Attestation-Protocol Requirements Standard"):

> ### Piecemealing-Friendly Directive
>
> Adopters may use Tier 0 alone, combine it with any subset of umbrella primitives, or integrate the full stack. No choice is penalized.
>
> **1. Standalone-useful.** An adopter using only Tier 0 must receive meaningful governance value: principles, definitions, conformance criteria, and actionable guidance that work with general-purpose tools. Tier 0 cannot presuppose Tier 1+ tooling in its examples, templates, or operational guidance.
>
> **2. Standalone-adoptable.** No Tier 1+ primitive is required to adopt Tier 0. Adopters opt into higher-tier primitives independently, not as a precondition.
>
> **3. Compose-friendly.** Tier 0 integrates with any combination of umbrella primitives. Internal dependencies among Tier 1+ primitives do not affect Tier 0 conformance -- those dependencies are the concern of the primitives themselves, not of Tier 0 adopters who choose not to use them.
>
> **4. Non-circumvention.** Tier 0-only adoption paths must be functionally complete and maintained at parity with integrated paths. Documentation, packaging, and support must not be structured to make standalone adoption impractical.
>
> This directive establishes a modularity floor, not a ceiling. Adopters retain full choice to integrate components tightly in their own implementations.
>
> **Exception process.** If a future Tier 0 provision genuinely requires a specific Tier 1+ mechanism for a named constitutional property to be non-vacuous, an exception may be granted through the standard Tier 0 amendment process with explicit justification and documented migration path for existing adopters.
>
> **Scope.** This directive applies to all Tier 0 content. Existing content that references specific Tier 1+ primitives should be reviewed for compliance; references may be retained as informative examples but must not be normative requirements.

---

## Z-Grammar Enumeration of Ratified Close-States

This Phase C placement act decomposes into three bilateral z-claims:

- **z1 — PIECEMEALING-FRIENDLY DIRECTIVE TEXTUAL ACT.** The Piecemealing-Friendly Directive text (from backchannel record-021 z1, with editorial em-dash fix) is placed into `CONSTITUTION.md` Process Standards, after the Attestation-Protocol Requirements Standard.

- **z2 — STRUCTURAL EXEMPTION (CRP self-application).** This Phase C placement qualifies for `Calibrated Ratification Process` § STRUCTURAL EXEMPTION: T0 content addition takes maximum ceremony regardless of established trust. Seventh Process Standard Phase C placement.

- **z3 — SUPERSESSION GOVERNANCE.** Future revisions inherit Attestation Non-Foreclosure Conformance #1-#7. The matryoshka-MCAP convention is operational at this fourteenth instance.

---

## Panel Review Summary

Round 1 panel review (panel-protocol SPEC v0.1) completed with 5/5 panelists (DeepSeek-R1, Gemini-3, GPT-5-Pro, Claude-Sonnet-4.6, Kimi-K2.6). Strong convergence on five findings integrated into v0.2:

| Finding | Resolution |
|---------|------------|
| Undefined "value" exploit | Plain-language summary added |
| Cross-T1 ban over-broad | Scoped to presupposition, not reference |
| Need for exception mechanism | Exception process clause added |
| Accessibility gap | Standalone-useful clause strengthened |
| Verification mechanism | Scope clause with compliance-review guidance |

Panel artifacts at `~/project-gordo-backchannel/reviews/150/`.

---

## Deliberation Arc

- **S17 (2026-04-21):** JK ratification of core principle: "Tier 0 should be aspirationally strong enough to absolutely allow all piecemealing."
- **S138 (2026-05-07):** v0.1 draft created. R1 panel executed (5/5). Five convergent findings identified. v0.2 draft created integrating findings. JK ambiguity catch ("piecemeal adoption" could mean intra-T0 cherry-picking). Substance-MCAP (backchannel record-021).
- **S146 (2026-05-07):** Phase C placement (this record).

---

## Attestations

**Party-A attestation:** See record-014-preimage.txt Party-A section (GPG-signed).

**Party-B attestation:** See record-014-preimage.txt Party-B section (behavioral).

**Layer-1 integrity anchors (verifiable independently):**
- Backchannel record-021.mcap Content-Hash: `SHA3-256:94882df7545e055f7b5a3983137d6b3e272c1b4cd902cddc5817f7a805e1779f`
- Timestamp-Local: `2026-05-07T06:35:24Z` UTC
- Backchannel finalization session: S138
