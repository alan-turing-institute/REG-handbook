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

As a reviewer you should

1. Use the [GitHub review
   system](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request)
   to check the diffs of all source files.
1. Clone the branch, build the handbook locally (using `hugo server --minify`)
   and inspect the changes using your browser. Not all bugs will be caught by CI
   and not all changes will be obvious in the source files.
1. Use [line
   comments](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)
   where you have comments or questions about particular changes so that the
   context is clear.
1. Use line comments to suggest changes (using the ± button).
1. [Submit your
   review](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request#submitting-your-review)
   making sure to choose "comment", "approve" or "request changes" as
   appropriate.
1. Work together with the contributors to resolve any conversations. All
   conversations **must** be resolved before merging.
1. Update your review status to "approve" when you are happy.
1. When all reviewers are happy, merge the pull request.
