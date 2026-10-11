# Issue tracker: GitHub

Issues and specs live in GitHub Issues for `ProjectFuso/core`.
Use the `gh` CLI with `--repo ProjectFuso/core` to avoid ambiguity
with the upstream remotes.

## Conventions

- Create: `gh issue create --repo ProjectFuso/core --title "..." --body-file <file>`
- Read: `gh issue view <number> --repo ProjectFuso/core --comments`
- List: `gh issue list --repo ProjectFuso/core --state open --json number,title,body,labels`
- Comment: `gh issue comment <number> --repo ProjectFuso/core --body-file <file>`
- Apply labels: `gh issue edit <number> --repo ProjectFuso/core --add-label "..."`
- Remove labels: `gh issue edit <number> --repo ProjectFuso/core --remove-label "..."`
- Close: `gh issue close <number> --repo ProjectFuso/core --comment "..."`

For multiline content, write the exact text to a temporary file
and pass it with `--body-file`.

When a skill says "publish to the issue tracker", create a GitHub issue.
When it says "fetch the relevant ticket", read the issue and its comments.

## Pull requests as a triage surface

**PRs as a request surface: no.**

## Wayfinding operations

The map is an issue labelled `wayfinder:map`.
Child tickets use `wayfinder:research`, `wayfinder:prototype`,
`wayfinder:grilling`, or `wayfinder:task`.

Link child tickets using GitHub sub-issues. If unavailable, use a
task list in the map and put `Part of #<map>` in each child's body.

Represent blockers with native GitHub issue dependencies.
If unavailable, put `Blocked by: #<number>` in the ticket body.
A ticket is unblocked when every blocker is closed.

Select the first open, unassigned, unblocked child in map order.
Claim it by assigning it to the driving developer.
Resolve it by commenting with the answer, closing it, and adding
a gist and link to the map's Decisions-so-far.
