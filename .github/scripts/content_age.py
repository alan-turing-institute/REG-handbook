#! /usr/bin/env python3

from glob import iglob
from subprocess import check_output
from pathlib import Path
from datetime import datetime
from tabulate import tabulate

content_dir = Path("./content")

pages = []

for filename in iglob("**/*.md", root_dir=content_dir, recursive=True):
    stdout = check_output(
        ["git", "log", "-1", "--format=%aI", "--", filename],
        encoding="utf8",
        cwd=content_dir
    )

    pages.append((filename, datetime.fromisoformat(stdout.strip())))

table = tabulate(
    sorted(pages, key=lambda x: x[1]),
    headers=["file", "last modified"],
    tablefmt="github"
)

print(table)
