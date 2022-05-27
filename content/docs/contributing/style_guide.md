---
# Page title as it appears in the navigation menu
title: "Style Guide"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Style Guide

## Semantic Line Breaks

It is encouraged to use [Semantic Line Breaks](https://sembr.org/) when writing for the handbook.
This improves the readability of source files and make diffs clearer.
The Semantic Line Breaks [specification](https://sembr.org) explains the rules and reasoning.
The most important rules are

> - A semantic line break MUST occur after a sentence, as punctuated by a period (.), exclamation mark (!), or question mark (?).
> - A semantic line break SHOULD occur after an independent clause as punctuated by a comma (,), semicolon (;), colon (:), or em dash (—).
> - A semantic line break MAY occur after a dependent clause in order to clarify grammatical structure or satisfy line length constraints.

## Markdown

Whenever possible, the handbook's prose should be written in Markdown rather than HTML.
However, it is completely reasonable use HTML when it is needed.
When it is advantageous, data should be [stored in data files and processed using shortcodes](https://gohugo.io/templates/data-templates/) rather than presented in raw Markdown.

Markdown styling is enforced by [markdownlint](https://github.com/markdownlint/markdownlint) using the configuration {{% repo_link path=".mdl_style.rb" text=".mdl_style.rb" %}}.
An explanation of the rules can be found [here](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md).
