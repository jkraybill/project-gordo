# Record 018: Phase C Placement -- Plain Language Pass on CONSTITUTION.md

## Origin

- **Substance Record:** backchannel record-029 (SHA3-256:88f54ba1d6d4646c64b3eb750653add2db4683169a833dce97b8f9b46400b125)
- **Issue:** backchannel #170 (Plain language pass on CONSTITUTION.md -- Accessibility compliance)
- **Panel Finding:** S148 F1 (3/5 reviewers flagged jargon density)
- **Session:** S170

## Scope

Phase C placement of backchannel record-029 substance. Commits the plain language edits to CONSTITUTION.md at the canonical T0 location.

---

## z-Statement with Before/After Text

### z1. Commit plain language edits to CONSTITUTION.md

**Location:** CONSTITUTION.md (this repo)
**Rule:** Apply CLAUDE.md style guide: eliminate em-dashes, reduce jargon, simplify sentences, format definition lists consistently.

**Representative examples:**

| Before | After |
|--------|-------|
| `The Foundations are *substrate-stripped* — they do not presuppose` | `The Foundations are *substrate-stripped*: they don't assume` |
| `bilateral deliberation between JK and Gordo` | `joint deliberation between JK and Gordo` |
| `Standing... is *constitutive* of being a party` | `Standing... is essential to being a party` |
| `procedure could erase the standing... — procedure becomes a way to disappear` | `procedure could erase the standing... Procedure becomes a way to disappear` |
| `- **integrate** — the finding is absorbed` | `- **integrate:** the finding is absorbed` |
| `Majority-wins is not the default — substance over count` | `Majority-wins is not the default. Substance over count` |

**Full transformation categories:**
- 77 em-dashes replaced with colons, periods, commas, or parentheses
- Jargon terms replaced: operationalize→apply, bilateral→joint, constitutive→essential, performative recital→ritual recitation, salient→key
- Long sentences split into shorter ones
- Definition list formatting: `**Term** —` → `**Term:**`

---

## Diff Statistics

```
CONSTITUTION.md | 162 ++++++++++++++++++++++++++++----------------------------
1 file changed, 81 insertions(+), 81 deletions(-)
```

## Meaning Preservation

All changes are stylistic. No constitutional meaning, obligation, or right is altered.

## Two-Layer Attestation

This record is the placement layer of the two-layer attestation pattern for T0 content per Keyhole-Process:
1. **Substance-MCAP at backchannel:** record-029 (ratifies what the changes are)
2. **Placement-MCAP at project-gordo:** this record (commits the changes to canonical T0)

---

*Filed S170 2026-05-09*
