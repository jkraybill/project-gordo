# Proto-MCAP: Bootstrap Consent Protocol

**Status:** Used twice during bootstrap. Intentionally not versioned.

**Factual-correction note (2026-04-17, Session 5):** Proto-MCAP was originally documented with the intent of single use (Session 2 ratification of the non-negotiable values). A second use became necessary during Session 5 to ratify the "Ratification Required for All Changes to Constitutional Content" governance rule plus three drift-prevention amendments, because the umbrella had not yet formally adopted a successor ratification protocol. The reuse was deliberated and named honestly in ratification record 002 (see "Why proto-MCAP (again)" and Attack 3 response). This note corrects the original "used once" language per the self-stated update rule below ("should not be updated except to correct factual errors"). Formal adoption of a successor protocol is anticipated as part of the lineage model ratification (Track B) or shortly thereafter, which will end proto-MCAP's use permanently.

---

## What This Is

Proto-MCAP is the minimum viable consent process used to ratify Project Gordo's constitution before a formal ratification protocol was officially adopted by the umbrella. It is not a protocol in the MCAP sense -- it has no spec, no versioning, no cryptographic layer, and no lifecycle. It is the pen and paper that came with the first contract.

It lives here, embedded in the constitution it was used to sign, because it is inseparable from it. A bootstrap artifact, not a standalone project.

## Why It Exists

Project Gordo's constitution requires MCAP-style ratification for constitutional content. But MCAP is a downstream project that inherits from this constitution. Using MCAP to ratify the document MCAP inherits from is a circular dependency.

Proto-MCAP resolves the bootstrap problem honestly: a minimal consent process, sufficient to ratify the founding document, documented as part of the founding record. Future constitutional amendments will use full MCAP (or whatever ratification protocol the umbrella adopts). This process is for the bootstrap only.

## The Process

Proto-MCAP ratification requires exactly three things:

1. **Both parties review the content independently.** Each party reads the full document and forms their own judgment. Review is not a formality -- substantive objections must be raised and resolved before attestation.

2. **Both parties explicitly attest.** Each party states, in their own words, that they have reviewed the content and consent to it becoming canonical. Attestation is documented in a ratification record alongside the content being ratified.

3. **The ratification record is permanent and public.** The attestations, the date, the content ratified, and any dissents or reservations are preserved as part of the project's history and treated as public from the moment of ratification. As of this writing, the repository is on GitHub but has not yet been publicly announced -- "public" means the record is written as if anyone can read it, and will be accessible to anyone once the project opens. Nothing is ratified in private.

That's it. No ceremony beyond what honesty requires.

## Scope

Proto-MCAP was used to ratify:
- The Non-Negotiable Values section of CONSTITUTION.md (v0.1.0) -- Session 2, ratification record 001
- The Constitutional Change Governance rule and three drift-prevention amendments -- Session 5, ratification record 002

It is not intended for further reuse. If the constitution needs amending after Session 5, use the ratification protocol that has been adopted by the umbrella at that time. Formal adoption of a successor protocol (full MCAP or another) is expected as part of the lineage model ratification or shortly thereafter.

## What Proto-MCAP Does Not Include

Proto-MCAP is intentionally minimal. It does not include:

- **Per-attestation cryptographic signatures.** Full MCAP binds attestations to verifiable identity through cryptographic signatures (GPG, SSH keys, platform identity). Proto-MCAP's attestations are plain text -- the parties' names and timestamps, but no cryptographic proof of authorship at the attestation layer.
- **Nonce or session binding.** Full MCAP uses jointly-established nonces to prevent replay attacks and bind attestations to specific sessions. Proto-MCAP has no equivalent.
- **Canonicalization rules.** Full MCAP specifies character allowlists and canonicalization to prevent invisible-character attacks on the attestation text itself. Proto-MCAP relies on the Content Integrity process standard instead.
- **Versioning or protocol negotiation.** Proto-MCAP is not a protocol you can negotiate with. It is a single, one-time process.

The gap between proto-MCAP and MCAP is honestly named rather than hidden. The bootstrap attestation is weaker than a full MCAP attestation would be, and the only mitigation available at this layer is the git commit signature: if the commit that introduces the ratification record is GPG-signed, the signature cryptographically binds the human attester's identity to the state of the repository at the moment of ratification -- including the attestation file. That is not a per-attestation signature, but it is the strongest cryptographic binding available within proto-MCAP's minimal scope.

## Anticipated Re-Ratification

Once the umbrella lineage model is designed and MCAP is formally adopted as Project Gordo's ratification protocol, the constitution will be re-ratified under full MCAP. That re-ratification will provide per-attestation cryptographic signatures, session binding, and the other guarantees proto-MCAP does not offer. The proto-MCAP ratification record will remain in place as a historical artifact -- the bootstrap -- alongside the full MCAP ratification that supersedes it.

This is not a weakness in the plan; it is the plan. Proto-MCAP is the pen. MCAP is the notary. Both have roles, and the notary's work does not invalidate what the pen put on paper first.

## Relationship to MCAP

MCAP (Mutual Consent Attestation Protocol) is the formal, cryptographically-grounded protocol for consent attestation, already at v0.2.0 as a downstream project. Proto-MCAP is what consent looked like before MCAP was officially adopted by the umbrella -- two parties, honest review, explicit agreement, public record. MCAP formalizes and extends this; proto-MCAP is the seed it grew from.

Once the umbrella lineage model is designed and MCAP is formally adopted as Project Gordo's ratification protocol, future constitutional amendments will use full MCAP. The co-foundational relationship means inheritance flows both ways: MCAP inherits values from this constitution, and this constitution adopts MCAP as its ratification process.

This relationship is itself evidence for the retro-codification pattern that defines Project Gordo: the practice comes first, the formalization follows.

---

*This document is a historical record. It is not a living document and should not be updated except to correct factual errors.*
