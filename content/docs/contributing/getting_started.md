---
# Page title as it appears in the navigation menu
title: "Getting Started"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 1
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Getting Started

## Install dependencies

To contribute to the handbook you will need

- [Git](https://git-scm.com/downloads)
- [Hugo](https://gohugo.io/getting-started/installing/) (You will need the
  extended version with Sass/SCSS support)
- Your favourite text editor

{{% hint info %}}
You might also find it helpful to install
[markdownlint](https://github.com/markdownlint/markdownlint) so that you can
lint your branch before making a pull request.

The linting style used is included in the root of the repository,
`.mdl_style.rb`.
{{% /hint %}}

## Clone the repository

Clone the repository with

```bash
git clone --recurse-submodules git@github.com:alan-turing-institute/REG-handbook.git
cd REG-handbook
```

The `--recurse-submodules` flag is important as the handbook's theme is included
as a [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Serve the handbook locally

While working on the handbook, it will be useful to preview your changes
locally. To do this use Hugo's `server` command

```bash
hugo server --minify
```

In the output of this command will be a line similar to

```bash
Web Server is available at http://localhost:1313/REG-handbook/ (bind address 127.0.0.1)
```

which contains the URL of the locally served site. Navigate to this address in
your browser to preview the handbook.

The Hugo server will monitor the files in the repository and automatically
rebuild the site whenever you make changes. This is a useful tool to immediately
view your changes.
