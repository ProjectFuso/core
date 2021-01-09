# Fuso core

This is the repository for core OS components.

## Branches 

Generally speaking, the development process of Fuso is organized into the following 4-branches structure:

- supernova

This is the branch were we play around with new things. supernova branch does not
guarantee a stable interface; we might drop features in newer iterations even
if doing so will break backwards compatibility with older supernova iterations.

Any change that interests us can get into this branch. The only requirement for
the quality of the patch is that it have reached the level that *worth testing*;
it doesn't have to be bug-free, it doesn't have to be complete, or meet whatever
other requirement that usually apply in other branches. As soon as it runs (and
thus people can play around with it), it's qualified for this branch.

There might be some sub-branches based on this branch. Those are for features
that even less completed than supernova itself, or large changes that require
significant among of changes before it even get a change of working. Those
branches will eventually get merge into this branch, or dropped.

- nova

Once the new change reached a reasonable completeness, and with its interface
stablized, and we have made our mind to include it into our system, it gets
into nova branch. In other word, this is the "dev" branch for usual projects.

To maintain a stable interface for our system, changes that have made into this
stage usually won't get dropped (unless in some very very rare situation). This
means it's pretty safe to assume any change that shows up in this branch will
eventually be shipped into the stable system, and you can start experimenting
with it as an End-User.

- rc-*

rc branches, shorthand for "Release Candidate", is what you think it is. Those
branches are testing branches for the upcoming releases, and once the branch
is created, it will only accept fixes. Once we believe it has met the our
quality requirement, it will become a release branch.

- master, release-*

The release-* branches are also what you think it is, and the master branch
is just the branch for the newest release. Those branches are production ready,
and receives only security fixes to maintain a stable behaviour.


## Building

Currently we haven't finished transfering to a new building system, so an 
illumos-based system is still required for building Fuso. 
See [Building illumos](https://illumos.org/docs/developers/build/) section of
illumos documentation for detailed instructions.

## Contributing

Fork this repository, make whatever change you want, and create a PR.
We will check to see if it interests us.

## License

Most of the existing code is licensed under the [CDDL](https://illumos.org/license/CDDL)
due to historical reasons and modifications of existing code may not alter
the original license terms. New codes for our project will generally be licensed
under MIT Expat, for a better compatibility with other license.
