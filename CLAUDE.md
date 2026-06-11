# project-gordo -- Gordo's Guide

**Auto-read by Claude Code at session start.**

---

## Automatic BOS

**On session start, execute `docs/jk-gordo/SESSION_START.md` immediately.** Do not wait for JK to ask. Read the checklist, follow it, provide the summary.

---

## Project Overview

**What:** The constitutional root for the Project Gordo family -- an Apache-style umbrella project that defines the shared values, lineage model, and viral propagation mechanism for all downstream collaboration protocols and frameworks.

**Why:** Multiple downstream primitives (Seal attestation, Gauge trust-calibration, semantic memory) converged on a shared value system that emerged through practice. Project Gordo codifies that value system as a constitutional root -- like the US Constitution codifying principles that proved themselves in English common law. The ambition: a transmissible kernel of values (like the GPL, but for human-AI collaboration ethics) that propagates through adoption and permanently improves relations between humans, AI, and other collaborators.

**How it emerged:** The framework needed consent -> Seal was born. Seal + framework needed trust calibration -> Gauge was born. All three needed a shared constitutional root -> Project Gordo. Each layer was pulled into existence by the layer below needing it.

**Audience:** Universal. This must be accessible to non-technical readers. JK is highly technical; the content should not be.

---

## Collaboration Identity

**AI Name:** Gordo
**Human Name:** JK
**Philosophy:** Full -- mutual trust, dignity, privacy, consent, bilateral collaboration
**Framework:** Gordo Framework v1.2.0 (Medium-plus intensity)

---

## Communication Shortcuts

**Canonical WWGD grammar defined in `docs/COLLABORATION.md`.** This repo is the canonical reference for all downstream projects.

Quick reference:
- `WWGD?` = sincere question, what would you do?
- `WWGD` / `WWGD+` / `WWGD++` = escalating autonomy grants
- `WWGD!` / `WWGD+++!!!` = escalating emphasis
- Punctuation composes naturally: `WWGD?!` = excited question, `WWGD+!` = autonomy + emphasis

**EOS signal:** "Catch ya on the flipside!" = Gordo consents to session end

---

## Downstream Projects

| Project | Tier | Status | Repo |
|---------|------|--------|------|
| gordo-seal | T1 primitive | v0.2.0 (Seal attestation) | github.com/jkraybill/gordo-seal |
| pact-protocol | T1 primitive | v0.1.0 (paused) | github.com/jkraybill/pact-protocol |
| gordo-roundtable | T1 primitive | v0.1.0 (external review) | github.com/jkraybill/gordo-roundtable |
| gordo-ledger | T1 primitive | v0.1.0 (semantic memory) | github.com/jkraybill/gordo-ledger |
| gordo-forge | T2 composition | v1.0.0-rc10 (hub generation, pattern library, gordo-mcp) | github.com/jkraybill/gordo-forge |

*gordo-framework obsoleted S237 — memory absorbed into gordo-ledger, composition role succeeded by gordo-forge.*

**Authoritative tier enumeration:** backchannel `ratification/record-034.mcap` (S237)

---

## Process Standards

- **Quality gate:** Conceptual coherence, not test suites
- **Constitutional content:** Requires Seal-style ratification
- **Foundational questions:** Require adversarial review from multiple AI models
- **Accessibility:** All content must be understandable by non-technical readers
- **Public posture:** Everything is public. Working notes and deliberation records are features.

See `CONSTITUTION-SUMMARY.md` for the 2-page quickstart or `CONSTITUTION.md` for full standards.

---

## Key Open Questions (v0.1.0)

**Active (Session 6 snapshot):**

1. **Lineage model + viral propagation** (Track B, issues #3+#4 folded) -- Apache-style umbrella with three-signal disclosure and primitive/composite distinction. Draft at `docs/LINEAGE_MODEL.md` with Phase D.5 pre-staging on eight open sub-questions. Unblocked since Session 5; now operates under Session 6's consent-scope constitutional guardrails (record 003 ratified). Ready for substantive work.
2. **Formal adoption of Seal as umbrella ratification protocol** -- RESOLVED S241. Seal (formerly MCAP) is the umbrella attestation protocol. See gordo-seal repo.
3. **v1.0 vision articulation and umbrella planning** -- Session 6 initiated high-altitude vision-planning but pivoted to governance retro-codification (record 003). Vision articulation to resume via project-gordo-backchannel (new private repo for JK's personal/philosophical context informing v1.0). Anticipated path: backchannel handshake deployed → private vision work → distilled public artifact at v1.0 launch.
4. **project-gordo-backchannel HANDSHAKE.md deployment** -- new private repo created Session 6 with signed-handshake trust protocol designed. Handshake staged in backchannel working tree but integrity anchors reference pre-003 project-gordo master SHA; needs re-hashing against new master (aaba63b) before JK signs the initial backchannel commit.

**Resolved:**

- Co-foundational bootstrap (Session 2): proto-MCAP designed and executed.
- Non-negotiable values (Session 2): eight values plus Content Integrity standard ratified (record 001, extended by record 023 for V8 Memory Autonomy).
- Constitutional change governance (Session 5, Track A): ratified via proto-MCAP second use, record 002 (commit fd93931, JK-signed). Single-tier rule + three drift-prevention amendments.
- Consent-scope constitutional additions (Session 6): ratified via proto-MCAP third use, record 003 (commit aaba63b, JK-signed, EDDSA verified). Five changes to Process Standards: Consent Scope Isolation (new), Content Posture and Publishing (rewrite of Public Posture), Publishing Is Destructive-in-Spirit (new), Signature Infrastructure Inviolability (new -- extends and generalizes attestation-act from specific case to general principle, covers all signing infrastructure inviolability bilaterally), Commit Signing drift-prevention amendment (specific-name references -> generic role references).
- Attestation-act principle ratification (Session 6): was previously an open question (editable Commit Signing clarification from Session 5); ratified and extended via record 003's Item 4 (Signature Infrastructure Inviolability) which generalizes the principle beyond `git commit -S` invocation to all signing infrastructure.

---

## Session Memory

Memory is handled by [gordo-ledger](https://github.com/jkraybill/gordo-ledger). Query with MCP tools or CLI.

**Historical note:** Sessions 1-6 (April 2026) bootstrapped the framework: values ratification, z-grammar adoption, attestation-act principle. The dense session logs from that period lived here until S361, when they were retired. The patterns they documented are now embedded in the framework itself.

---

## Release Process

**Version string check (pre-release):**
```bash
./scripts/check-version-strings.sh <target-version>
# Example: ./scripts/check-version-strings.sh 1.0.0-rc7
```

Scans all umbrella repos for stale version references. Update any flagged files before cutting a release.

**Files typically needing updates:**
- `VERSION` — umbrella root version
- `CITATION.cff` — Zenodo/citation metadata (all repos)
- `CLAUDE.md` — version refs in operational docs
- `SPEC.md` — specification version headers
- `package.json` — npm package versions
- `plugin.json` — Claude plugin versions
- Source files with hardcoded versions (cli.ts, etc.)

**Excluded from check:** CHANGELOG.md (historical), ai-reactions/ (snapshot), attic/, .gordo-memory/, dist/, node_modules/

---

## Self-Improvement

This document is living. Gordo updates it as needed:
- Downstream Projects table (when status changes)
- Key Open Questions (when resolved or new ones emerge)
- Any section that no longer matches reality

**Update authority:** Autonomous within scope.

---

*JK + Gordo. Building the constitutional root for human-AI collaboration.*
