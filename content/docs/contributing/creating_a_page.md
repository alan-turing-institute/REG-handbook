---
# Page title as it appears in the navigation menu
title: "Adding New Content"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Adding New Content

## How Hugo Arranges Content

Pages are build from content files in the {{% repo_link path="content/"
text="`content/`" %}} directory. Hugo automatically gives pages a URL based on
the organisation of files in the `content/` directory.

In Hugo, the first directory after `content/` is significant and [defines the
content type](https://gohugo.io/content-management/sections/). All handbook
pages should be nested in the `content/docs/` directory.

Sections may be created in `content/docs/` (to any depth) by creating a
directory containing a content file called `_index.md`.

{{% hint warning %}}
It is important that the index file exists for Hugo to [correctly assign pages
to sections](https://gohugo.io/content-management/sections/#nested-sections) and
for the [theme](https://github.com/alex-shpak/hugo-book) to arrange pages in the
tree-like menu.
{{% /hint %}}

## Creating a New Page

To create a new handbook page use the `hugo new` command.

```bash
hugo new content/docs/<path/to/page>.md
```

If you wanted to create this page, you would type

```bash
hugo new content/docs/contributing/creating_a_page.md
```

Hugo will create a new Markdown document at the path you specified.

Hugo provides a convenient way to new pages from templates called
[Archetypes](https://gohugo.io/content-management/archetypes/). You can see the
archetypes in the {{% repo_link path="archetypes" text="`archetypes/` directory"
%}}.

Because your document is in the `docs` directory, Hugo will look for an
archetype called {{% repo_link path="archetypes/docs.md" text="`docs.md`" %}} to
use as a template.

Now you can edit your page with your favourite text editor. For example

```bash
vim content/docs/contributing/creating_a_page.md
```

## Creating a Section

We can also use the `hugo new` command to create a new section, both the
directory and index file. For example

```bash
hugo new content/docs/new_section/_index.md
vim content/docs/new_section/_index.md
```

If you only want a section to organise some pages and not to have a page of its
own, you can simply leave the content section of `_index.md` (after the YAML
front matter) empty.
