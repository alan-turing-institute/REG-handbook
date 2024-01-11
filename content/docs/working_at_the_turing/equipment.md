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

This is a list of the steps taken by a REG member when they got a new Turing laptop from IT to replace their old laptop. Please note that you don't have to follow these steps, it is just advice given by someone who went through the process.

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

## Additional Equipment

There is a budget to purchase peripherals (monitor, mouse, keyboard, _etc._) as well as other equipment such as an office chair and desk. You can purchase the office chair and desk yourself and claim back up to £200 in total via Certify. The official process is to assess your home-working set up via a [workstation self-assessment form](https://mathison.turing.ac.uk/page/2810). However, you can try contacting the [facilities team](https://github.com/alan-turing-institute/research-engineering-group/wiki/The-REGistry#points-of-contact) directly. For peripherals, it's better to contact [IT](https://github.com/alan-turing-institute/research-engineering-group/wiki/The-REGistry#points-of-contact). See the [Turing's Homeworking Policy](https://mathison.turing.ac.uk/page/2218) for more information.

If there are health and safety reasons why you would want equipment that differs from the standard Apple keyboard/mouse then contact [HR](https://github.com/alan-turing-institute/research-engineering-group/wiki/The-REGistry#points-of-contact) directly, there is a separate health and safety budget for such things.
