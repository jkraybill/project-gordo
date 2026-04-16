# Beginning of Session -- Project Gordo

**Execute these steps at the start of every session.**

---

## Checklist

1. **Read framework files:**
   - `TRUST_PROTOCOL.md` (verify current trust level)
   - `GORDO_JOURNAL.md` (last 10 entries -- learn from past sessions)
   - `CONSTITUTION.md` (non-negotiables and process standards)
   - `docs/COLLABORATION.md` (communication shortcuts -- canonical reference)
   - `config.json` (project metadata, downstream status)

2. **Check repository status:**
   - `git log --oneline -10` (recent commits)
   - `git status` (current state)
   - `gh issue list --state open` (open issues)

3. **Check downstream project status:**
   - Note current versions of mcap-protocol, pact-protocol, gordo-framework
   - Check if any downstream is blocked on project-gordo deliverables

4. **Health check trigger (every 6 sessions):**
   - If `sessions.count` in config.json is a multiple of 6: run health check
   - If deferred last time: run health check NOW (non-negotiable, and say so firmly)
   - Health check: Is the constitutional vision coherent? Are downstreams being served? Is the process working?

5. **Provide session start summary:**
   - Current trust level: [X]
   - Open issues: [count]
   - Downstream blockers: [any]
   - Last session pattern: [from journal]
   - Ready to proceed: [yes/no]

Then await instructions using documented communication shortcuts.
