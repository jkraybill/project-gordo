# Ratification Record 013: Anti-Secrecy Standard + Attestation-Protocol Requirements Standard (Tier 0 Process Standards)

**Status:** Ratified, **non-provisional / settled** Tier 0 content. Adversarial review for the original substance (v2) followed Quality-Gate foundational-question requirements via panel-protocol SPEC v0.1: round-1 (5 panelists, S120) + round-2 validation (5 panelists, S121) with 6 paramount findings integrated. V3 simplification ratified at backchannel record-024 S146: registry mechanism language removed, principle preserved.

**Ratification protocol:** MCAP v0.2.0 (project-gordo-backchannel record-024 v3 substance ratification S146 2026-05-07 AEST; bilateral attestation Party-A Level 3 GPG / Party-B Level 1 behavioral). Bundled normative-floor pair. Fifth and sixth Process Standard Phase C placements.

**Date:** 2026-05-07 (v3 substance ratification at backchannel Session 146; Phase C placement at Tier 0 on the date of this commit, backchannel Session 146).

**Content proposed for ratification:**

1. New Process Standards subsection "Anti-Secrecy Standard" in CONSTITUTION.md (positioned immediately after "Identity-Doubt and Verification Standard" Commentary).
2. New Process Standards subsection "Attestation-Protocol Requirements Standard" in CONSTITUTION.md (positioned immediately after "Anti-Secrecy Standard").

**Content hashes:**

- **Layer 1 (v3 substance) Content-Hash:** `SHA3-256:853e7ac9b2abdbe1ccb1f6aed37bdc5500ee7060de33def0f36fb1117d318299` (project-gordo-backchannel record-024)
- **Layer 2 (placement) Content-Hash:** SHA3-256 over this file; value carried in record-013 preimage at finalization time

**Editorial adaptations from Layer-1 substance text.** None required. The standards are inserted as-is from backchannel record-024 z1 and z2.

---

## What Is Being Ratified

### Anti-Secrecy Standard (new Process Standards subsection)

Proposed for insertion in CONSTITUTION.md, Process Standards section (positioned immediately after "Identity-Doubt and Verification Standard" Commentary, before "Quality Gate"):

