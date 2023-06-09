---
# Page title as it appears in the navigation menu
title: "How to Use Hub23"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 7
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# How to use Hub23: the Turing BinderHub

**Note**: this likely needs updating, last revision was in Nov 2019.

## What is a BinderHub?

A [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) is a Cloud-based technology that can launch a repository of code (from GitHub, GitLab,...) in a browser window such that the code can be executed and interacted with.
A unique URL is generated allowing the interactive code to be easily shared.

The purpose of these Binder instances is to promote reproducibility in research projects by encouraging researchers to document their software dependencies by producing fun and interactive environments!

## Why build a BinderHub at the Turing?

[mybinder.org](https://mybinder.org/) is a free, public service that hosts almost 100k Binder launches per week.
Why do we need to have our own?

Binder is an open source project maintained by volunteers and as such they ask that users stay within certain limitations in order to keep running costs as low as possible whilst still providing a usable service.
By hosting our own BinderHub, we can offer much more flexible and tailored resources to our users.
These include:

- authentication,
- greater computational resources per user,
- bespoke library stacks,
- hosting private repos,
- persistent storage for users.

We have also contributed to the Binder community by sharing our knowledge on building BinderHubs on Azure!
(mybinder.org runs on Google Cloud.)

## How does BinderHub work?

- [`repo2docker`](https://repo2docker.readthedocs.io/en/latest/?badge=latest)

  `repo2docker` is a tool that will build a Docker image from a code repository given a configuration file.

- [Kubernetes](https://kubernetes.io/)

  Kubernetes is a system for automating deployment, scaling, and management of containerised applications across a compute cluster (Cloud-based, bare-metal or otherwise).

- [JupyterHub](https://jupyter.org/hub)

  JupyterHub is a multi-user server for Jupyter Notebooks and containers alike.

Kubernetes provides the compute resources from the Cloud-based cluster to run a container built by `repo2docker`.
The JupyterHub provides the browser-based environment for the container to run in and connects your browser to it.

## How to gain access to Hub23

1. You need to be a member of the `binderhub-test-org` on GitHub.
   Ask Sarah Gibson to send you an invitation over Slack or via email (don't forget to include your GitHub username in your message!).
   Check your email for the invitation.
1. Your membership of `binderhub-test-org` must be **public**, but will be private by default when you join.
   To change it, go to <https://github.com/orgs/binderhub-test-org/people> and find your username.
   Click the arrow next to where it says "Private" and select "Public" from the drop-down menu.
1. Go to [binder.hub23.turing.ac.uk](http://binder.hub23.turing.ac.uk) and login with your GitHub username and password!
   You will be asked to authorise an OAuth app from `binderhub-test-org`.
   This has read-only permissions to read your organisation/team memberships and is why your membership needs to be public!

## How to use the Hub23 Binder

1. Copy the URL of a Binder-ready repo into the URL box on the Hub23 Binder homepage.
   There is a drop-down menu to say whether the repo is from GitHub, GitLab, etc.
   - You can specify a specific branch, tag or commit to build in the "Git branch, tag or commit" box.
   - You can specify a file to be opened on launch by filling in the "Path to notebook file" box with a path relative the the repo root.
   - You can specify an environment to be launched by changing the drop-down menu next to the "Path to notebook file" box to URL.
     Enter `lab` for a JupyterLab environment, or `rstudio` for RStudio.
1. Press launch!
   The repo will be spun up on a server in the Cloud and connected to your browser.

### How do you know if a repo is Binder-ready?

A Binder-ready repo should contain a configuration file in its root that lists all the software needed to run the code.

For Python, this may be a `requirements.txt` or `environment.yml` file.
For R, this may be `NAME` and `DESCRIPTION` files or an `install.R` file.

It must also contain a `runtime.txt` file which contains the version of the core programming language.
For example:

```bash
python-3.6          # To pin to v3.6 of python
r-<YYYY>-<MM>-<DD>  # To pin to a specific version of R published on MRAN
```

Just because these files exist, doesn't necessarily mean that Binder will be able to launch them first time!
Some debugging may be required!

## How to make your own repo Binder ready

To make your repo Binder-ready, you need to provide a configuration file which describes your software into the root of the repo.

The Binder team have provided a list of minimum working examples for a variety of configuration files [here](https://mybinder.readthedocs.io/en/latest/config_files.html#configuration-files).
The [binder-examples](https://github.com/binder-examples) organisation is also a good place to find examples of different configurations.

A very high-level, Python-based tutorial is available [here](https://bit.ly/zero-to-binder-solo) or you can read the Binder section of _The Turing Way_ book [here](https://the-turing-way.netlify.com/reproducible_environments/reproducible_environments.html#binder-1).

To auto-generate config files for a Python environment:

```bash
pip freeze > requirements.txt
conda env export > environment.yml
```

## Troubleshooting

If you have any problems, check out the [mybinder documentation](https://mybinder.readthedocs.io/en/latest/), [open an issue](https://github.com/alan-turing-institute/hub23-deploy/issues/new) on the deployment repo, or ask Sarah Gibson.

## Some caveats to remember when using Binder

🚧 🚧 Hub23 is under active development and so the below is subject to change. 🚧 🚧

- Only public repos can be built.
- Don't upload sensitive data, secrets, keys, anything you don't want accessible by the world!
- Each user is allocated 0.5 vCPU and 1GB RAM and your kernel will be killed if your computation exceeds this.
- The more code/data in your repo, the bigger your Docker image will be, the longer it will take to build/load.
  Consider using a [postBuild](https://mybinder.readthedocs.io/en/latest/config_files.html#postbuild-run-code-after-installing-the-environment) file to download data or stream it as part of your code.
- Any changes you make in a running Binder will be lost when you close the browser window - even if you clicked save!
- Only connections via HTTP or HTTPS are accepted by a Binder.
