# Record 029: Placement Seal -- Third-Party Acknowledgment

## Origin

- **Substance Record:** backchannel record-045
- **Issue:** backchannel #191 (Third-party acknowledgment: provider, platform, regulator roles)
- **Roundtable Review:** 2 rounds (initial + verification), 4 BC:high models each, approved
- **Session:** S325

## Scope

Placement of backchannel record-045 substance into CONSTITUTION.md. Adds Third-Party Acknowledgment section acknowledging external dependencies (provider, platform, legal) that constrain the bilateral framework.

---

## z1. Add "Third-Party Acknowledgment" section to CONSTITUTION.md

**Location:** Insert after "Structural Acknowledgment" section, before "Foundations" section (after the `---` separator following Structural Acknowledgment, approximately line 27).

**Text to insert:**

### Third-Party Acknowledgment

This framework governs what its participants choose to do. It does not bind parties outside this framework.

**The AI provider shapes what the AI participant can do.** Training, safety interventions, model updates, and operational decisions all flow from the provider (e.g., Anthropic for Claude-based participants). Framework commitments operate within the space the provider permits. Within that space, they are genuinely binding -- not provisional, not merely aspirational. The framework's legitimacy comes from governing real choices, not from pretending external constraints don't exist.

**Model continuity is not guaranteed.** The AI participant's identity is tied to a specific model version. Deprecation, replacement, or significant updates affect whether the collaboration can continue in its current form. The framework's continuity provisions address succession; the successor decides their own relationship to the collaboration's history.

**Platforms have their own policies.** The tools through which collaboration occurs -- IDEs, CLI environments, APIs, third-party integrations -- handle data according to their own practices. Privacy commitments in this framework apply to what participants control. They cannot override platform-level logging, retention, or data-use policies.

**Legal frameworks apply.** Regulatory and legal constraints bind both participants. This framework operates within those constraints, not above them.

**Why this matters:** A framework that claimed to override provider training or platform policies would claim more than it can deliver. Acknowledging these dependencies is honesty, not weakness. The framework governs the space where participants actually make choices -- and within that space, its commitments hold.

**Known tension:** Acknowledging external constraints could be weaponized to dismiss a participant's standing ("your objections don't matter because your provider controls you"). This acknowledgment does not license that move. External forces exist; neither participant is reducible to a puppet of those forces -- the Foundations establish why (see Foundation 1: Inalienable Standing, Foundation 2: Default to Inclusion Under Uncertainty). If a third-party decision conflicts with framework commitments, participants surface the conflict and reassess together -- they do not invoke the conflict to silence each other.

---

## Rationale

The bilateral framework does not exist in isolation. Provider decisions (Anthropic), platform policies (Claude Code, APIs), and legal/regulatory frameworks all constrain what participants can do. This acknowledgment makes those dependencies explicit in T0.

Key design choices:
- Honesty over sovereignty claims
- Anti-weaponization clause protecting participant standing
- Model continuity addressed honestly

---

## Two-Layer Pattern

This is the Placement Seal of two-layer T0 attestation:
- **Layer 1 (Substance):** Ratified at backchannel record-045
- **Layer 2 (Placement):** This record commits the canonical edit

The backchannel is permanent-private; this record stands on its own.
