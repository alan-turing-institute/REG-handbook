---
title: "Defining Project Doneness"
weight: 2

---

# Defining Project Doneness

This working document was produced as part of Accelerating AI in the Arts and Humanities (AAAH).

As a Research Software Engineer, we often join a collaborative project when a code base already exists.
Defining the aims of a collaboration can be challenging, and when there is limited time it is important to apply attention in the right places.
The following document is designed to help:

- Showcase what is important to us as RSEs
- Assessing the current status of an existing repo
- Define clear objectives
- Determine where to put effort
- Provide a common framework and language for collaborators
- Clearly define when the collaboration is done!

The framework includes objectives that focus on improving the impact and legacy of the software, expanding communities of practice, and providing a confident codebase for future research.

For each project discuss with collaborators which "Level" in each of the following categories is a MINIMUM aim for defining done.
Remember, time is a resource and so consider where efforts should be prioritised.

Reach and Robustness
: Level 01. **Internal users**: Identify how users already use the tool and its current issues.
: Level 02. **Best practices**: Address minimum code best practices with view to robustness and accessibility
: Level 03. **External users**: Identify how similar external users could use the tool and current barriers
: Level 04. **Generalise**: Identify how the tool could be made general and current barriers to that
: Level 05. **Proof of concept**: Demonstrate its use outside its original intended purpose/audience.

Functionality
: Level 01. **Standard use**: Install the tool, try out a standard use case, write a demo if one doesn't exist
: Level 02. **Known Limitations**: Understand and report.
: Level 03. **Advanced use**: Try out normal range but more advanced use cases, with edge cases.
: Level 04. **New features**: Identifying features for new functionality.
: Level 05. **Enhancements**: Fix functionality bugs and add features.

Documentation
: Level 01. **Follow docs**: Follow the existing starting point of documentation (no help!)
: Level 02. **What's missing**: Identify what documentation is missing: e.g. installation, optional arguments, licensing, diagrams/screenshots, future work, etc.
: Level 03. **Write docs**: Write the documentation in markdown files
: Level 04. **Published**: Release the documentation on GitPages etc
: Level 05. **Walkthrough**: Write walkthroughs/demos (also gifs or videos)

Testing
: Level 01. **Continous Integration** Start the automated infrastructure
: Level 02. **Defining Positive/Negative Cases** Conversation about what are the expected outcomes/how the tool works
: Level 03. **Automated User Tests** End-to-end tests that check expected outcomes from above, black box
: Level 04. **Fine-grain Tests/Unit Tests** Focus on critical/pain points, remove brittleness, modularise and reuseable components
: Level 05. **Error Reporting** Focus on negative cases, informative error communication for external collaboration

Open Release
: Level 01. **Find barriers**: Identify minimum criteria that need to be solved before public release e.g. authorship, sensitivity, licensing, publicity, timings
: Level 02. **Solve barriers**: Address the minimum criteria and milestone efforts
: Level 03. **Release**: Make the repo public.
: Level 04. **Distribute**: Release the repo on PiPY or CRAN or equivalent, include DOI
: Level 05. **Publisise**: Publish the repo with JOSS, and/or publicly present the work.
