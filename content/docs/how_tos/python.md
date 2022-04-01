---
# Page title as it appears in the navigation menu
title: "Python tools and practises"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 3
---

Python is a widely used language within REG. Below are some useful tools to help you configure your repo (with links to examples).

* * *
> Note: Some of the topics discussed below are not exclusive to python. As more content is added to the manual they should be separated out into their own pages.
* * *


# Autoformatters / Linters

There are a number of widely used autoformatter and linters for python, which can be used as standalone tools or call from .pre-commit, continuous integration tools etc:

- [isort](https://pypi.org/project/isort/) Sorts your import statements correctly.
- [black](https://pypi.org/project/black) A highly opinionated code formatter, which enforces control of minutiae details of your code.
- [flake8](https://pypi.org/project/flake8) A wrapper for three other tools:
    - PyFlakes - checks syntax, without checking style
    - pycodestyle - checks compliance with [PEP8](https://peps.python.org/pep-0008/)
    - Ned Batchelder’s McCabe script - checks the cyclomatic complexity of code.

It is possible to use all of these. For Turing members only, the arc group have a [repo with suggested configuration files](https://github.com/alan-turing-institute/ARC/tree/master/code-style/suggested-config) which you can copy/adapt as required.


# Type checkers

Details to be added.


# Configuring your editor

## General

Some common particular formatting/encoding options can be configured for a range of editors/IDEs, by using [EditorConfig](https://editorconfig.org) in your repo. A
`.editorconfig` needs to be placed in the root of your repo.

Many (but not all) editors support EditorConfig files, allowing different members of your project team to use their own favourite editor, whilst maintaining common coding standards. Some support EditorConfig natively, others require a plugin to support EditorConfig.

There is some overlap in functionality between EditorConfig and Flake8. Crudely EditorConfig applies standards to files as they are created/edited, whilst Flake8 checks all files (irrespective of origin) on demand.

Both tools need to be setup en ensure that they are mutually compatible. However, since the configurations for both Flake8 and EditorConfig rarely change after the initial setup of the project, this is not a problem in practice.

## VS code

Details to be added
(Turing members only, see https://github.com/alan-turing-institute/ARC/blob/master/IDE/vscode/README.md)


## Vim
Details to be added

# Jupyter Notebooks
Python based Jupyter Notebooks are widely used within REG. There are some specific considerations when applying coding standards to notebooks.

Details to be added.


# Automation (pre-commit & actions)

Details to be added, including

* Pre-commit Hooks (see https://pre-commit.com/)
* GH actions


# Deployment and packaging

Details to be added, including

- GH Actions
- setup.py vs poetry
- Publishing to PyPI
- Publishing to conda-forge
- What should trigger a deployment? (eg every commit to main, tag-commit, etc)


# Testing Strategy

Details be to added, including:
- Some notes on TDD in practise - what needs automated testing?
- matrix tests (test one version ahead of your current target version)
- measuring coverage:
    - how to do it (eg tool chain to do it)
    - how much meaning/importance to place on it (or not)