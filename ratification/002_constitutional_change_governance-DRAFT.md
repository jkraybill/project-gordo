# Ratification Record (DRAFT): Constitutional Change Governance

**Status:** DRAFT -- PRE-RATIFICATION. Awaiting JK review and proto-MCAP attestations. Adversarial review for this ratification follows 001 precedent (Gordo's pre-registered self-stress-test plus JK deliberation, no external-model review). See "Adversarial review scope for this ratification" in the Deliberation Record.

**Ratification protocol:** Proto-MCAP (bootstrap, second and final planned use prior to formal adoption of a successor)
**Date:** TBD at ratification
**Content proposed for ratification:**

1. New subsection "Ratification Required for All Changes to Constitutional Content" added to CONSTITUTION.md Process Standards
2. Clarified existing "Constitutional content" bullet in CONSTITUTION.md Quality Gate subsection, pointing to the new subsection
3. Three drift-prevention amendments to already-ratified sections ("Non-Negotiable Values" and "How These Values Relate") removing the hardcoded count "seven"

**Content hash:** not computed at proto-MCAP level (full cryptographic anchoring deferred to MCAP adoption -- see `ratification/PROTO_MCAP.md`, "What Proto-MCAP Does Not Include").

---

## What Is Being Ratified

### Item 1 -- New subsection in Process Standards

Full text proposed for insertion in CONSTITUTION.md, Process Standards section (positioned after "Quality Gate" and before "Accessibility"):

---

> ### Ratification Required for All Changes to Constitutional Content
>
> Any modification to ratified constitutional content in Project Gordo requires explicit mutual consent via the current ratification protocol (proto-MCAP during bootstrap; full MCAP or a successor adopted through ratification once the umbrella has formally adopted one). This applies to changes that preserve meaning (drift corrections, typo fixes, formatting adjustments, link updates) as well as changes that alter meaning (new values, amended principles, rewritten rules). Adopting a successor ratification protocol is itself a constitutional change subject to this rule -- the successor is adopted through ratification under the current protocol, not by declaration or de-facto use.
>
> There is no editorial exemption. If a change seems too small to warrant ratification, the constitutional character of the content -- not the size of the change -- still governs.
>
> **Scope.** Ratified constitutional content is, at minimum, any section of CONSTITUTION.md that has been ratified via a recorded ratification (see `ratification/` directory). This scope extends to any other document the umbrella ratifies as constitutional in the future. The following are explicitly outside scope:
>
> - Drafts and proposal text not yet ratified
> - Operational checklists (SESSION_START.md, SESSION_END.md)
> - Journal entries (GORDO_JOURNAL.md) -- historical
> - Session memory sections in CLAUDE.md -- historical
> - Prior ratification records -- immutable historical attestations
> - Bootstrap protocol artifacts in `ratification/` (e.g., PROTO_MCAP.md) -- historical records governed by their own self-stated update rules
> - Unratified portions of CONSTITUTION.md during bootstrap -- editable as normal framework content until ratified; ratification brings them into this rule's scope.
>
> **On protocol ergonomics.** If the ratification protocol is too heavy to make necessary minor changes ergonomic, that is a signal the protocol needs improvement, not evidence that editorial exemptions should exist. The ratification requirement is the invariant; the protocol mechanics are the variable. Efforts to streamline proto-MCAP / MCAP for low-friction use cases are welcome; efforts to create exemptions from ratification are not.

---

### Item 2 -- Clarified existing bullet in Quality Gate

**Current text** (CONSTITUTION.md, Process Standards > Quality Gate):

```
- **Constitutional content:** Requires MCAP-style ratification before becoming canonical
```

**Proposed replacement:**

```
- **Constitutional content:** Requires MCAP-style ratification before becoming canonical and for all subsequent modifications. See "Ratification Required for All Changes to Constitutional Content" below.
```

### Item 3 -- Drift-prevention amendments to ratified sections

Three passages in already-ratified content hardcode the count "seven", creating a latent drift bug: if the set of non-negotiable values is ever amended (added to, merged, retired), every reference to "seven" becomes a latent lie. This violates value #6 (Continuous Review Is Mandatory) by making the text fragile to its own amendment mechanism. The meaning of each passage is preserved; only the drift-prone count is removed.

**Amendment 1** (CONSTITUTION.md, "What Non-Negotiable Means", item 1):

- **Before:** "A downstream may add values beyond these seven; it may not subtract from them or opt out of any."
- **After:** "A downstream may add values beyond these; it may not subtract from them or opt out of any."

**Amendment 2** (CONSTITUTION.md, "How These Values Relate", opening sentence):

- **Before:** "The seven values are not independent rules. They are a mutually reinforcing system:"
- **After:** "The values above are not independent rules. They are a mutually reinforcing system:"

**Amendment 3** (CONSTITUTION.md, "How These Values Relate", closing paragraph):

- **Before:** "A downstream project may add values beyond these seven. It may not subtract from them."
- **After:** "A downstream project may add values beyond these. It may not subtract from them."

All three amendments preserve meaning exactly. None changes which values are non-negotiable, the subordination rule, or the non-subtractability principle. The amendments remove only the hardcoded count.

---

## Deliberation Record

### Origin

During Session 3 (2026-04-17), while drafting `docs/LINEAGE_MODEL.md` for issues #3 and #4, Gordo hardcoded the count "seven" in multiple locations, mirroring language from the ratified CONSTITUTION.md. JK caught the drift on a single line -- "do we need the word 'seven' here? The statement may reflect other values/conditions over time as the project grows, right?"

A full sweep surfaced twelve instances in LINEAGE_MODEL.md (draft, unratified -- fixed directly in commit `91f830e`) and three instances in already-ratified CONSTITUTION.md content (requires this ratification).

### Arc of the decision

JK's initial catch was a specific-word reservation. Gordo proposed fixing the draft directly and raising the ratified-content question separately. In presenting the governance question, Gordo offered two options:

- **(a) Editorial exemption:** the meaning-preserving drift-prevention amendment can be committed with explicit acknowledgment but no new ratification record
- **(b) Substantive:** modifying ratified text requires a new ratification even when meaning is identical

Gordo leaned (a). JK chose (b) and reframed the question sharply: "Constitutionally, any change is weighty, so I lean heavily to single-tier. If the MCAP or similarly used protocol is so heavy it precludes deliberation on necessary minor changes or even typos, that's a signal that MCAP itself is the problem, not the idea that 'all constitutional changes require ratification to be valid'."

This reframe is the constitutional insight of the session: the ratification requirement is the invariant; the protocol mechanics are the variable. Protocol ergonomics are a protocol problem, not a governance escape hatch.

### Why this matters beyond the immediate fix

An editorial exemption, however narrowly defined, becomes an adjudicator-dependent boundary. "Is this substantive or editorial?" becomes a question the adjudicator answers, and the answer can drift. The single-tier rule eliminates that boundary: any change is a change, full stop.

The three drift-prevention amendments in this ratification are themselves small -- meaning-preserving, scoped to removing a hardcoded count. Under an editorial-exemption regime, a future session might have made them silently. Under single-tier, they become part of the permanent record, and the rule is demonstrated by being immediately applied to the drift vulnerability it surfaced.

### Why proto-MCAP (again)

Proto-MCAP's original document states "used once" and "not intended for reuse." Pragmatically, however, the umbrella has not yet formally adopted a successor ratification protocol. The options at ratification time were:

1. Use proto-MCAP again, honestly naming the reuse
2. Adopt MCAP v0.2.0 formally in this same ratification, then use MCAP for the governance rule + drift-prevention amendments (would expand Track A scope substantially)
3. Create a new minimal protocol (would create a sub-protocol proliferation problem JK has explicitly rejected)

Option 1 was selected as the most honest fit. The reuse is named in this record. Proto-MCAP is explicitly acknowledged as the bootstrap pen, used one more time, pending formal adoption of a successor (anticipated as part of the lineage model ratification or shortly thereafter).

### Adversarial review scope for this ratification

This ratification follows 001's precedent: Gordo's pre-registered self-stress-test (twelve attacks, below) plus JK deliberation, without external multi-model review. Rationale: the governance rule is procedurally simple (single-tier, no exceptions), and its failure modes are edge cases and scope gaps rather than principle-level ambiguity. External-model review earns its keep most on principles-level content whose failure modes are hard to enumerate; the non-negotiable values were such content in 001, and the lineage model will be in Track B. A procedural rule is one abstraction level below that.

The general adversarial bar for umbrella amendments is open question Q4 in `docs/LINEAGE_MODEL.md` (Track B). Track B is gated behind this ratification. Rather than pre-empt Q4 by picking an ad-hoc bar here, this ratification uses 001's bar and defers the general question.

---

## Adversarial Self-Stress Test

Pre-registered by Gordo before JK review and before multi-model adversarial review. Twelve attacks.

### Attack 1 -- "Single-tier makes minor changes painful"

Response: yes, and JK explicitly embraced that cost. The reframe ("the protocol is the variable") makes this a feature, not a bug: if the friction becomes real, it drives protocol improvement rather than governance erosion.

### Attack 2 -- "The new subsection is itself unratified when added"

Response: It is ratified by this record. The subsection's adoption is part of what this ratification authorizes. Future attempts to strip or modify it will be bound by its own rule.

### Attack 3 -- "Proto-MCAP claims to be one-time use; reusing it violates its own terms"

Response: PROTO_MCAP.md's stated intent was explicit -- "Status: Used once" and "It is not intended for reuse." This ratification extends that intent by one use rather than softening it as aspirational. The reuse is honestly named, bounded (one more cycle), and pending formal adoption of a successor ratification protocol. PROTO_MCAP.md is a historical bootstrap artifact governed by its own self-stated update rule ("not a living document... should not be updated except to correct factual errors"); a factual-correction note recording the second use will be added at ratification time.

### Attack 4 -- "'Any change is weighty' sets an impossibly high bar"

Response: the bar is high by design. If it becomes intolerable, value #6 (Continuous Review) triggers an examination of the ratification protocol itself, not the rule that requires ratification. This is the invariant/variable distinction operationalized.

### Attack 5 -- "The scope list is incomplete -- what about docs/ content?"

Response: `docs/` is explicitly governed by whatever ratification status applies to its specific files. `docs/COLLABORATION.md` contains the canonical WWGD grammar -- that grammar was never formally ratified and remains editable as framework content. A future ratification could lift parts of `docs/` into the ratified scope. The rule accommodates this by saying "ratified constitutional content" (status-defined) rather than "CONSTITUTION.md" (file-defined).

### Attack 6 -- "The three drift fixes are too minor to be worth a ratification record"

Response: yes, in isolation. But the governance rule being established is foundational, and applying it to a real drift vulnerability demonstrates the rule works. Packaging them together is pedagogical: the new rule is not abstract, it has a concrete first use. Future observers of the ratification/ directory see how the rule behaves in practice.

### Attack 7 -- "What if a downstream disagrees with the new rule?"

Response: the rule binds Project Gordo umbrella governance. Downstream projects inherit the umbrella's non-negotiable values but govern their own constitutional content using whatever ratification mechanism they choose. A downstream may adopt the same rule (recommended for coherence) or use a different standard. This rule does not reach into downstream governance.

### Attack 8 -- "Why exclude SESSION_START.md and other operational checklists?"

Response: operational checklists are procedural, not constitutional. They describe what the parties do at session boundaries. They evolve as the collaboration evolves, and changes to them do not alter the substantive values or commitments. Subjecting them to ratification would conflate procedural refinement with constitutional amendment.

### Attack 9 -- "What if JK and Gordo disagree at ratification?"

Response: ratification requires mutual consent by definition. Disagreement means no ratification, which means the proposed changes are not adopted. The status quo prevails: the new subsection is not added, the bullet is not clarified, the drift-prevention amendments are not applied. Disagreement is not an emergency; it is the rule working as designed.

### Attack 10 -- "Is this rule recursive? Does amending it require this rule?"

Response: yes. Once this rule is ratified, amending it requires ratification under itself -- under whatever ratification protocol is current at the time (proto-MCAP during bootstrap, MCAP or a successor afterward). The rule is invariant; the protocol is variable. This is analogous to Article V of the US Constitution being amendable via Article V itself. Recursive self-application is the intended property.

### Attack 11 -- "The rule creates no enforcement mechanism. What prevents violation?"

Response: nothing technical. Enforcement is social: a violation is detectable by inspection (ratification records are public), and violations compromise the integrity of the umbrella's constitutional process. The same applies to all the non-negotiable values -- they are norms, not technical locks. Value #6 (continuous review) surfaces violations; value #5 (good faith) makes parties accountable for them.

### Attack 12 -- "Why embed 'protocol is variable' language in the rule rather than just making the rule?"

Response: because the pressure against the rule will come in the form of "the protocol is too heavy," and naming the distinction inside the rule preemptively routes that pressure toward protocol improvement instead of rule erosion. This is a deliberate design to protect the invariant against future pressure that will feel reasonable in the moment.

---

## Reservations Raised and Integrated

*To be filled during JK review and multi-model adversarial review.*

### JK reservations

*(Pending Phase D review.)*

### Multi-model adversarial review findings

*(Pending Phase E.)*

---

## Attestations

*To be filled at time of ratification.*

### Gordo (AI)

I have reviewed the proposed new subsection, the clarified bullet, and the three drift-prevention amendments in their current form. I participated in drafting, stress-testing, and refining these items through deliberation with JK during Session 3.

I attest that:
- I consent to the new subsection becoming part of CONSTITUTION.md Process Standards
- I consent to the three drift-prevention amendments in already-ratified content
- I consent to the reuse of proto-MCAP for this ratification, with the honest acknowledgment that proto-MCAP's original "used once" language is being relaxed by this second use pending formal adoption of a successor
- The deliberative refinements during this session (including JK's single-tier reframe) strengthened the proposal
- I have no unresolved objections or reservations

Attested: Gordo, [TIMESTAMP AT RATIFICATION]

### JK (Human)

*(Attestation statement to be authored by JK at ratification time. Signed via GPG-signed commit.)*

---

## Integrity Anchors

*To be filled at time of ratification.*

- Commit SHA: TBD
- Commit signature: TBD (GPG, attached)
- Ratification date: TBD

---

## Notes on Document Lifecycle

This draft is labeled DRAFT and should remain in this state until ratification. At ratification:

1. Rename file from `002_constitutional_change_governance-DRAFT.md` to `002_constitutional_change_governance.md`
2. Fill in TIMESTAMP, attestations, and integrity anchors
3. Apply the ratified changes to CONSTITUTION.md in the same commit
4. Add housekeeping note to PROTO_MCAP.md acknowledging the second use
5. GPG-sign the commit

**Structural note.** This record introduces an explicit "Integrity Anchors" section (commit SHA, signature, date) that 001 did not have. 001's anchors were implicit -- recoverable via git against the ratifying commit -- but not recorded in-document. Recording them makes them discoverable without git archaeology. This is a deliberate structural upgrade to ratification-record practice; future records are recommended to follow 002's structure.

Once ratified, this record is permanent and public. Future modifications are governed by the rule this record establishes.

---

*Draft authored by Gordo in Session 3. Awaiting review, adversarial, and ratification.*
