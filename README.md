# Project Fuso Core

Project Fuso is developing an independent fork of the core
[illumos](https://illumos.org) source tree, starting from the OmniOS branch.
Our goal is to evolve this foundation into a modern operating system, with
the freedom to rethink inherited Solaris interfaces and design decisions.

## Project direction

Modernization takes priority over preserving Solaris compatibility for its
own sake. We aim to improve the system's architecture, security,
maintainability, developer experience, and support for contemporary hardware
and workloads.

Existing interfaces and behavior should be evaluated on their usefulness to
Fuso. Solaris compatibility is a deliberate trade-off, not a blanket
requirement: legacy APIs, ABIs, tools, and subsystems may be redesigned or
removed when their maintenance cost or design constraints obstruct the
project's goals. Changes that break compatibility should explain the benefit,
identify affected consumers, and describe migration where applicable.

This is the project's direction, not a claim that the inherited source tree
has already been modernized. OmniOS provides our starting point; illumos and
OmniOS remain sources of useful improvements to evaluate for Fuso.

## Building

The tree currently inherits the OmniOS build infrastructure. The inherited
guidance is to build on an OmniOS system of the corresponding version; see the
[OmniOS build instructions](https://omnios.org/dev/build_instructions) as a
starting reference. These instructions describe the upstream build process;
Fuso-specific build requirements should be documented as the fork evolves.

## Contributing

Track Fuso issues and specifications in
[ProjectFuso/core GitHub Issues](https://github.com/ProjectFuso/core/issues),
and submit contributions to this repository. Proposals should connect their
changes to the project direction and describe any compatibility impact.

For agent contribution workflows, see [AGENTS.md](AGENTS.md).

## Community

We welcome everybody who would like to develop Fuso and participate in the
community -- whether you have
decades of experience in systems software, or you're just getting started;
whether you work for a company that uses illumos, or you just find it
personally interesting.

The upstream [illumos Community guide](https://illumos.org/docs/community/)
provides information about the wider illumos community, including mailing
lists and IRC channels.

## Licence

Most of the existing code is licensed under the
[CDDL](https://illumos.org/license/CDDL) and we expect new code will generally
be under this licence as well. Modifications of existing code may not alter
the original license terms. Integrations of code from upstream sources that
use another open source license are generally permissible.

