---
# Page title as it appears in the navigation menu
title: "Configuring your code editor"
# Adjust the weight to reorder menu items (lower numbers appear first)
weight: 4
---

# Configuring your code editor

Many people will configure their editor to suit their own needs and preferences.

It is possible to do this so that there are common standards between collaborators in the code base, whilst allowing for differences in individuals' configurations.


{{< hint warning >}}
Some of the topics discussed below are heavily focused on python development. In due course we should generalise this to cover other languages.
{{< /hint >}}

## General

Some common particular formatting/encoding options can be configured for a range of editors/IDEs, by using [EditorConfig](https://editorconfig.org) in your repo. A
`.editorconfig` needs to be placed in the root of your repo.

Many (but not all) editors support EditorConfig files, allowing different members of your project team to use their own favourite editor, whilst maintaining common coding standards. Some support EditorConfig natively, others require a plugin to support EditorConfig.

There is some overlap in functionality between EditorConfig and Flake8. Crudely EditorConfig applies standards to files as they are created/edited, whilst Flake8 checks all files (irrespective of origin) on demand.

Both tools need to be set up en ensure that they are mutually compatible. However, since the configurations for both Flake8 and EditorConfig rarely change after the initial setup of the project, this is not a problem in practice.

## VS code

- [VS Code Python documentation](https://code.visualstudio.com/docs/python/python-tutorial)
- [ARC suggested config (Turing members only)](https://github.com/alan-turing-institute/ARC/blob/master/IDE/vscode/README.md)

### Extensions

Focusing on Python only, useful extensions include:

- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - adds core functionality for linting/navigating/debugging/etc.
  - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
  - [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
- [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent) - improves editor behaviour for matching indentation across lines
- [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) - auto-generate template docstrings
- [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode) - improved auto-completion/code suggestions
- [Black formatter (pre-release)](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) - auto-format code with `black`
- [isort (pre-release)](https://marketplace.visualstudio.com/items?itemName=ms-python.isort) - auto-format code with `isort`
- [Python Type Hint](https://marketplace.visualstudio.com/items?itemName=njqdev.vscode-python-typehint) - helps with completing type-hints

NB: The `black` and `isort` pre-release packages are currently designed to work with the Python pre-release version. This is likely to be consolidated/improved in the future.

### Settings

VS Code Settings are stored in:

- Global user settings: `~/Library/Application Support/Code/User/settings.json`
- Project-specific (Workspace) settings: `<PROJECT_ROOT>/.vscode/settings.json`

You can also customise most settings via the `Code -> Preferences -> Settings`
menu. For Python specifically note the `Extensions -> Python` section.

Here's an example config for Python (reliant on installing the extensions above):

```json
{
    "python.linting.flake8Enabled": true,
    "python.linting.mypyEnabled": true,
    "python.testing.pytestEnabled": true,
    "python.linting.pylintEnabled": true,
    "autoDocstring.docstringFormat": "numpy",
    "[python]": {
        "editor.rulers": [88],
        "editor.defaultFormatter": "ms-python.black-formatter",
        "editor.formatOnSave": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": true
        },
    },
}
```

It does the following:

- Activates linting with `flake8`, `mypy` and `pylint`
  - I'd suggest using `flake8` at a minimum, but you may not want all three activated as it gets quite noisy and there's some overlap between them.
- Sets `pytest` to be the default test framework.
- Sets `numpy` to be the default format for docstrings generated with autoDocstring.
- Sets `black` to be the default formatter, and automatically runs `black` and `isort` when saving a file.
- Adds a vertical ruler to the editor at 88 characters (default line length used by `black`) for Python files only.

Note that:

- It's possible to specify arguments for the linters/formatters in `settings.json`, but I'd suggest using each tool's own configuration files (e.g. `.flake8`), as these will then be picked up by other tools and editors as well. (e.g. Should configure `flake8` and `isort` to be compatible with `black`).
- If enabled tools are not installed in your Python environment VS Code should prompt you to install them.
- You are likely to have some non-Python specific configuration as well, so add the settings above to your `settings.json` file rather than overwriting it completely.

### Selecting Python interpreter

[VSC Python Interpreters Docs](https://code.visualstudio.com/docs/python/environments#_work-with-python-interpreters)

For each workspace VS Code can be configured to use a specific Python interpreter (environment). That interpreter is then used by default when doing anything with your code (running scripts, linting, tests etc.)

To set the interpreter:

- Open a `.py` file
- Click on the details of the currently used environment on the status bar (bottom right)
- Select an interpreter from the list that appears (or write the path to it)

Or from the command palette:

- Cmd-Shift-P -> Search for "Python: Select Interpreter"

### Linting

[VSC Liniting Docs](https://code.visualstudio.com/docs/python/linting)

If linters are activated (see Settings) they will be run after saving a file, and any problems the enabled tools encounter will be highlighted in-line in the editor, and be listed in the "Problems" tab of the panel at the bottom (or select View -> Problems from the menu).

Hovering over a piece of code with a problem in the editor will give you more details about it, and may have a "Quick Fix" available, which will edit the code for you to fix it.

### Formatting

[VSC Formatting Docs](https://code.visualstudio.com/docs/python/editing#_formatting)

VS code can use a few different file formatters (e.g. `black`, `yapf`, `autopep8` - we recommend `black`), which can be configured to run automatically when saving files (see settings above) or with the following shortcuts:

- Option-Shift-F
- Save the file (if auto-formatting is configured)
- Right-click in a Python editor -> Format Document
- Cmd-Shift-P (Opens Command Palette) -> Search for "format" -> "Format Document"

### Running tests

[VSC Testing Docs](https://code.visualstudio.com/docs/python/testing)

If you have enabled `pytest` (or another framework, e.g. `unittest`), tests will be discovered and appear in the `Testing` menu (lab bottle on the left side menu).

From here you can run all/individual tests. You can also search for "Tests" in the command palette (Cmd-Shift-P) to find options for running tests. If a test fails, clicking on it will show the error message. You can also debug tests (see debugging).

If you have a tests file open in an editor the latest pass/fail status of a test will be shown (or a play button if the test hasn't run before) - running tests can be triggered from there too.

### Debugging

[VSC Debugging Docs](https://code.visualstudio.com/docs/python/debugging)

Details to be added.

### Other tips and tricks

- **Auto-import:** If you start typing a function name that hasn't been imported, VS Code will pop up a list of suggested functions and "Auto-Import" them (add an import statement to the top of the script) if you select one of them.
- **Rename symbol:** Right-clicking on a (variable/function/class/etc.) name in a file, selecting "Rename symbol", and entering a new name will change the name of all instances of that across your codebase (but respecting the scope of the renamed entity).
- **Jupyter:** The Python extension comes with a Jupyter extension so you can run and edit notebooks in VS Code. Personally, I prefer the native Jupyter notebook/lab interface to the VS Code one.
- **AutoDocstring:** If the AutoDocstring extension is installed, typing `"""` then hitting enter will generate a template docstring for you containing placeholders for all arguments (including their types if type hints are used in the function definition).
- **Go to definition:** Right-clicking on a (variable/function/class/etc.) name and selecting "Go to definition" will take you to where that thing is defined in the codebase.
- **Git:** The editor highlights modifications to the code (by the line numbers), and you can also commit etc. from VS Code using the Source Control menu on the left.
- **Docker:** There are extensions ([1](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker), [2](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)) for running code in containers/attaching a VS code window to a container.

## Vim

Details to be added
