---
# Page title as it appears in the navigation menu
title: "Software Development"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 5
---

# Software Development Best Practices

_Status:_ this document is a draft proposal.

## RSE projects

- There should be a Github issue for each thing we do. It’s ok for issues to
    evolve and my preference would be that the top description box always has
    the most up to date, clearest description of the issue and its definition of
    done. Feel free to make liberal use of the comments for communication and
    tracking investigative / exploratory work. The main description box should
    contain a clear definition of done / acceptance criteria sufficient for the
    following to be done in principle by different people from the team who are
    involved in the project.
    - Implement the functionality
    - Write tests to validate the implementation meets the definition of done
    - Review the implementation for correctness

- All code should have automated tests, with all tests runnable by a single
    command by someone who has checked out a fresh copy of the repo.

- All dependencies, installation, compilation etc should be scripted such that
    these can be triggered by a single command by someone who has checked out a
    fresh copy of the repo. Dependencies required only for testing can require a
    second command or few.

- Each new issue should be developed on a short-lived feature branch split
    from “main”. These branches ideally only live around 0.5-2 days before
    being merged back into main. Merge process should be: merge main into
    feature branch and resolve any conflicts. Push latest feature branch to
    Github. Open PR to merge into main after review + continuous integration
    (CI) tests.

- Code should be committed regularly in small chunks. You should generally be
    committing multiple times per day. Commits on feature branches can have
    broken functionality or tests, but all merges into main should only occur
    at commits where the code is correct and has passing tests.

- All code commits should be accompanied by tests verifying it behaves as
    expected. At a minimum code submitted as a PR should have tests that show it
    meets the definition of done defined in the related issue(s). However, code
    should have additional unit / regression / integration tests where
    appropriate (it’s almost always appropriate). Writing code then tests is a
    significantly lower quality assurance measure than writing tests first / in
    iteration with the code, so you should do the latter.

- All code should have had two eyeballs on it before it is merged into main,
    either through pair programming or code review within the PR. Please note on
    the PR who two eyes were. The second pair of eyes can be anyone on the
    project (not just a coder), anyone in our team or someone from a related
    team (e.g. the UCL research programming). Whether as pair programming or a
    code review, the final PR code should be validated against the definition of
    done detailed in the related issue(s) by the two pairs of eyes.

- The Github repository should be set up to run all tests on all pushes to all
    branches and on all PRs. Currently this can be done for public repos via
    GitHub Actions. If CI is set up this way, commits to main should
    be blocked unless all tests pass.

## Data Science projects

TBD
