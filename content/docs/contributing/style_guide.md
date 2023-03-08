---
# Page title as it appears in the navigation menu
title: "Style Guide"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Style Guide

## Semantic Line Breaks

It is encouraged to use [Semantic Line Breaks](https://sembr.org/) when writing for the handbook.
This improves the readability of source files and make diffs clearer.
The Semantic Line Breaks [specification](https://sembr.org) explains the rules and reasoning.
The most important rules are,

> - A semantic line break MUST occur after a sentence, as punctuated by a period (.), exclamation mark (!), or question mark (?).
> - A semantic line break SHOULD occur after an independent clause as punctuated by a comma (,), semicolon (;), colon (:), or em dash (—).
> - A semantic line break MAY occur after a dependent clause in order to clarify grammatical structure or satisfy line length constraints.

## Markdown

Whenever possible, the handbook's prose should be written in Markdown rather than HTML.
However, it is completely reasonable use HTML when it is needed.
When it is advantageous, data should be [stored in data files and processed using shortcodes](https://gohugo.io/templates/data-templates/) rather than presented in raw Markdown.

## Style Enforcement

Markdown styling is enforced by [`markdownlint`](https://github.com/markdownlint/markdownlint) using the configuration {{% repo_link path=".mdl_style.rb" text=".mdl_style.rb" %}}.
An explanation of the style rules can be found [here](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md).

You can optionally install `markdownlint` locally to check your changes before submitting a pull request.

### Using `pre-commit`

The easiest way to do this is to use the [pre-commit](https://pre-commit.com/) tool, which has already been set up in the handbook repository.

```bash
brew install pre-commit   # if not already installed
pre-commit run markdownlint --all-files
```

`pre-commit` is intended to be run before all commits (to make sure that you don't unintentionally commit something unwanted).
To see how to set this up, see the [Contributing Changes]({{< ref "/content/docs/contributing/contributing_changes.md#making-changes" >}}) page.

### Manual Installation

{{% hint info %}}
Make sure you install the Ruby version (`mdl`) and not the Node.js version (`markdownlint-cli`, which the Homebrew formula provides),
since the configuration is only good for the former.
{{% /hint %}}

First, install Ruby with Homebrew, and then use that to install `mdl`.
macOS actually provides a system installation of Ruby, but using that isn't advisable as you need to install gems as the root user.

```bash
brew install ruby
$(brew --prefix ruby)/bin/gem install mdl
```

Now, run

```bash
$(brew --prefix ruby)/bin/gem env | grep 'EXECUTABLE DIRECTORY'
```

and add the directory shown to `$PATH`.
You should now be able to access the `mdl` executable.
Assuming you're in the repository root, you can lint a specific file you've made changes to like this:

```bash
mdl -s .mdl_style.rb <filename>
```

Alternatively, run it over the entire handbook content like this:

```bash
mdl -s .mdl_style.rb ./content
```
