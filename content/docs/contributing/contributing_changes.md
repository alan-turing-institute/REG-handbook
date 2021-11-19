---
# Page title as it appears in the navigation menu
title: "Contributing Changes"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 4
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Contributing Changes

Once you have made changes, you will need to contribute them back to the remote
repository. This page explains the process of pushing your changes back to the
remote, and how your contribution will be checked in the CI and review process.

The handbook users the [GitHub
flow](https://docs.github.com/en/get-started/quickstart/github-flow) workflow.
In short

- create a branch
- make changes
- open pull request
- review
- merge to `main`

This workflow should help changes be deployed quickly.

{{% hint warning %}}
When making commits, follow Tim Pope's
[recommendations](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
for good commit messages.
{{% /hint %}}

## Creating a Branch

You should make your changes on a new branch, and not on `main`. This will make
it easier to merge changes from many contributors. Try to pick a branch name
which is short and describes the change you are making.

{{% hint warning %}} The changes on one branch or pull request should address a
single issue and be self-contained. Don't try to solve more than one unrelated
problem at once.

Sticking to this practice will help ensure pull requests are small and easy to
review. Otherwise, you might end up having to make many changes during review,
have difficultly keeping your branch up to date or upset the reviewers.  {{%
/hint %}}

## Opening a Pull Request

When you think your changes are ready to be merged, open a pull request. If you
don't want your changes to be merged yet but would like some feedback, you can
open a draft pull request.

When you open a pull request you will be presented with a template. Complete the
sections and answer the questions as best you can. In particular, make sure to
reference any issues your work closes or is related to.

### Continuous Integration

A series of tests will be automatically conducted on each commit and pull
request. The tests are defined in {{% repo_link
path=".github/workflows/ci.yaml" text="`ci.yaml`" %}}.

The following tests are required to pass before merging a pull request

- A Markdown linter
- A Hugo build

There are other test that are not *required* before merging, although you should
aim to pass all tests. Those are

- A Markdown link checker
- A HTML proofer (including link checking) on the output of Hugo

## Keeping Your Branch up to Date

The branch protection rules applied to `main` will prevent merging out-of-date
branches. This means if your branch doesn't include the changes from the `HEAD`
of `origin/main` it won't be possible to merge it.

If your branch isn't up to date, you can fix it with a merge or rebase.

### Merging

[Merging](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)
the changes from `origin/main` is probably the simpler way to get your branch up
to date. It will leave the Git history a bit messier which can bother some
people.

Ensure you have the latest changes on `origin/main` in your local repository

```bash
git fetch
```

Merge `origin/main` into your branch. If your branch was called `my_branch` you
would run

```bash
git switch my_branch
git merge origin/main
```

Git will notify you of any conflicts. If there are conflicts you should fix them
before running `git merge --continue` to commit.

After you are done you can push your changes.

### Rebasing

[Rebasing](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) your branch on
top of `origin/main` can make conflicts more difficult or confusing to deal
with.

Ensure you have the latest changes on `origin/main` in your local repository

```bash
git fetch
```

Apply your commits on top of `origin/main`. If your branch was called
`my_branch` you would run

```bash
git switch my_branch
git rebase origin/main
```

If you want to tidy up your commits or messages you might want to use `git
rebase -i`.

Git will notify you of any conflicts. If there are conflicts you will need to
fix them iteratively, running `git rebase --continue` to apply each commit.

When the rebase is done, you will need to force push your changes as you have
rewritten the history of your branch.

```bash
git push -f
```

{{% hint warning %}}
Rewriting history is considered impolite on a branch where you are working
collaboratively. It can cause problems when the state of a remote changes
unexpectedly.
{{% /hint %}}

## The Review Process

Once your pull request has been submitted the handbook maintainers will be
prompted to make a review. Each pull request requires **at least one** approval from
the maintainers before merging. If a reviewer requests any changes or makes any
comments, these **must** be resolved before the pull request can be merged.
