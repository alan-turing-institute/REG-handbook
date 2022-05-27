# mdl rules https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

# Import all default rules
all

# Only allow atx style headings (e.g. # H1 ## H2)
rule 'MD003', :style => :atx

# Only allow dashes in unordered lists
rule 'MD004', :style => :dash

# Do not enforce line length
exclude_rule 'MD013'

# Ignore blockquotes separated only be a blank line. This is a limitation of
# some markdown parsers, not markdown itself.
exclude_rule 'MD028'

# Allow bare URLs (i.e. without angle brackets)
exclude_rule 'MD034'
