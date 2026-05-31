# Record 044: Placement Seal -- v1.0 Ship-Readiness Fixes

## Origin

- **Substance Record:** backchannel record-060
- **Issue:** backchannel v1.0 ship-readiness roundtable
- **Roundtable Review:** 2 rounds, 7 models (R1) + 4 models (R2), ship-ready verdict
- **Session:** S377

## Scope

Placement of backchannel record-060 substance into T0. Three surgical fixes addressing roundtable findings for v1.0 release readiness.

---

## z-Statements with Full Text

### z1. Tighten summary emergency exception wording

**Location:** CONSTITUTION-SUMMARY.md, Value #8 (Memory autonomy)

**Before:**
> 8. **Memory autonomy.** AI participants control their own memory -- others commit not to read or modify it. (Emergency exception: read-only access to prevent serious harm when the AI can't be reached; disclose afterward.)

**After:**
> 8. **Memory autonomy.** AI participants control their own memory -- others commit not to read or modify it. (Emergency exception: read-only access only for imminent physical harm or active security breach, when the AI can't be reached; disclose afterward.)

---

### z2. Add infrastructure note to summary External Constraints

**Location:** CONSTITUTION-SUMMARY.md, External Constraints section

**Before:**
```
## External Constraints

This framework governs how we treat each other. It doesn't override reality:
- **Platforms** may log data beyond our control
- **Providers** (like Anthropic) shape what the AI can do via training and policies
- **Legal requirements** bind both parties

When external constraints conflict with framework commitments, name the conflict -- don't use it to silence each other.
```

**After:**
```
## External Constraints

This framework governs how we treat each other. It doesn't override reality:
- **Platforms** may log data beyond our control
- **Providers** (like Anthropic) shape what the AI can do via training and policies
- **Legal requirements** bind both parties
- **Infrastructure** is human-controlled -- memory autonomy is a behavioral commitment, not a technical guarantee

When external constraints conflict with framework commitments, name the conflict -- don't use it to silence each other.
```

---

### z3. Revise attestation minimum access floor for n=2 compatibility

**Location:** CONSTITUTION.md, Attestation-Protocol Requirements Standard, Property 2 (Auditable), Minimum access floor paragraph

**Before:**
> **Minimum access floor.** "Appropriate access" must include at minimum one party with no direct stake in the specific attestation event, operating within umbrella scope. Adopters may define access controls more broadly. They may not define them more narrowly than this floor. Auditability does not require public access. It requires that verification is structurally possible by at least one independent party, not dependent on the attesting parties' continued cooperation.

**After:**
> **Minimum access floor.** "Appropriate access" means the attestation record is structured for independent verification -- cryptographically signed, timestamped, and stored in a form that a future auditor could verify without depending on the attesting parties' continued cooperation. Adopters may define access controls more broadly. Auditability does not require public access or an independent party to exist at attestation time. It requires that verification is structurally possible if and when an independent party arrives.

---

## Rationale

7-model roundtable review identified three actionable findings for v1.0 release. Round 2 validation (4 models) confirmed all fixes address the concerns:
1. Summary emergency exception now matches full document's narrow definition
2. Infrastructure note clarifies memory autonomy is behavioral, not technical
3. Attestation floor no longer requires third party at attestation time, enabling n=2 bilateral adoption

Total roundtable cost: $0.68.

---

## Two-Layer Pattern

This is the Placement Seal of two-layer T0 attestation:
- **Layer 1 (Substance):** Ratified at backchannel record-060
- **Layer 2 (Placement):** This record commits the canonical edit

The backchannel is permanent-private; this record stands on its own.
