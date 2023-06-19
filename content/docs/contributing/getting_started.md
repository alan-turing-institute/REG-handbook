---
# Page title as it appears in the navigation menu
title: "Getting Started"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 1
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Getting Started

## Install dependencies

To contribute to the handbook you will need

- [Git](https://git-scm.com/downloads)
- [Hugo](https://gohugo.io/getting-started/installing/) (You will need the
  extended version with Sass/SCSS support)
- Your favourite text editor
- Optionally [pre-commit](https://pre-commit.com/);
  see [Making Changes]({{< ref "/content/docs/contributing/contributing_changes.md#making-changes" >}})
  for more details.

## Clone the repository

Clone the repository with one of the following options (depending on how you
authenticate with GitHub):

{{< tabs "clone-command" >}}
{{< tab "SSH authentication" >}}

```bash
git clone --recurse-submodules git@github.com:alan-turing-institute/REG-handbook.git
cd REG-handbook
```

{{< /tab >}}
{{< tab "HTTPS authentication" >}}

```bash
git clone --recurse-submodules https://github.com/alan-turing-institute/REG-handbook.git
cd REG-handbook
```

{{< /tab >}}
{{< /tabs >}}

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
