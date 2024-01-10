---
# Page title as it appears in the navigation menu
title: "Equipment"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 2
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Equipment

## Getting a New Computer

This is a list of the steps taken by a REG member when they got a new laptop for IT. Please note that you don't have to follow these steps, it is just advice given by someone who went through the process.

- [ ] Sign in to Apple Cloud on new machine. Activate all accounts (Office365, personal email, ...)

- [ ] `brew cask install emacs`, and anything else you need.

- [ ] Store config files on Apple Cloud, and symbolic link them to their required place, eg:
  - `~/.emacs.el`
  - `~/.bash_profile`

- [ ] Office (including OneDrive): install with the new "self service" app that IT now bundle with laptops (which apparently installs things via homebrew!)

- [ ] OneDrive setup. You might have a personal shared space on OneDrive, but also multiple shared spaces for projects, set up as "Groups" in Office 365. The standard location that Office chooses for your local OneDrive image is long and full of spaces. Put all shared spaces in ~/OneDrive-Actuals and then symbolic link to ~/OneDrive (for my personal space) and ~/Share/X (for project X).

- [ ] SSH tokens for GitHub. You can make new ones or think about moving the old ones, but it turned out to be straightforward to make new ones.

- [ ] Go through every repo with an authoritative remote, make sure you've pushed all local commits, and delete. (I keep all repos in `~/Projects/`, with remotes usually on GitHub.)

- [ ] Double-check other directories within `~/`

- [ ] Install Emacs additions as I learn that I need them ...
