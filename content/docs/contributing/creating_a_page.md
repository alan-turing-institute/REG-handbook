---
# Page title as it appears in the navigation menu
title: "Creating a Page"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Creating a Page

Hugo provides a convenient way to new pages from templates called
[Archetypes](https://gohugo.io/content-management/archetypes/). You can see the
archetypes in the {{% repo_link path="archetypes" text="archetypes directory"
%}}.

To create a new docs page use the `hugo new` command.

```bash
hugo new content/docs/<path/to/page>.md
```

For example, if you wanted to create this page, you would type

```bash
hugo new content/docs/contributing/creating_a_page.md
```

Hugo will create a new Markdown document at the path you specified. Because your
document is in the `docs` directory it will look for an archetype called {{%
repo_link path="archetypes/docs.md" text="docs.md" %}} to use as a template.

Now you can edit your page with your favourite text editor. For example

```bash
vim content/docs/contributing/creating_a_page.md
```
