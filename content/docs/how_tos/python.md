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

A convenient way to 




```
# See https://pre-commit.com for more information
# See https://pre-commit.com/hooks.html for more hooks
repos:
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.2.0
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml
    -   id: check-xml
    -   id: check-json
    -   id: pretty-format-json
        args: [--no-ensure-ascii, --no-sort-keys, --autofix]
        files: ".+json"
    -   id: check-added-large-files
-   repo: https://github.com/psf/black
    rev: 22.3.0
    hooks:
    -   id: black
#        files: "*.py"
        exclude: ".+/ignore_this_legacy_file.py"
-   repo: https://github.com/pre-commit/mirrors-autopep8
    rev: 'v1.6.0'  # Use the sha / tag you want to point at
    hooks:
    -   id: autopep8
-   repo: https://github.com/pre-commit/mirrors-mypy
    rev: 'v0.960'  # Use the sha / tag you want to point at
    hooks:
    -   id: mypy
        exclude: ".+/ignore_this_legacy_file.py"
-   repo: https://github.com/pre-commit/mirrors-isort
    rev: v5.10.1
    hooks:
    -   id: isort
```

This example checks:
  
* There is no trailing whitespace at the end of each line.
* There is exactly one blank line at the end of the file.
* Any `yaml` files in the repo are formatted correctly.
* Any `xml` files in the repo are formatted correctly.* 
* Any `json` files in the repo are formatted correctly and "pretty * printed".
* If any large files have been added to the repo without using [git* -lfs](https://git-lfs.github.com/)
* Any python code (except the file named "ignore_this_legacy_file.p* y"), is formatted according to "[black's](https://black.readthedocs.io/en/stable/)" _uncompromising_ standard.
* Any python code (except the file named "ignore_this_legacy_file.p* y"), is formatted according to "[pep8's](https://pep8.org/)" standard.
* Any python code is tested for type safeness (That is declaring ty* pes is optional, but if types are declared they must be correct).
* The import statements in any python code are correctly ordered.* 
  
If any of these tests (a) fail or (b) need to alter any files, the commit will fail. This prevents you from accidentally forgetting to check your changes before you commit them.

If you wish to run the checks in `pre-commit` without attempting to commit your changes:

```bash
$ pre-commit run --all-files
```

There are many other possible checks available with `pre-commit`, which you can incorporate according to the needs of your project. The [`pre-commit` documentation](https://pre-commit.com/) provides much more detail.


# Deployment and packaging

There are a range of ways to make python software available for distribution. Which combination of tools and processes you use depends on the particular aims of your project. 

In due course, details to be added here, including:

- GH Actions
- setup.py vs poetry
- Publishing to PyPI
- Publishing to conda-forge
- What should trigger a deployment? (eg every commit to main, tag-commit, etc)
- Single sourcing package version number


# Testing tools

Some suggested testing tools:

* A test framework [pytest] or the less fashionable [unittest](https://docs.python.org/3/library/unittest.html)
* Coverage reporting [pytest-cov](https://pypi.org/project/pytest-cov/) (a plugin for `pytest`) or [coverage](https://coverage.readthedocs.io/en/stable/)
* A tool for testing code examples in your documentation [doctest](https://docs.python.org/3/library/doctest.html)

This list of tools does not include a discussion on developing a _testing strategy_. Developing a testing strategy is a separate discussion, though it is not possible to make optimal use of these tools without a strategy.

