Contributing to chef-netuitive
======================================

### Workflow for contributing

1. Create a branch directly in this repo or a fork (if you don't have push access). Please name branches within this repository `feature/<description>` or `fix/description`. For example, something like `feature/upgrade_agent_0.2.3-70`.

1. Create an issue or open a PR. If you aren't sure your PR will solve the issue, or may be controversial, we commend opening an issue separately and linking to it in your PR, so that if the PR is not accepted, the issue will remain and be tracked.

1.  Close (and reference) issues by the `closes #XXX` or `fixes #XXX` notation in the commit message. Please use a descriptive, useful commit message that could be used to understand why a particular change was made.

1. Keep pushing commits to the initial branch, using `--amend`/`--rebase` as  necessary. Please don't mix fixing unrelated issues in a single branch.

1. When everything is ready for merge, clean up the branch (rebase with master to synchronize, squash, edit commits, etc) to prepare for it to be merged.

### Merging contributions

1. After reviewing commits for documentation, passing CI tests, version bumps, changelog, and good descriptive commit messages, a maintainer can merge.


### Releasing

1. Create/update the changelog if necessary. We should consider using the `github_changelog_generator` gem.

1. We Should consider using the `stove` project, which pushes cookbooks to
Supermarket and tags to Github once we are ready.
