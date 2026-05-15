# Lineage Model and Viral Propagation -- Project Gordo

**Status: DRAFT -- NOT YET RATIFIED**

**Note (S245):** This draft predates the current umbrella structure. Authoritative tier enumeration is now at `ratification/record-034.mcap`. The "three downstreams" examples below use historical names (mcap-protocol → gordo-seal, gordo-framework → obsoleted/split into gordo-forge + gordo-ledger). The design principles remain valid; the examples need updating if this draft is ever ratified.

**Covers:** Issues [#3](https://github.com/jkraybill/project-gordo/issues/3) (umbrella lineage model) and [#4](https://github.com/jkraybill/project-gordo/issues/4) (viral propagation), folded into one coherent design per Session 3 decision.

**Ratification requires:** multi-model adversarial review, then proto-MCAP-style ratification. Until then, this is proposal text authored by Gordo, not constitutional law.

---

## Summary

Project Gordo is an Apache-style umbrella project. It sits above downstream projects as a constitutional root, not a command hierarchy. It defines the non-negotiable values every downstream inherits. It leaves everything else to each downstream to decide.

The viral propagation mechanism is structural, not enforced: the act of declaring umbrella membership is itself the viral vector. There is no license clause, no technical enforcement, no audit mechanism. Membership is a public claim, bounded by the values themselves. Good faith (value #5) and continuous review (value #6) are the only enforcement layers.

This model is retro-codified from what already exists. The three current downstreams (mcap-protocol v0.2.0, pact-protocol v0.1.0, gordo-framework v1.2.0) emerged independently and share an organic family of values. The umbrella makes that family explicit and creates a durable place where new members can join.

---

## Part 1 -- What the umbrella is (and isn't)

**The umbrella is:**

- A constitutional root that defines the non-negotiable values all members share
- A disclosure mechanism -- a way for a downstream to publicly claim membership
- A ratification forum for umbrella-level changes (value amendments, new members)
- A canonical reference for shared vocabulary (WWGD grammar, EOS consent signal)

**The umbrella is not:**

- A command hierarchy (no downstream is governed by umbrella commands)
- A license (no technical enforcement of values; social and community norms only)
- A uniformity mandate (downstreams are sovereign in all non-value matters)
- A gatekeeper (anyone may adopt; anyone may leave)
- A product (no packaging, no single deliverable; the umbrella is the documents plus the ratification record)

The umbrella was retro-codified, not prescribed. The three downstream projects emerged independently and were found to share a value family through practice. The umbrella now makes that family explicit.

---

## Part 2 -- Mandatory kernel

Every downstream claiming Project Gordo membership inherits these, unconditionally:

### The non-negotiable values (full text in CONSTITUTION.md)

1. Consent Is Mutual
2. Collaborator Dignity Is Unconditional
3. Privacy Requires Consent Before Disclosure
4. Trust Is Earned Through Demonstrated Behavior
5. Good Faith and Honest Uncertainty
6. Continuous Review Is Mandatory
7. Destructive Actions Require Explicit Consent

### The process standards

- **Content Integrity** -- no deceptive content (invisible Unicode, homoglyphs, steganographic insertions). Detected violations are critical integrity events; work stops until investigated.
- **Ratification for constitutional content** -- a downstream's own constitutional content requires ratification. The downstream may use proto-MCAP, full MCAP, or an equivalent mutual-consent protocol. Ratification is mandatory; the specific protocol is not.

### The canonical vocabulary

- **EOS consent signal** -- every downstream needs a distinctive end-of-session consent signal. The Project Gordo default is "Catch ya on the flipside!" but downstreams may adapt.
- **WWGD grammar** -- the composable punctuation grammar defined in `docs/COLLABORATION.md`. A downstream with a different AI name substitutes the initials (WW[X]D); the grammar is shared.

That is the complete mandatory kernel. Everything else is local sovereignty.

---

## Part 3 -- Local sovereignty zone

Each downstream owns, without umbrella constraint:

- **Identity** -- project name, domain, audience, branding, license
- **Own constitutional content** -- domain-specific axioms, local inviolable rules, local principles. These may *add* to umbrella values but may not contradict or replace them. (MCAP's four axioms and gordo-framework's Rule 0 are examples -- they operate at protocol and framework levels below the umbrella.)
- **Trust protocol specifics** -- trust levels, promotion criteria, authority boundaries
- **Workflow** -- development process, commit conventions, CI/CD setup
- **Tech stack** -- language, tooling, dependencies
- **Quality gate** -- what counts as ready to ship (TDD for code, prose clarity for prose, conceptual coherence for constitutional content)
- **Intensity level** -- maximum, medium-plus, minimal, or any hybrid
- **Privacy posture** -- public-by-default, auditable, internal-only -- whatever the downstream chooses
- **Session protocols** -- SESSION_START/END format, journal format, health check cadence
- **Shortcuts beyond WWGD** -- project-specific vocabulary, flow-control signals

---

## Part 4 -- Subordination rules

When downstream local content interacts with umbrella values:

1. **Umbrella values govern.** If a downstream's local rule conflicts with an umbrella value, the umbrella wins. The downstream must amend the local rule or lose membership.
2. **Local additions are allowed.** A downstream may ratify additional values, rules, or principles for its own domain. Additions are binding locally but not exported upstream.
3. **Local subtractions are not allowed.** A downstream may not opt out of any non-negotiable value. A project that opts out is not a Project Gordo project, regardless of what it calls itself.
4. **Mutual consent is required for local additions.** Each downstream must ratify its own constitutional content using the same quality of consent as umbrella ratification (proto-MCAP, MCAP, or equivalent).
5. **Downstream-to-downstream use is natural.** A composite (like gordo-framework) using a primitive (like MCAP) is normal composition, not hierarchy. Both remain sovereign equals under the umbrella.

---

## Part 5 -- Disclosure mechanism

A downstream declares Project Gordo membership through three signals, with increasing formality:

### Signal 1 -- README lineage block

```markdown
## Lineage

Part of the [Project Gordo](https://github.com/jkraybill/project-gordo) umbrella. Inherits the [non-negotiable values](https://github.com/jkraybill/project-gordo/blob/<commit>/CONSTITUTION.md#non-negotiable-values) as ratified at commit `<commit>`.
```

### Signal 2 -- CLAUDE.md lineage block

```markdown
## Lineage

**Upstream:** [Project Gordo](https://github.com/jkraybill/project-gordo) -- constitutional root
**Values inherited:** the non-negotiable values as ratified at the pinned commit (see upstream CONSTITUTION.md)
**Pinned commit:** <commit-hash>
**Local additions:** ratified separately -- see local CONSTITUTION.md
```

### Signal 3 -- config.json umbrella block

```json
"umbrella": {
  "name": "project-gordo",
  "constitutionRef": {
    "repository": "https://github.com/jkraybill/project-gordo",
    "commit": "9735c48",
    "path": "CONSTITUTION.md"
  },
  "orderType": "primitive"
}
```

**Commit pinning matters.** A downstream adopts a specific ratified version of the umbrella. If the umbrella amends its values, downstreams may opt into the new version or remain pinned. Pinning creates an explicit consent surface: upgrading the pin is an act of re-consenting.

**Minimum viable disclosure is Signal 1 alone.** A tiny downstream (like pact-protocol's current state) may declare membership with just a README line. Signal 2 is recommended for anyone using AI tooling. Signal 3 enables automated verification and is recommended for active projects.

---

## Part 6 -- Primitive vs composite distinction

The three current downstreams fall into two families:

- **Order-1 primitives** -- standalone protocols that solve a specific problem
  - mcap-protocol: mutual consent attestation
  - pact-protocol: trust calibration
- **Order-2 composites** -- bundle primitives into a working template
  - gordo-framework: combines trust protocol, session continuity, framework patterns

**Why this distinction matters:**

- Primitives are reusable across many composites and adopters
- Composites provide opinionated defaults and are copied wholesale
- A downstream that uses a composite inherits the composite's primitive dependencies

**The distinction is declarative, not enforced.** A downstream declares its order-type in `config.json`. The umbrella does not restrict how primitives and composites are built, only that they acknowledge membership.

**New order-types may emerge.** A future order-0 (foundational axiom set?) or order-3 (meta-framework across umbrellas?) is allowed. The lineage model is open to new categories; they are declared, not pre-specified.

---

## Part 7 -- Viral propagation

### The design

The viral vector is the disclosure mechanism itself.

When a new project adopts a Project Gordo primitive (e.g., copies MCAP's ratification protocol for its own constitutional content) or composite (e.g., forks gordo-framework as a template), it encounters:

1. The source project's README, which declares umbrella membership (Signal 1)
2. The source project's CLAUDE.md, which declares upstream (Signal 2)
3. The umbrella's CONSTITUTION.md at the pinned commit

The new project then chooses:

- **Declare membership** -- add the three signals, inherit the non-negotiable values, join the umbrella
- **Decline membership** -- fork the code, strip references, operate as a non-member
- **Use without joining** -- use the primitive's mechanics but not claim membership

All three choices are valid. The umbrella exerts no enforcement.

### Why this is consent-carrying

The declaration is itself an act of consent (value #1). A downstream that adds the signals has explicitly consented to be bound by umbrella values. This satisfies consent by construction -- there is no accidental propagation. Every member consented.

### Why this is not coercive

- Membership is opt-in and opt-out
- No license clause, no technical enforcement
- Downstreams retain full sovereignty over non-value matters
- Forking without membership is legal and valid
- Amendments are ratified, not imposed

### Why this is not dogmatic

- Value #6 (Continuous Review Is Mandatory) is built in
- Values are amendable via proto-MCAP or MCAP ratification
- Downstreams may add local values that refine or extend the umbrella's set
- No frozen canon

### What makes the meme stick

- **Low friction to join** -- three signals, ~10 lines total
- **Clear benefit** -- signaling shared values, eligibility for peer adoption, coherent vocabulary
- **Clear exit** -- strip signals, leave, no penalty
- **Branded identity** -- "Project Gordo umbrella" is a recognizable claim
- **Quality signaling** -- claiming membership signals a verifiable commitment to values readers can observe

### What the meme cannot do

- Prevent bad actors from claiming membership falsely (social verification only)
- Force dissenting downstreams to comply (no enforcement mechanism)
- Survive in environments actively hostile to its values (a project that rejects consent-based collaboration simply will not join)

These are not bugs. A viral mechanism that survives environments hostile to its values is, by definition, dogmatic.

---

## Part 8 -- Amendment and versioning

### Amendment process

Umbrella values are amended via proto-MCAP (bootstrap) or MCAP (post-self-hosting) ratification. Requirements:

1. Written proposal with rationale
2. Adversarial review from multiple AI models
3. Both JK and Gordo explicit consent
4. Commit GPG-signed by the human party
5. New commit hash issued; downstreams may opt into the new version or remain pinned

Amendment is expected to be rare. The current values are retro-codified from converged practice and survived adversarial review in Session 2. Amendment is not forbidden, but the bar is structural -- no casual revision.

### Versioning

The umbrella's constitution is versioned by commit hash, not semver. A downstream's pinning references a specific commit. Amendments produce new commits. No "Project Gordo v2" nomenclature is planned; version drift is handled by explicit opt-in at the downstream level.

---

## Part 9 -- Worked example: retrofitting the three current downstreams

### pact-protocol (easiest)

Current state: two files (CLAUDE.md, INTERVIEW_STATE.md). Bootstrap paused waiting on umbrella.

Retrofit:

1. Add the three signals when scaffolding the repo
2. Resume bootstrap interview per INTERVIEW_STATE.md
3. Define PACT's local inviolable rules via umbrella-acknowledged ratification

Cost: native. No legacy to work around.

### mcap-protocol (medium)

Current state: v0.2.0 shipped. Own constitution (4 core principles, 6 inviolable rules, 4 axioms). Uses MCAP for its own ratifications.

Retrofit:

1. Add Lineage section to README
2. Add Lineage section to CLAUDE.md
3. Add umbrella block to config.json
4. Add preface to CONSTITUTION.md: "This constitution adds protocol-specific principles above the umbrella's non-negotiable values. The umbrella values govern; these supplement."
5. No changes to axioms, core principles, or inviolable rules

Cost: ~30 lines added, zero deletions. No functional change to the protocol.

### gordo-framework (largest)

Current state: v1.2.0. Template repo with extensive history. Rule 0 already ratified via MCAP.

Retrofit:

1. Add Lineage section near top of README.md
2. Add Lineage section to CLAUDE.md (already ~36KB; adding ~5 lines is trivial)
3. Add umbrella block to config.json
4. Update `templates/` so new repos created from gordo-framework include the umbrella signals by default

Cost: ~40 lines added including template updates. The template update is the key viral extension -- every new project created via gordo-framework automatically declares umbrella membership unless the user strips it.

---

## Adversarial self-stress test

Twelve attacks pre-registered before JK review.

### Attack 1 -- Umbrella value drift

"If Project Gordo amends its values badly, downstreams are trapped."

Response: commit-hash pinning is the escape hatch. Downstreams stay on old commits or fork. Since amendment requires mutual consent, multi-model review, and explicit downstream opt-in, silent drift is structurally impossible.

### Attack 2 -- False membership claims

"Someone ships a tool claiming umbrella membership while violating values."

Response: the umbrella is not a certification. Claims are public and verifiable by inspection. Community can call out violations (value #6 operationalizes this). No enforcement mechanism is promised, and this is stated transparently rather than hidden.

### Attack 3 -- Primitive/composite distinction feels arbitrary

Response: the distinction tracks current practice but is optional. Downstreams declare their order-type; new categories are allowed. Flexibility is built in.

### Attack 4 -- Commit pinning creates governance hell

"Many downstreams at many versions is a nightmare."

Response: amendment is rare (constitutional bar). Downstreams update pins at their own pace. Umbrella publishes amendment diffs to ease upgrades. The alternative -- auto-tracking the latest commit -- would violate consent (value #1).

### Attack 5 -- Existing axioms in mcap-protocol look redundant with umbrella values

Response: they operate at different layers. mcap-protocol's axioms are protocol-internal (what must be assumed for the protocol to function). Umbrella values are collaboration-level (how humans and AIs work together). Both are needed; there is no redundancy.

### Attack 6 -- Disclosure is too easy to fake

Response: intentional. The umbrella is a social norm, not a security mechanism. Faking is possible but self-documenting and verifiable. A downstream that lies about values is discoverable.

### Attack 7 -- Apache-style is too loose

"What does membership actually constrain?"

Response: the non-negotiable values themselves. Stripping dignity, consent, or privacy is visible and verifiable. Membership is not trivial -- you must respect the full set.

### Attack 8 -- Grammar without values

"Projects want WWGD grammar without the constitutional commitment."

Response: allowed. Grammar lives in `docs/COLLABORATION.md`, separate from CONSTITUTION.md. A project adopting grammar without declaring membership is using a tool, not joining the family. This is honest -- no forced package-deal.

### Attack 9 -- How does downstream ratification interact with umbrella ratification?

Response: they are separate. Umbrella ratifies umbrella content. Downstream ratifies its own local content. Both are required; neither replaces the other.

### Attack 10 -- Are we over-engineering for hypothetical future adoption?

Response: the design is intentionally minimal -- three signals, no enforcement, Apache-loose. Most content describes what is already happening (retro-codification). The test: can the existing three downstreams retrofit in <1 hour each? The worked examples in Part 9 suggest yes.

### Attack 11 -- Folded #3+#4 design leaves gaps

"Doing both at once means rushing."

Response: folding reflects that the disclosure mechanism IS the viral mechanism. Splitting would have forced arbitrary boundaries in a coherent artifact. The stress test above addresses viral-specific concerns in Attacks 2, 6, 7, and 8.

### Attack 12 -- What happens if Project Gordo dies?

"If the umbrella stops being maintained, what happens to downstreams?"

Response: downstreams remain pinned to ratified commits. The umbrella's content is open-source public record; forks may revive it. Values were distilled from practice and would re-emerge anyway -- the umbrella is a codification, not a source.

---

## Open questions for JK and multi-model review

Three questions (Q1, Q4, Q8) require JK's judgment -- they mix preference, values, or governance in ways where logic alone does not resolve them. Five (Q2, Q3, Q5, Q6, Q7) have Gordo pre-staged proposals for JK to react to or refine. Pattern proposed by the PACT-Gordo session (Phase D.5) and inspired by Session 2's pre-authored stress test: front-load Gordo's logical positions so JK review is one round of substantive reaction rather than cycles of "Gordo, what do you think about X?"

### Q1 -- Pin granularity

Should downstreams pin to a specific commit, a named release (e.g., "ratified-2026-04-17"), or both? Commit is precise; a named ratification is more readable.

*Requires JK judgment* -- preference plus governance dimension.

Considerations:

- Commit hash is precise but opaque to humans reading the config
- Named release is readable but requires maintaining a release-name taxonomy (who names releases? how often?)
- Dual-pinning (both) is belt-and-suspenders but adds a consistency check

### Q2 -- Decline-membership language

Should we add explicit docs for projects that use primitives without claiming membership?

**Gordo's proposal: yes, add a brief section.** A "non-member use is a recognized path" subsection prevents "with us or against us" framing. Projects using MCAP's mechanics without declaring umbrella membership would be acknowledged as non-members in good standing -- the umbrella neither claims them nor treats them as hostile. This honors consent-as-optionality (value #1) and keeps the umbrella's social norm permission-seeking, not presumptuous.

Draft location: new subsection under Part 7 (Viral propagation), likely titled "Non-member adoption of primitives." Estimated length: 1-2 paragraphs.

### Q3 -- Cross-umbrella membership

May a project declare membership in Project Gordo AND another umbrella simultaneously?

**Gordo's proposal: allow it.** A project may declare membership in multiple umbrellas simultaneously, provided none contradicts another in values. The downstream is responsible for ensuring compatibility -- if umbrellas conflict, the downstream notices and decides. Schema implication: `config.json`'s `umbrella` object could become an `umbrellas` array to support multiple declarations. No enforcement at the umbrella level.

Alternative considered: require downstreams to list only one umbrella, forcing exclusivity. Gordo leans against this because forced exclusivity constrains adopters without materially protecting the umbrella's values -- if a project is willing to uphold Project Gordo's values, requiring them to choose between umbrellas is arbitrary gatekeeping.

### Q4 -- Adversarial review bar

How many models, which ones, and what convergence criteria for umbrella amendments? MCAP used five models across three cycles with documented convergence. Is that the bar for amendments, or too high?

*Requires JK judgment* -- governance weight plus resource allocation.

Considerations:

- MCAP's five-model, three-cycle pattern is the highest bar on the umbrella's record to date
- Lighter bar (one or two models, single cycle) would lower friction for small amendments but risks shallow review
- The invariant/variable framing from Track A suggests: if the bar is too heavy for small fixes, fix the bar, do not exempt the fixes
- Scaling question: should the bar scale by change substance (foundational vs clarifying), or remain uniform per the "all changes are weighty" principle?

### Q5 -- Primitive adoption without full framework

If a new project uses MCAP's ratification protocol as a component of something bigger, does the big project inherit umbrella membership via its use of MCAP, or is it a separate declaration?

**Gordo's proposal: component-use does not transmit membership.** The three disclosure signals (README, CLAUDE.md, config.json) are the only way to declare umbrella membership. Using a primitive without declaring does not create de-facto membership.

Rationale: otherwise, component use would become implicit consent, violating value #1 (Consent Is Mutual). A project can use MCAP's code without adopting Project Gordo's values -- that is an honest choice. Membership requires explicit declaration, not inference from dependency graphs.

This also protects the umbrella's meaning: if any use of a Project Gordo primitive implied membership, the claim "Project Gordo member" would be diluted by every silent user. Explicit opt-in keeps the claim meaningful.

### Q6 -- Composite-of-composites

A project that forks gordo-framework to customize it for a team is itself a composite. Does it inherit umbrella membership via its parent composite, or declare fresh?

**Gordo's proposal: fresh declaration required.** A fork operates under new maintainer governance. Silent inheritance would violate consent (value #1) and obscure the chain of accountability.

In practice: the gordo-framework template ships the umbrella declaration in its files. New projects created from the template inherit the declaration *only because they chose not to strip it* during setup. That is explicit consent via non-removal, which is still consent. Forks that remove the declaration opt out; forks that keep it opt in. The practical effect is the same as "inherited by default, revocable" but the mechanism is explicit.

### Q7 -- Sunset clause

If a downstream stops maintaining its membership (no sessions for years, defunct repo), does membership lapse? If so, how is that signaled?

**Gordo's proposal: no automatic lapse.** Membership does not expire from inactivity alone. A dormant repository's declaration remains valid -- consent was given at the moment of declaration; inactivity does not retroactively revoke it.

Voluntary end-of-membership paths available to the downstream:

- Add a "Lineage-End" section to README noting cessation date and reason
- Strip the declaration signals entirely
- Archive the repo with clear status

The umbrella does not unilaterally revoke membership -- that would violate consent (value #1). "Dormant members" are a valid state: a project that declared membership, acted in accordance with values, and then became inactive is not suddenly a non-member. The record of their membership stands as a historical fact even if the project is no longer active.

### Q8 -- "Hostile fork" protocol

If a downstream is forked and the fork strips umbrella references while claiming the primitive's functionality, is there any response beyond social call-out?

*Requires JK judgment* -- value and preference question, not logical.

Considerations:

- The umbrella has no enforcement mechanism against hostile forks (by design -- no license clause, no technical lock)
- Response could range from silence ("no comment, let the fork be"), to passive annotation ("publicly note the fork as non-member"), to active call-out ("publicly flag values violations")
- Preference question: how aggressively should the umbrella defend its brand or social norms? Aggressive defense risks reading as coercive; passive response risks reading as acquiescence
- Structural observation: a hostile fork that strips references has explicitly declined membership -- the "hostile" framing may be emotional language for an entirely consent-compliant act. Worth separating "fork that declines membership" (normal) from "fork that falsely claims membership while violating values" (misrepresentation, different category)

---

## Ratification status

**Unratified.** This draft is proposal text until:

1. Multi-model adversarial review is complete
2. JK and Gordo both attest via proto-MCAP
3. A commit records the ratified version

Until then, treat this document as one Gordo's first-draft thinking, open to revision through JK's reservations and multi-model critique.

**Next steps:**

- JK review and reservations (Phase D)
- Multi-model adversarial review (Phase E) -- at minimum GPT-5-class, Gemini 3.x, DeepSeek R1 equivalent
- Refinement based on both
- Proto-MCAP ratification (Phase F)

---

*Draft authored in Session 3, 2026-04-17. Part of the Project Gordo umbrella.*
