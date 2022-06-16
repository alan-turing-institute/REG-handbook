---
# Page title as it appears in the navigation menu
title: "Meeting Records"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Meeting Records

When a synchronous meeting is unavoidable, it is critical to produce a clear and
thorough record.

The meeting record is important as a reference for what happened at the meeting.
In particular, any decisions made or actions assigned need to be clearly
recorded for future reference.

A good record will also be invaluable to anyone who was not able to attend an in
person meeting.

## Meeting Record Template

Below is a suggested [template]({{% static_url url="meeting_record.md" %}}) for
a meeting record document. The template uses
[Pandoc](https://pandoc.org/MANUAL.html#variables-for-latex)
[Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown). Parts of the
template are already filled with explanations of how they should be used.

{{% source_file file="static/meeting_record.md" language="md" %}}

For printing or wider distribution, a meeting record following the template may
be converted to pdf using Pandoc,

```bash
pandoc meeting_record.md -o meeting_record.pdf
```

A Pandoc [YAML metadata
block](https://pandoc.org/MANUAL.html#extension-yaml_metadata_block) at the top
of the template contains metadata about the meeting and helps the record render
into a good looking pdf document.

## How To Use

- Create the meeting record document before the meeting.
- Use a collaborative text editor like [HackMD](https://hackmd.io) so that all
  attendees may edit the document.
- Circulate the document to allow others to add and agree on agenda items.
- Distribute the record or store in a location visible to everyone who may need
  to read it.

The template may also be used to avoid a meeting entirely. The document can be
completed collaboratively and asynchronously while achieving the same result.
