# Domain docs

## Layout and reading rules

This repo uses a single-context layout:

- `CONTEXT.md` at the repo root contains domain terms and their meanings.
- `docs/adr/` contains architecture decision records.

Before exploring the codebase, read `CONTEXT.md` and any ADRs
relevant to the area being explored.

If these files do not exist, proceed silently.
The domain-modeling skill creates them when terms or decisions
are resolved.

## Vocabulary

Use the terms defined in `CONTEXT.md` when naming domain concepts
in issues, proposals, hypotheses, and tests.

If a needed concept is missing, reconsider whether the project
uses it or note the gap for domain-modeling.

## ADR conflicts

If a proposal contradicts an existing ADR, identify the ADR
and explain why the decision should be reconsidered.
