---
# Page title as it appears in the navigation menu
title: "Editing a Page"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 3
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exlude this page from the search
# bookSearchExclude = true
---

# Editing a Page

If you followed the instructions in the [Getting Started section]({{% ref
"getting_started.md" %}}) to checkout the repository and serve the handbook
locally you can edit a page locally. However, as you may have noticed, at the
bottom of each page is a link to edit the page in the GitHub web editor if you
would prefer. This may be easy for making small changes.

## Pages

Each page is a [Markdown](https://www.markdownguide.org/) file with
[YAML](https://yaml.org/) front matter followed by the page contents in
Markdown.

### Front Matter

The [front matter](https://gohugo.io/content-management/front-matter/) is used
to define various pieces of metadata related to a page. The front matter appears
at the top of a content file. In the handbook we format front matter as YAML,
preceded and followed by three hyphens.

```yaml
---
title: "Example Page"
weight: 1
---
```

The [full YAML specification](https://yaml.org/spec/1.2.2/) is long and
comprehensive. The most important thing to understand here is that the front
matter YAML consists of keys and values separated by a hyphen. For example, in
the expression `weight: 1`, `weight` is the key with a value of `1`.

If you created a page using `hugo new` then some boilerplate front matter with
explanatory comments should already be present. If you are editing an existing
page there should already be front matter.

Most of the time, the only keys you will need to consider are `title` and
`weight`.

`title`
: The title of a page as it appears in the navigation menu

`weight`
: Determines the order of pages in the navigation menu. Smaller numbers appear
first

The Hugo documentation details a set of [predefined front matter
keys](https://gohugo.io/content-management/front-matter/#front-matter-variables).
Other valid fields related to the handbook theme are documented in the [theme's
README](https://github.com/alex-shpak/hugo-book#page-configuration).

### Content

After the front matter is the content section.

```markdown
---
title: "Example Page"
weight: 1
---

| content section |
```

The content section is formatted in Markdown. Markdown Guide outlines the
[basic](https://www.markdownguide.org/basic-syntax/) and
[extended](https://www.markdownguide.org/extended-syntax/).

{{% hint warning %}}
Not all of the extended Markdown syntax may be implemented by Hugo's [Markdown
renderer](https://gohugo.io/getting-started/configuration-markup)
{{% /hint %}}

### Shortcodes

[Shortcodes](https://gohugo.io/content-management/shortcodes/#use-hugos-built-in-shortcodes)
are templates (which can be parametrised) and included the content section. They
can be particularly useful for including more complex features than Markdown's
simple syntax will allow. Using a shortcode is preferable to including raw HTML
in a content file.

Shortcodes can called in Markdown content files the following way

```markdown
{{%/* shortcode parameter */%}}
```

Some shortcodes may have an opening and closing tag, similar to HTML

```markdown
{{%/* shortcode */%}} content to process {{%/* /shortcode */%}}
```

#### Hugo Shortcodes

Hugo has a set of useful [built-in
shortcodes](https://gohugo.io/content-management/shortcodes/#use-hugos-built-in-shortcodes).

In particular

- [figure](https://gohugo.io/content-management/shortcodes/#use-hugos-built-in-shortcodes)
- [gist](https://gohugo.io/content-management/shortcodes/#gist)
- [highlight](https://gohugo.io/content-management/shortcodes/#highlight)
- [param](https://gohugo.io/content-management/shortcodes/#param)
- [ref and
  relref](https://gohugo.io/content-management/shortcodes/#ref-and-relref)

#### Theme Shortcodes

The theme has a [number of
shortcodes](https://github.com/alex-shpak/hugo-book#shortcodes) which may be
helpful.

In particular

- [hints](https://hugo-book-demo.netlify.app/docs/shortcodes/hints/)
- [expand](https://hugo-book-demo.netlify.app/docs/shortcodes/expand/)
- [KaTeX](https://hugo-book-demo.netlify.app/docs/shortcodes/katex/)
- [tabs](https://hugo-book-demo.netlify.app/docs/shortcodes/tabs/)

#### Repository Shortcodes

Shortcodes can be included in the handbooks repository. For more information see
[Creating Shortcodes]({{% ref "advanced.md#creating-shortcodes" %}})

##### repo_link

Create a link to a file or directory in the handbook's repository.

```markdown
{{%/* repo_link target="README.md" text="README" */%}}
```

`target`
: Path to the file or directory relative to the root of the repository

`text`
: Text of the link (can include Markdown formatting)
