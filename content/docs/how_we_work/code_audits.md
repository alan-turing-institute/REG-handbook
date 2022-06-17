---
# Page title as it appears in the navigation menu
title: "Repo Audits"
# Adjust the weight to reorder menu items (lower numbers appear first)
weight: 2
---

# Repo Audits

As required we conduct audits of [GitHub repositories created during projects]({{< relref "../our_projects/project_outputs.md" >}}). The aim is to check that the documentation is clear, installation is easy etc.

Audits should be conducted by people who have not worked on the project.

## Past experience

These comments from running the first round of these in June 2021:

> Installation is a big barrier for software with complex build requirements. We tried looking at two web app projects (Counterfactual Covid 19 and CROP) and despite Docker images being available we weren't able to get them to build correctly. We might have had more success if all we needed to do was a pip or CRAN install.
>
> - First lesson: installation is ALWAYS harder than you think, and we need to get more fresh eyes on build instructions if we want our software to be easily usable.
> - Second Lesson: Not having someone on hand from the project can be a big barrier, as we suspect there may have just been some small tweaks or changes that would fix our problem.
> - One suggestion was to have a mix of unsupervised hacking and more knowledgeable feedback, maybe by having the person working on the project show up an hour in. If we can't get someone who knows the project well to attend, at least have them available on Slack in case we get stuck.
> - At the very least, we were able to document our issues on the repo, and in at least one case the project was able to make fixes.
>
> One suggestion is to encourage "Good First Issue" tags or "Hacktoberfest"-type tags that would help people know what simple things could be tackled in a few hours if they succeed in installing the software. I have found that it isn't always straightforward to come up with such issues (I tried thinking of some for a previous iteration of the activity, but always got stuck when I realized I didn't have a clue what to do and explaining the problem was hard enough), and in projects that are currently running it isn't always easy to leave these uncompleted when you have more time to work on a project.
> One idea was to have a HackMD document, similar to the one that suggests project meetings for new joiners to shadow, that lists all repos with such issues in one place, making it easier to find something fruitful to work on if these audits continue to be spontaneous.
> An alternative is to make these non-spontaneous and schedule them in advance. We've kicked around the thought of scheduling lightning talks for all projects -- perhaps we could better leverage people's brains if we gave a lightning talk intro on Tuesday and then guided people through installing and hacking on the software the next day?
> New joiners to projects inevitably spend a bunch of time doing exactly what we were trying to do in these sessions. Can we leverage the time investment of the new joiner by doubling up other team members to do this?
> Should new joiners to the team be encouraged to do this for a couple of weeks before being assigned to a project? I had a few new joiners on one of the audit sessions, and they said it was a good way to learn more about the team and our projects.
