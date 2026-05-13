# LINEAGE.json Specification v1

**Status:** Draft
**Location:** project-gordo (T0)
**Purpose:** Machine-readable lineage back-pointer for umbrella membership

---

## Overview

This specification defines `LINEAGE.json`, the umbrella convention for machine-readable lineage tracking. Projects using this convention include a `LINEAGE.json` file at the repository root. This file:

1. Declares the project's ancestry chain to the constitutional root (T0)
2. Enables machine-searchable census of umbrella projects
3. Provides one way to satisfy the Anti-Secrecy Standard

**Convention, not mandate.** This is how umbrella projects signal lineage by default. Gordo's Forge auto-generates it. Existing T0/T1/T2 projects model it. Adopters may use alternative mechanisms per Piecemealing-Friendly.

---

## Format

```json
{
  "version": 1,
  "project": "<project-name>",
  "declared_at": "<ISO-8601-date>",
  "chain": [
    { "name": "<self>", "url": "<repo-url>", "created": "<ISO-8601-date>" },
    { "name": "<parent>", "url": "<parent-repo-url>" },
    { "name": "project-gordo", "url": "https://github.com/jkraybill/project-gordo", "root": true }
  ],
  "tag": "project-gordo-umbrella"
}
```

---

## Field Definitions

### Top-level

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `version` | integer | yes | Spec version. Currently `1`. |
| `project` | string | yes | Project name. Must match first chain entry's `name`. |
| `declared_at` | string | yes | ISO 8601 date when this manifest was created. |
| `chain` | array | yes | Ancestry chain from self to root. Minimum 2 entries. |
| `tag` | string | yes | Searchable tag. Must be `"project-gordo-umbrella"`. |

### Chain entries

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | yes | Project name. |
| `url` | string | yes | Canonical repository URL (https, no trailing slash). |
| `created` | string | first entry only | ISO 8601 date of project creation. |
| `root` | boolean | last entry only | Must be `true` on the final entry (T0). |

---

## Chain Structure

The chain walks **upward** from the claiming project to the constitutional root:

1. **First entry:** Self (the claiming project)
2. **Middle entries:** Ancestors (hub, forge, primitives — whatever the actual lineage is)
3. **Last entry:** Must be `project-gordo` with `"root": true`

### Example: Direct T1 primitive

```json
{
  "version": 1,
  "project": "mcap-protocol",
  "declared_at": "2026-05-13",
  "chain": [
    { "name": "mcap-protocol", "url": "https://github.com/jkraybill/mcap-protocol", "created": "2026-04-01" },
    { "name": "project-gordo", "url": "https://github.com/jkraybill/project-gordo", "root": true }
  ],
  "tag": "project-gordo-umbrella"
}
```

### Example: Hub-spawned project

```json
{
  "version": 1,
  "project": "superlisp",
  "declared_at": "2026-05-13",
  "chain": [
    { "name": "superlisp", "url": "https://github.com/kj/superlisp", "created": "2026-05-13" },
    { "name": "kj-hub", "url": "https://github.com/kj/kj-hub" },
    { "name": "gordo-forge", "url": "https://github.com/jkraybill/gordo-forge" },
    { "name": "project-gordo", "url": "https://github.com/jkraybill/project-gordo", "root": true }
  ],
  "tag": "project-gordo-umbrella"
}
```

---

## Searchability

In addition to the `tag` field in LINEAGE.json, projects should add `project-gordo-umbrella` as a **GitHub Topic** on the repository. This enables:

```bash
gh search repos --topic project-gordo-umbrella
```

---

## Validation Rules

1. `chain` must have at least 1 entry (2+ for non-root projects)
2. First entry's `name` must match top-level `project`
3. Last entry must have `"root": true` and `url` pointing to project-gordo
4. All entries must have `url` (no orphan names)
5. `tag` must be exactly `"project-gordo-umbrella"`
6. For T0 (project-gordo itself): chain may be single entry with both `created` and `root: true`

---

## Enforcement

**Honor-system.** No cryptographic signing. No verification service.

Social accountability:
- Badge visibility creates public claim
- Manifest is machine-readable evidence  
- Broken chains (missing ancestors, doesn't reach T0) are detectable
- False claims are socially discoverable

---

## Badge

Projects should display a badge in their README linking to T0:

```markdown
[![Project Gordo](https://img.shields.io/badge/Project_Gordo-umbrella-blue)](https://github.com/jkraybill/project-gordo)
```

Badge design (logo, colors) may evolve. The link target remains T0.

---

## Grounding

This specification operationalizes the **Anti-Secrecy Standard** from T0 Process Standards:

> "Umbrella members cannot operate in total secrecy. Other umbrella participants must be able to discover that a member exists."

**Recommended, not required.** Per the Anti-Secrecy Standard, "Git history, ratification records, explicit membership lists, or other mechanisms all satisfy discoverability." LINEAGE.json is the recommended mechanism for new umbrella projects. Per the Piecemealing-Friendly Directive, adopters may use alternative mechanisms that satisfy the same discoverability floor.

**Forge default.** Gordo's Forge auto-generates LINEAGE.json during onboarding. Projects bootstrapped via Forge get lineage tracking by default.

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1 | 2026-05-13 | Initial specification |

---

*Drafted S227 2026-05-13. Follows 6-round panel design funnel (lineage-mechanism-design) + implementation review (lineage-v1-impl).*
