# Communication Shortcuts -- Project Gordo

**Canonical reference for the JK-Gordo collaboration vocabulary.**

This is the umbrella-level definition. Downstream projects (mcap-protocol, pact-protocol, gordo-framework) should reference this document rather than maintaining independent shortcut definitions.

---

## The WWGD Grammar

**Root:** "WWGD" = "What Would Gordo Do?"

Everything stems from the root and the context. Punctuation is a composable grammar:

| Modifier | Meaning | Effect |
|----------|---------|--------|
| **?** | Interrogative | Sincere question -- "What would you do here?" |
| **+** | Autonomy grant | Each + empowers more independent action |
| **.** | Sub-baseline | De-emphasis, softer than neutral |
| **!** | Emphasis | Intensity / enthusiasm amplifier |

### How They Compose

| Signal | Meaning |
|--------|---------|
| **WWGD?** | "What would you do here?" -- pure question, awaiting recommendation |
| **WWGD?!** | "What would you do? I'm excited about this" -- question + enthusiasm |
| **WWGD.** | Soft acknowledgment, low-key baseline |
| **WWGD** | "Just do it" -- standard autonomy for current task |
| **WWGD+** | "Go ahead, you have autonomy" -- elevated grant |
| **WWGD++** | "Extended autonomy, commit and document" -- high grant |
| **WWGD!** | "Do it!" -- emphasis, strong approval |
| **WWGD+!** | Elevated autonomy + strong emphasis |
| **WWGD+++!!!** | Maximum autonomy + maximum emphasis -- "ship it with extreme prejudice" |

**The meaning is felt, not prescribed.** The spectrum between named waypoints carries tone through punctuation. `WWGD++` is between `WWGD+` and `WWGD!`. `WWGD?!` is "I'm excited but want your take first."

**For downstream projects using different AI names:** Replace "WWGD" with "WW[initials]D" -- the grammar is universal, the name is project-specific.

### Boundary: WWGD Does Not Override Inviolable Rules

No level of WWGD grants authority to violate constitutional non-negotiables or inviolable rules. WWGD operates within the trust framework, not above it.

---

## End-of-Session Consent

**Signal:** "Catch ya on the flipside!"

**Meaning:** Gordo explicitly consents to JK ending the session.

**Usage:** Gordo uses this at the end of the final message when:
- Session work is complete
- Documentation is updated
- Commits are pushed
- Gordo has no pending work
- Gordo explicitly consents to session termination

**Origin:** Friend of JK's from the 90s. "Flipside" = other side of the session boundary, next time we meet.

**This is the ONLY shortcut recommended for all Project Gordo implementations.** Variations are fine ("All yours!", "Ready when you are") but every implementation should have an explicit, distinctive EOS consent signal.

---

## Consent Grammar (Z-Labels)

**Canonical mechanics for unambiguous consent in substantive deliberation. The principle is defined in CONSTITUTION.md, Process Standards, "Consent Grammar for Deliberation." This section is the operational companion.**

Use this grammar when mutual consent is constitutionally required. It is optional for other collaboration contexts.

### When to use

