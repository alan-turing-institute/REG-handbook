---
# Page title as it appears in the navigation menu
title: "Contributing Changes"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 5
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Contributing Changes

Once you have made changes, you will need to contribute them back to the remote repository.
This page explains the process of pushing your changes back to the remote, and how your contribution will be checked in the CI and review process.

The handbook uses the [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) workflow.
In short:

- create a branch
- make changes
- open pull request
- review
- merge to `main`

This workflow should help changes be deployed quickly.

## Creating a Branch

You should make your changes on a new branch, and not on `main`.
This will make it easier to merge changes from many contributors.
Try to pick a branch name which is short and describes the change you are making.

{{% hint warning %}}
The changes on one branch or pull request should address a
single issue and be self-contained.
Don't try to solve more than one unrelated problem at once.

Sticking to this practice will help ensure pull requests are small and easy to review.
Otherwise, you might end up having to make many changes during review, have difficultly keeping your branch up to date or upset the reviewers.
{{% /hint %}}

## Making Changes

At this point, you can edit files and create `git` commits as necessary.

{{% hint info %}}
When making commits, it is a good idea to follow Tim Pope's [recommendations](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for good commit messages.
{{% /hint %}}

It is often useful to run the Markdown style checker (and other tests) before committing.
This allows you to catch, and fix, potential issues before opening a pull request.
To do so, use the `pre-commit` tool.
From the repository root, run:

```bash
brew install pre-commit  # if not already installed
pre-commit install
```

This uses the {{% repo_link path=".pre-commit-config.yaml" text="`.pre-commit-config.yaml`" %}} file in the repository to create a pre-commit [Git hook](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks),
which (as the name suggests) will be automatically run every time before a commit is created.
It currently performs the following checks, which are designed to mimic those in [Continuous Integration](#continuous-integration):

- Markdown linting, i.e. style checking
- a Hugo build, to make sure that the pages can be built
- a Markdown link check

If you want to manually perform these checks at any point in time, the following will check all files changed since the last commit:

```bash
pre-commit run
```

To check all files, regardless of their changed status:

```bash
pre-commit run --all-files
```

## Opening a Pull Request

When you think your changes are ready to be merged, open a pull request.
If you don't want your changes to be merged yet but would like some feedback, you can open a draft pull request.

When you open a pull request you will be presented with a template.
Complete the sections and answer the questions as best you can.
In particular, make sure to reference any issues your work closes or is related to.

### Continuous Integration

A series of tests are automatically conducted on each commit pushed to GitHub, as well as each pull request.
The tests are defined in {{% repo_link path=".github/workflows/ci.yaml" text="`ci.yaml`" %}}.

The following tests are required to pass before merging a pull request:

- A Markdown linter
- A Hugo build

There are other tests that are not *required* for merging, although you should aim to pass all tests.
Those are:

- A Markdown link checker
- A HTML proofer (including link checking) on the output of Hugo

## Keeping Your Branch up to Date

The branch protection rules applied to `main` will prevent out-of-date branches from being merged.
This means if your branch doesn't include the changes from the `HEAD` of `origin/main`, it won't be possible to merge it.

If your branch isn't up to date, you can fix it with a merge or rebase.

### Merging

[Merging](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging) the changes from `origin/main` is probably the simpler way to get your branch up to date.
It will leave the Git history a bit messier which can bother some people.

Ensure you have the latest changes on `origin/main` in your local repository

```bash
git fetch
```

Merge `origin/main` into your branch.
If your branch was called `my_branch` you would run

```bash
git switch my_branch
git merge origin/main
```

Git will notify you of any conflicts.
If there are conflicts, you should fix them before running `git merge --continue` to commit.
After you are done, you can push your changes.

### Rebasing

[Rebasing](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) your branch on top of `origin/main` can make conflicts more difficult or confusing to deal with, but leads to a more linear Git history..

Ensure you have the latest changes on `origin/main` in your local repository

```bash
git fetch
```

Apply your commits on top of `origin/main`.
If your branch was called `my_branch` you would run

```bash
git switch my_branch
git rebase origin/main
```

If you want to tidy up your commits or messages you might want to use an interactive rebase: `git rebase -i origin/main`.

Git will notify you of any conflicts.
If there are conflicts you will need to fix them iteratively, running `git rebase --continue` to apply each commit.

When the rebase is done, you will need to force-push your changes as you have rewritten the history of your branch.

```bash
git push -f
```

{{% hint warning %}}
Rewriting history is considered impolite on a branch where you are working collaboratively.
It can cause problems when the state of a remote changes unexpectedly.
{{% /hint %}}

## The Review Process

Currently, reviews are not required and pull requests may be merged by anyone with write access once all required CI checks pass.
If you like, you can enable [auto-merge](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/automatically-merging-a-pull-request) so that the merge happens automatically when this is the case.

However, if you'd like your changes reviewed you can suggest reviewers when, or after, opening your pull request.
If a reviewer then requests any changes or makes any comments, these should be resolved before the pull request is merged.