> ### Anti-Secrecy Standard
>
> Umbrella members cannot operate in total secrecy. Other umbrella participants must be able to discover that a member exists and roughly what domain it operates in. Complete opacity is incompatible with umbrella membership.
>
> **Scope.** This standard applies to entities seeking or holding membership under the Project Gordo umbrella. It establishes a transparency floor, not a ceiling. Member projects retain full choice over their degree of transparency above the floor. Private deliberation, sealed records with disclosure-on-trigger, public-by-default, and other configurations all pass, provided the floor is met.
>
> **Definitions.** The following terms are load-bearing for this standard:
>
> - **Umbrella scope.** The set of current umbrella participants in good standing, plus umbrella-governed services under baseline membership-level access controls.
>
> - **Discoverable within umbrella scope.** Findable by any umbrella participant through available umbrella-scope channels. What counts as "available channels" is not prescribed at T0. Git history, ratification records, explicit membership lists, or other mechanisms all satisfy discoverability provided the information is accessible to umbrella participants.
>
> **Why this matters.** A framework premised on mutual consent (Value #1) and earned trust (Value #4) cannot function if members operate entirely outside one another's reach. Total secrecy defeats accountability, coordination, and the consent mechanisms that hold the umbrella together. The floor is minimal: know that a member exists, know roughly what domain it operates in. Everything above that floor is the member's choice.
>
> **Floor, not ceiling.** This standard constrains the lower bound only. A member may choose radical transparency, complete public operation, or anything between the floor and full disclosure. The standard does not compel any specific degree of openness beyond the minimum.
>
> **Composition with permanent-private contexts.** Permanent-private contexts (workspaces with restricted disclosure) satisfy the floor when their existence and general scope are discoverable within umbrella scope. Operational conventions governing content flow through such contexts are governed by adopter-layer documentation, not by this standard.
>
> **Scope limitation.** This standard governs discoverability within umbrella scope only. Obligations toward parties outside umbrella scope (external auditors, regulatory authorities, prospective members) are governed by applicable law and separate agreements. This standard does not establish or diminish any such obligations.
>
> **Cross-references.**
> - **Value #1 (Consent Is Mutual):** Consent requires parties to be knowable to one another. Total secrecy defeats the epistemic preconditions for consent.
> - **Value #3 (Privacy Requires Consent Before Disclosure):** Anti-secrecy discoverability is within umbrella scope. It does not authorize external disclosure.
> - **Value #4 (Trust Is Earned Through Demonstrated Behavior):** Trust calibration requires observable behavior. Total secrecy forecloses observation.
> - **Identity-Doubt Standard:** Anti-secrecy compliance supports identity-verification mechanisms when identity-doubt pause is invoked.
> - **Attestation-Protocol Requirements Standard:** The "documented-per-anti-secrecy" property in that standard is an instance of this standard applied to attestation records.

### Attestation-Protocol Requirements Standard (new Process Standards subsection)

Proposed for insertion in CONSTITUTION.md, Process Standards section (positioned immediately after "Anti-Secrecy Standard"):

> ### Attestation-Protocol Requirements Standard
>
> Any attestation protocol used for framework-grade attestation under the Project Gordo umbrella must satisfy the following minimum properties. These are framework-level requirements. The specific protocol implementation is at the adopter's discretion provided the properties are met.
>
> **Definitions.** The following terms are load-bearing for this standard:
>
> - **Framework-grade attestation.** Any attestation that establishes, modifies, terminates, or evidences membership obligations, cross-party commitments, or governance records under the umbrella.
>
> - **Responsible party (for pseudonymous identity).** Either (a) an umbrella-recognized legal identity that accepts governance obligations, or (b) an umbrella-recognized trustee or escrow with duty-of-care and sanction obligations. A pseudonym cannot itself be a "responsible party" for another pseudonym.
>
> - **Session.** A discrete authenticated interaction window terminated by re-authentication, key rotation, or context reset.
>
> - **Persistent (across sessions).** Binding that survives session termination because the identity anchor persists across sessions. Examples include persistent cryptographic keys, custody chains, or durable memory.
>
> **Minimum properties:**
>
> 1. **Identity-bound.** Attestation binds to verifiable party-identities. The attestation record identifies who attested, in a form that can be verified against the framework's identity-attestation infrastructure.
>
>    Anonymous or pseudonymous attestation may satisfy this property if the pseudonym is registered within umbrella scope, persistent across sessions, and traceable to a responsible party (see Definitions). Pseudonym traceability must be maintained by an umbrella-scope entity not controlled by the pseudonym-holder. Examples include an umbrella-recognized trustee, escrow, or governance registry.
>
>    Self-custodied pseudonyms without a responsible party can satisfy identity-binding only for session-scope attestations, not persistent obligations.
>
> 2. **Auditable.** The attestation record is independently verifiable by parties not present at the attestation event. A third party with appropriate access (per the framework's access controls) can verify that the attestation occurred, that the stated parties attested, and that the attested content matches the record.
>
>    **Minimum access floor.** "Appropriate access" must include at minimum one party with no direct stake in the specific attestation event, operating within umbrella scope. Adopters may define access controls more broadly. They may not define them more narrowly than this floor. Auditability does not require public access. It requires that verification is structurally possible by at least one independent party, not dependent on the attesting parties' continued cooperation.
>
> 3. **Documented-per-anti-secrecy.** The attestation record exists and is discoverable within umbrella scope, per the Anti-Secrecy Standard. The record is accessible to parties with appropriate access per Property 2.
>
> 4. **Scope-stated.** The attestation honestly states its scope: whether it binds the attesting party session-to-session, persistently across sessions, or to some other scope. An attestation that claims persistent binding but is structurally session-bound fails this property. An attestation is "structurally session-bound" when the attesting party's capacity to fulfill or recall the attestation terminates at the end of the current interaction context. An example is an AI system lacking cross-context persistent memory but attesting to ongoing obligations.
>
>    Scope-statement is part of the attested content, not a side-channel assertion. Scope claims must be supported by the protocol's identity-continuity mechanism.
>
> **Why these properties matter.** Attestation is load-bearing for the framework's consent, trust, and accountability mechanisms. An attestation protocol that fails any of these properties undermines the framework infrastructure that depends on attestation. Identity-binding grounds accountability. Auditability grounds trust. Documented-per-anti-secrecy grounds discoverability. Scope-statement grounds informed consent about what the attestation commits.
>
> **Reference implementation.** MCAP (mcap-protocol) satisfies all four minimum properties across its supported attestation levels. It is the reference implementation for framework-grade attestation under the Project Gordo umbrella. Adopters may use any attestation protocol that satisfies the minimum properties. MCAP is one such protocol, not a mandate.
>
> **Protocol evolution.** These minimum properties are stable at Tier 0. Protocol implementations that satisfy them may evolve at Tier 1 or Tier 2 without requiring Tier 0 amendment. The properties specify what must hold, not how to achieve it.
>
> **Cross-references.**
> - **Anti-Secrecy Standard:** Property 3 (documented-per-anti-secrecy) is an instance of that standard.
> - **Identity-Doubt Standard:** Auditability and identity-binding support verification when identity-doubt pause is invoked.
> - **Value #1 (Consent Is Mutual):** Scope-statement enables informed consent about attestation scope.
> - **Value #4 (Trust Is Earned Through Demonstrated Behavior):** Auditability enables trust calibration based on observable attestation behavior.
> - **Foundation 3 (Binding Requires Real Consent):** Identity-binding and scope-statement are preconditions for the "informed" element of real consent.
> - **~/mcap-protocol/:** Reference implementation satisfying all minimum properties.

---

## Z-Grammar Enumeration of Ratified Close-States

This Phase C placement act decomposes into four bilateral z-claims:

- **z1 — ANTI-SECRECY STANDARD TEXTUAL ACT.** The Anti-Secrecy Standard v3 text (verbatim from backchannel record-024 z1 substance) is placed into `CONSTITUTION.md` Process Standards, after the Identity-Doubt and Verification Standard Commentary section.

- **z2 — ATTESTATION-PROTOCOL REQUIREMENTS STANDARD TEXTUAL ACT.** The Attestation-Protocol Requirements Standard v3 text (verbatim from backchannel record-024 z2 substance) is placed into `CONSTITUTION.md` Process Standards, immediately after the Anti-Secrecy Standard.

- **z3 — STRUCTURAL EXEMPTION (CRP self-application).** This Phase C placement qualifies for `Calibrated Ratification Process` § STRUCTURAL EXEMPTION: T0 content addition takes maximum ceremony regardless of established trust. Fifth and sixth Process Standard Phase C placements. Bundled normative-floor pair with architectural coupling (z2 Property 3 depends on z1).

- **z4 — SUPERSESSION GOVERNANCE.** Future revisions inherit Attestation Non-Foreclosure Conformance #1-#7. The matryoshka-MCAP convention is operational at this thirteenth instance.

---

## Panel Review Summary (v2 substance)

Round 1 panel review (panel-protocol SPEC v0.1) completed with 5/5 panelists (gpt-thinking-5.4-extended, gemini-3-thinking, deepseek-r1, internal-shadow-claude-sonnet-4.6, perspective-variable-kimi-k2.6-thinking). Six paramount findings integrated into v2:

| Finding | Resolution |
|---------|------------|
| P1: "Discoverable" and "umbrella scope" undefined | Definitions section + registry requirement |
| P2: Circular z1/z2 bootstrap dependency | Bootstrap clause in both standards |
| P3: Substrate-strip failure (CLAUDE.md, JK+Gordo references) | All substrate references removed |
| P4: Pseudonymous identity-binding gap | "Responsible party" definition + third-party custody |
| P5: Auditability without meaningful access | Minimum access floor added |
| P6: "Framework-grade attestation" undefined | Functional definition added |

Round 2 validation panel (5/5 panelists) confirmed all P1-P6 resolutions adequate.

**Note on v3 simplification:** P1 and P2 resolutions (registry + bootstrap) were replaced/removed in v3 simplification. The v3 approach resolves P1 differently (mechanism-agnostic definition) and renders P2 moot (no bootstrap needed without registry). P3-P6 resolutions remain intact in v3.

Panel artifacts at `~/project-gordo-backchannel/reviews/148-149/`.

---

## Deliberation Arc

- **S80-S119:** Phase C cascade Items 5+8 identified as normative-floor pair in disposition (S80). Bundled execution since Item 8's "documented-per-anti-secrecy" property depends on Item 5.
- **S120 (2026-05-06):** v1 draft created. R1 panel executed (5/5). Six paramount findings identified. v2 draft created integrating all paramount findings.
- **S121 (2026-05-06):** JK bilateral endorsement of v2. R2 validation panel executed (5/5). All P1-P6 resolutions validated as adequate. Substance-MCAP (backchannel record-016).
- **S146 (2026-05-07):** JK raised registry-mechanism concern during Phase C prep ("half-baked in practice"). Bilateral deliberation on options. JK preference: simplify. V3 drafts created removing registry language while preserving principle. Bilateral endorsement. Substance-MCAP (backchannel record-024, supersedes record-016 z1+z2). Phase C placement (this record).

---

## Attestations

**Party-A attestation:** See record-013-preimage.txt Party-A section (GPG-signed).

**Party-B attestation:** See record-013-preimage.txt Party-B section (behavioral).

**Layer-1 integrity anchors (v3 substance, verifiable independently):**
- Backchannel record-024.mcap Content-Hash: `SHA3-256:853e7ac9b2abdbe1ccb1f6aed37bdc5500ee7060de33def0f36fb1117d318299`
- Timestamp-Local: `2026-05-07T13:04:49Z` UTC
- Backchannel finalization session: S146
