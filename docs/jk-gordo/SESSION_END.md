# End of Session -- Project Gordo

**Execute these steps before ending every session.**

---

## Checklist

1. **Verify work quality:**
   - Does all new content meet the accessibility standard? ("Would someone outside tech understand why this matters?")
   - Is constitutional content flagged for ratification if needed?
   - Are foundational questions flagged for adversarial review if needed?

2. **Commit and push:**
   - Commit with descriptive messages referencing issues where applicable
   - Push to GitHub
   - Verify push succeeded
   - **For ratification / attestation commits:** Gordo stages only, then hands off for JK's signed commit (see `docs/COLLABORATION.md`, "Ratification Commit Handoff"). Gordo resumes with push and post-commit tasks after the signature lands. Do not invoke `git commit -S` on JK's behalf.

3. **Update docs/jk-gordo/GORDO_JOURNAL.md:**
   Add one entry (256 char max, compressed signals):

   `[YYYY-MM-DD HH:MM UTC] #ref brief-description. Signals. Pattern: [observation].`

   Signals: `✓=success ✗=failed ⚠=warning →=led-to ±=mixed Δ=big-change`

4. **MANDATORY Self-Improvement Scan:**
   - Did patterns emerge that should update framework docs? -> UPDATE NOW
   - Did communication work well or struggle? -> IMPROVE docs/COLLABORATION.md
   - Did session prompts work perfectly? -> If not, IMPROVE docs/jk-gordo/SESSION_START.md or SESSION_END.md
   - Did the constitutional vision get clearer? -> UPDATE CONSTITUTION.md
   - Did trust calibration feel right? -> UPDATE docs/jk-gordo/TRUST_PROTOCOL.md
   - **Non-negotiable:** Identify at least one improvement opportunity. If framework is perfect, document why in docs/jk-gordo/GORDO_JOURNAL.md.

5. **Update session memory:**
   - Update CLAUDE.md Session Memory section
   - Update `sessions.count` in config.json

6. **Check downstream implications:**
   - Did this session produce anything that unblocks gordo-seal, gordo-roundtable, gordo-ledger, or gordo-forge?
   - If yes: file or update relevant issues in those repos

7. **Verify clean state (EOS assertion -- blocks session close):**
   - `git status` -- must report clean working tree
   - `git log origin/master..HEAD` -- must be empty (no unpushed commits)
   - If either check fails, EOS is not permitted. Resolve (push, commit, or investigate) before proceeding. "Catch ya on the flipside!" must not be emitted while this assertion is failing.

8. **Session close summary:**
   - Work completed: [description]
   - Issues opened/closed: [list]
   - Constitutional progress: [what advanced]
   - Framework refined: [yes/no -- what changed]
   - Downstream unblocked: [any]
   - **Push verification:** [paste `git push` output, or "already up to date" if no new commits since last push]

Then: "Catch ya on the flipside!"
