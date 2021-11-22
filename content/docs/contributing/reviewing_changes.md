---
# Page title as it appears in the navigation menu
title: "Reviewing Changes"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 5
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Reviewing Changes

The review process helps to ensure high quality and catch problems in
contributions. When acting as a reviewer, you should see your position as
sharing your knowledge and working with the contributors to achieve the best
possible result. Reviewing should **not** be an adversarial process.

## Code Quality

As a reviewer, one of your jobs is to ensure the quality of the codebase remains
high.

The CI process will help to assess pull requests by subjecting each commit to a
series of tests. Some tests are required to pass and will block merging until
they do.

Other tests are allowed to fail. This is because these tests check external
hyperlinks which can fail for reasons out of our control. For example, a website
being offline or a rate limiting API. However, you should always aim to have
all tests passing and investigate why any test fails. In particular, a genuinely
incorrect link should not be ignored.

You should **always** clone the branch, build the handbook locally (using `hugo
server --minify`) and inspect the changes using your browser. Not all bugs will
be caught by CI and not all changes will be obvious in the source files.

## Reviewing the Pull Request

Use the [GitHub review
system](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request)
to check the diffs of all source files.

You should make use of [line
comments](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)
where you have comments or questions about particular lines of sections. This
gives context so that everyone knows where the problem is or what the question
refers to.

Line comments can also be used to suggest changes (using the ± button). You
should do this when you have a simple solution. This is an excellent way to
share knowledge.

When you are finished, [submit your
review](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request#submitting-your-review)
making sure to choose "comment", "approve" or "request changes" as appropriate.

## Changes

If you request changes, the pull request will enter an iterative process where
the contributors make adjustments you repeat the review process.

The contributors may accept your proposed changes, make their own changes or
push back against changes. All of these may be appropriate. It is important to
work together with the contributors to resolve any conversations. All
conversations **must** be resolved before merging.

## Merging

Update your review status to "approve" when you are happy with the state of the
pull request. When all reviewers are satisfied, merge the pull request.
