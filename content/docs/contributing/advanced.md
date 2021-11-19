---
# Page title as it appears in the navigation menu
title: "Advanced"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 6
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Advanced

## Using Data

Through using templates Hugo can [build page content from
datafiles](https://gohugo.io/templates/data-templates/). This is particularly
useful for when you want to display structured data in a page and when it would
be easier to maintain a datafile rather than a Markdown or HTML document.

## Creating Shortcodes

It is possible to [create your own
shortcodes](https://gohugo.io/templates/shortcode-templates/). These should be
placed in {{% repo_link path="layouts/shortcodes/" text="`layouts/shortcodes/`"
%}}.

If you feel the need to use HTML or want to create page content from a datafile
(like a YAML file or csv) then a shortcode is probably the right answer.

You should refer to Hugo's [templates](https://gohugo.io/templates/) and
[functions](https://gohugo.io/functions/) documentation for resources to help
writing a shortcode.

## Partial Templates

Whole page templates are built from of a number of smaller [partial
templates](https://gohugo.io/templates/partials/). This approach reduces
repeated code in templates and help keep making changes simple.

The theme defines a number of dummy [partial
templates](https://github.com/alex-shpak/hugo-book#partials) for us to
overwrite.

For example, the Creative Commons notice at the bottom of each page was added by
editing {{% repo_link path="layouts/partials/docs/inject/footer.html"
text="`layouts/partial/docs/inject/footer.html`" %}}.
