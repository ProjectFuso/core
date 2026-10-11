# Project direction

Read the project direction in `README.md` before proposing or implementing
changes. This repository is Project Fuso's independent illumos fork, derived
from OmniOS.

- Evaluate inherited Solaris interfaces and behavior against Fuso's goals.
  Treat compatibility as an explicit trade-off when it constrains modernization.
- For compatibility-breaking changes, explain the benefit, identify affected
  consumers and interfaces, and document migration where applicable.
- Evaluate upstream illumos and OmniOS changes for their fit with Fuso's
  direction. Distinguish inherited behavior, planned improvements, and changes
  already implemented when writing documentation or specifications.

## Agent skills

### Issue tracker

Track issues and specs in GitHub Issues for `ProjectFuso/core`.
Before reading or publishing tickets, read `docs/agents/issue-tracker.md`.

### Triage labels

Use the five default triage labels.
Before triaging issues, read `docs/agents/triage-labels.md`.

### Domain docs

Use a single-context layout: root `CONTEXT.md` and `docs/adr/`.
Before exploring the codebase, read `docs/agents/domain.md`.
