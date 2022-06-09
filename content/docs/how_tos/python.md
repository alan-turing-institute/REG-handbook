---
# Page title as it appears in the navigation menu
title: "Python tools and practises"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 3
---

# Python tools and practices

Python is a widely used language within REG. Below are some useful tools to help you configure your repo (with links to examples).

* * *
> Note: Some of the topics discussed below are not exclusive to Python. As more content is added to the manual they should be separated out into their own pages.
* * *


# Autoformatters / Linters

There are many widely used autoformatter and linters for Python, which can be used as standalone tools or call from `.pre-commit`, continuous integration tools etc:

- [isort](https://pypi.org/project/isort/) Sorts your import statements correctly.
    -  The order `isort` "sorts" imports in the following order:
      1. standard library imports (e.g. `import os`)
      2. related third party imports (e.g. `import pandas`)
      3. local application/library specific imports (e.g. `from .my_python_file import MyClass`)
    - You should put a blank line between each group of imports.
    - the configuration of `isort` can be specified in a `pyproject.toml` file, where `isort` is using the `[tool.isort]` section.
- [black](https://pypi.org/project/black) A highly opinionated code formatter, which enforces control of minutiae details of your code.
    - the configuration of `black` can be specified in a `pyproject.toml` file, where `black` is using the ``[tool.black]`` section.
- [flake8](https://pypi.org/project/flake8) A wrapper for three other tools:
    - PyFlakes - checks syntax, without checking style
    - pycodestyle - checks compliance with [PEP8](https://peps.python.org/pep-0008/)
    - Ned Batchelder’s McCabe script - checks the cyclomatic complexity of code.
    - configuration can be specified in a `.flake8` configuration file in the root directory of your project.

It is possible to use all of these in combination. For Turing members only, the ARC group have a [repo with suggested configuration files](https://github.com/alan-turing-institute/ARC/tree/master/code-style/suggested-config) which you can copy/adapt as required.


# Type checkers

Type checking is optional in Python but is generally recommended. There are several tools which can perform type checking:

- [mypy](http://mypy-lang.org) - This type-checker has the distinction of including [Guido van Rossum](https://python.org/~guido) in its core development team.
- [pyright](https://github.com/Microsoft/pyright) - By Microsoft.
- [pytype](https://github.com/google/pytype) - By Google.

Currently, no opinion is offered in selecting between these tools.


# Jupyter Notebooks
Python-based Jupyter Notebooks are widely used within REG. There are some specific considerations when applying coding standards to notebooks.

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
- Single sourcing package version number




# Testing Strategy

Details to be to added, including:
- Some notes on TDD in practice - what needs automated testing?
- matrix tests (test one version ahead of your current target version)
- measuring coverage:
    - how to do it (eg tool chain to do it)
    - how much meaning/importance to place on it (or not)