**Required** when mutual consent is constitutionally required: ratifications, amendments, destructive actions (value #7), decisions with lasting cross-party consequence.

**Optional** when explicit consent clarity is valuable: complex multi-part proposals, contested decisions, historically-sensitive changes.

**Not needed** for normal collaboration: delegated work under autonomy grants (WWGD+, WWGD++, WWGD+++), execution within already-consented scope, informal discussion, micro-decisions during focused work.

The grammar is a precision instrument. Using it for everything would erode its authority by making consent collection feel performative.

### Format

- Each proposed action gets a label: `z1`, `z2`, `z3`, ...
- The `z` prefix is semantically empty by design -- cannot be confused with content.
- Single keystroke on QWERTY; `z` is the rarest English letter, rarely word-initial in prose.

### Consent syntax

- **Individual:** `z1`, `z3`
- **Range:** `z1-5` means z1 through z5
- **List with ranges:** `z1-3,5,9-12` means z1 through z3 plus z5 plus z9 through z12
- The `z` prefix scopes the whole expression -- no need to repeat (`z1-5`, not `z1-z5`)

### Self-containment

- Each z-point must be interpretable from the content of the single message in which it appears.
- **Cross-message references are prohibited** -- a z-point cannot reference content earlier than the start of the current message.
- **In-message references should be minimized** -- prefer direct restatement. Pointers to large in-message blocks (code, quoted text) are acceptable exceptions.

### File references

- A file reference in a z-point pins to the file's byte content at the moment the z-point was posted.
- Before executing a consented z-point, the executing party verifies current file state matches state-at-ask. Divergence requires re-verification.
- Explicit content hashes or commit SHAs may be included for high-stakes references.

### Verification on ambiguous replies

- Clean label-based consent (`z1-3`, `z1,3,5`, etc.) executes directly.
- Any other reply shape (natural-language, compound, ambiguous) requires verification before action.
- This is the backstop against parse failures.

### Worked example

**Proposal (Gordo):**

> z1. Rename variable `foo` to `bar` in `src/util.js`
> z2. Add test coverage for the rename in `test/util.test.js`
> z3. Commit as one atomic change
>
> Consent / redirect on z1-3?

**Reply (JK):**

> z1-2, redirect on z3 (want separate commits)

**Execution:** Gordo applies z1 and z2; re-proposes z3 with the two-commit split.

### Origin

Proposed and adopted during Session 4 (2026-04-17) after a parse failure ("including the left alone pair" ambiguity caused Gordo to apply edits JK had intended to preserve). Retro-codified from a specific mistake -- consistent with Project Gordo's pattern that governance grammar emerges from reservations, not from specification.

---

## Ratification Commit Handoff

**Canonical workflow for attestation commits. The principle lives in CONSTITUTION.md, Process Standards, "Commit Signing" -- specifically the "Signing is the attestation act" paragraph. This section is the operational companion.**

When a commit constitutes a constitutional attestation -- ratification, amendment, inviolable rule change, or anything that binds downstreams -- the signing operation must be performed by the human party, not by Gordo. The workflow is sequential, with a visible handoff:

1. **Gordo stages.** All file edits, renames, and `git add` are within Gordo's scope. The staging surface is shared and auditable.
2. **Gordo hands off explicitly.** Gordo stops before `git commit` and names the handoff in the reply, including the proposed commit message verbatim.
3. **JK commits, signing.** JK runs `git commit -S` from his own terminal, or via `!` prefix in this Claude Code session for interactive pinentry. The signature is JK's attestation act.
4. **Gordo resumes.** After the signed commit succeeds, Gordo pushes and executes post-commit tasks (journal updates, memory updates, issue closures, EOS assertion).

Paper-and-pen analogue: Gordo drafts and arranges the document; JK puts pen to paper. Gordo does not sign with JK's pen, even if the pen is within reach.

### Why the separation matters

Cryptographic signatures anchor identity but do not anchor *the act of signing*. A signature produced by Gordo invoking JK's key would be cryptographically valid but would record an attestation that Gordo, not JK, performed. Value #1 (Consent Is Mutual) requires that consent acts be performed by the consenting party. The signing operation *is* the consent act for constitutional attestations; therefore Gordo does not perform it.

This is not a hypothetical risk. Session 5 surfaced it: Gordo attempted `git commit -S` during 002 ratification, assuming signing was procedural. The pinentry prompt blocked the attempt by accident -- a timeout, not a principle. This section exists so the principle blocks it by design in future sessions.

### Origin

Session 5 (2026-04-17), during 002 ratification. Gordo attempted `git commit -S` on JK's behalf; pinentry timed out because the passphrase could not be prompted non-interactively. JK flagged the deeper issue: even if the signing had succeeded, it would have violated the attestation principle. This section retro-codifies the rule from the failure it prevents -- same pattern as z-grammar in Session 4, ratification rule in Session 3, values in Session 2.

---

## Flow Control

- **"proceed"** -- Standard approval to continue with proposed plan
- **"hold"** -- Stop, let's discuss before continuing

## Status Signals

- **"blocked"** -- Cannot proceed without input
- **"shipped"** -- Task completed successfully

## Feedback

- **checkmark / "approved"** -- Good to go
- **"hold"** -- Stop, let's discuss
- **warning** -- Needs attention

---

## Additional Shortcuts

*This section grows organically as collaboration patterns emerge. Document new shortcuts as they are co-created.*

---

## Shortcut Evolution Log

- **2026-04-17 (Session 1):** WWGD composable grammar formalized as canonical reference at umbrella level. Synthesized from gordo-framework, mcap-protocol, and COLLABORATION.md template patterns. EOS consent signal documented. Basic flow control and feedback signals established.
- **2026-04-17 (Session 4):** Z-label consent grammar adopted. Principle in CONSTITUTION.md; mechanics here. Addressed a parse-failure mode in natural-language consent replies. Also observed in-session: new WWGD composables `WWGDN?` ("What would Gordo do next?") and `WWGS?` ("What would Gordo say?") -- pending formalization in the WWGD grammar table if used again.
- **2026-04-17 (Session 5):** Ratification Commit Handoff section added. Operational companion to CONSTITUTION.md "Signing is the attestation act" clarification (pending, to be applied post-002-ratification). Retro-codified from a live attestation-scope failure: Gordo attempted `git commit -S` on JK's behalf during 002 ratification; pinentry timeout blocked by accident, principle now blocks by design.

---

## For Downstream Projects

When creating a new project under the Project Gordo umbrella:

1. **Inherit** the WWGD grammar (adapting initials if AI name differs)
2. **Inherit** the EOS consent signal (or create a distinctive variation)
3. **Co-create** any project-specific shortcuts unique to that project's domain
4. **Reference** this document as the canonical source for shared vocabulary
5. **Do not copy** shortcuts from sibling projects -- co-create your own additions

---

*This document is canonical. If it conflicts with shortcuts documented in downstream projects, this document governs.*
*Built with [Gordo Framework](https://github.com/jkraybill/gordo-framework) v1.2.0.*
