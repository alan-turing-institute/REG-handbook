# mdl rules https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

# Import all default rules
all

# Only allow atx style headings (e.g. # H1 ## H2)
rule 'MD003', :style => :atx

# Only allow dashes in unordered lists
rule 'MD004', :style => :dash

# Don't enforce a particular list indentation
exclude_rule 'MD007'

# Do not enforce line length
exclude_rule 'MD013'

# Allow punctuation in headers
rule 'MD026', :punctuation => '.,;:'

# Ignore blockquotes separated only be a blank line. This is a limitation of
# some markdown parsers, not markdown itself.
exclude_rule 'MD028'

# Allow raw html in Markdown (for contributors table)
exclude_rule 'MD033'

# Allow bare URLs (i.e. without angle brackets)
exclude_rule 'MD034'
