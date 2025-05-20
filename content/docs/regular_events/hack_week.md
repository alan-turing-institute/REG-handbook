---
# Page title as it appears in the navigation menu
title: "Hack Week"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 1
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Hack Week

Hack week is an annual week-long event hosted by REG, typically held in June.
Projects are proposed by REG (and affiliated) teams in May and chosen by vote.

## Guidelines for Organisers

TBC...

## Guidelines for Proposing a Project

### Proposal Process

To propose a project:

1. Add an issue to the first column of the current year's hack week GitHub project board.
2. Present the proposal to the group prior to hack week. A Tuesday Tech-Talk is usually set aside for this.

Project proposals don't have to meet any particular criteria except that the proposer is expected to lead the project (or find someone willing to lead the project in their stead). That being said, below are some points that you may want to consider while writing the proposal.

Checkboxes are provided for convenience when copying to e.g. a GitHub issue but do not imply that every (indeed any) point has to be completed.

### Project Considerations

#### Inclusivity

- [ ] There is the risk that those joining remotely will feel excluded. This could be mitigated by:
    - Highlighting project suitability for  hybrid participation.
    - Finding spaces (e.g. booking meeting rooms in advance) that allow for video call co-working sessions.
    - Encouraging discussion via remote-friendly media (e.g. Slack channel).
    - Getting specialised hardware, datasets, etc. into the hands of all participants ahead of time or early on the first day.
    - Those attending in-person may find Enigma to be a difficult place to concentrate on deep work. Embrace ways of working that don't revolve solely around co-working in Enigma.
- [ ] There is a chance that the goal or framing of the goal of a project could be exclusive. This could be avoided by
    - Checking with a colleague or AI to see whether the language used could be improved.
    - Adjusting the goal (or adding sub-goals) that would make the project a net positive for equality, diversity and inclusivity?
    - Does the project have any ethical considerations, e.g. could it affect some groups of people disproportionately?
- [ ] The choice of technologies could deter participation.
    - Could the project be done in a (programming) language-agnostic way? If not, could it be made clear which language will be used and why?
    - Will AI assistants be able to help those working with unfamiliar frameworks/languages?
- [ ] Some team members may need more mentorship or support than others.
    - How do you plan to support junior members or those who are struggling with some aspect of the work? Can you pair or buddy people to provide encouragement or technical mentorship?

#### Suitability

As mentioned above, there are no limits on what can be proposed but some types of project will be a more natural fit for a one-week small-team sprint such as hack week:

- [ ] Minimise external dependencies:
    - If approvals are needed, get them ahead of time (e.g. HPC or cloud computing resources, IT approval, Data Protection Officer approval).
    - If there are single points of failure (such as a dataset that hasn't been obtained) or a scarce resource (such as hardware) then make a contingency plan.
* [ ] Set clear, achievable goals:
    - It is easier to make progress with well defined success criteria.
    - Make the main goal easily achievable and add stretch goals that follow on from it.
- [ ] Make the tasks independent:
    - Parallelizable tasks can be worked on by any number of people at once
    - Loosely coupled tasks avoid people blocking one another.
- [ ] Ramp-up quickly:
    - Could you use familiar or easy-to-learn tools?
    - If the project focus is learning anew tool, could the problem domain be kept simple and familiar?
- [ ] Make prototypes not products:
    - A working proof of concept is a great outcome.
    - Asking an interesting question or testing feasibility are good examples.
- [ ] Favour visible results:
    - An interactive or demo-able outcome (e.g. web app, game or nerf-launching robot) makes the project engaging for team members and the audience.

### Typical Hack Week Itinerary

- Monday - Project proposal presentations and team selection, some work.
- Tuesday - Project work.
- Wednesday - Project work and team dinner.
- Thursday - Project work, and scheduled fun.
- Friday - Presentations and early finish.

Things to consider if you are the team leader:

* [ ] Breaks are not scheduled, other than lunch. It is important to take breaks and to encourage your team mates to do likewise. Breaks don't need to be confined to the Turing office.
* [ ] Some people might need more breaks than others or will have non-hack week commitments, such as grand-challenge work or caring responsibilities. Consider measures to keep them involved?
* [ ] The presentation on Friday will need to be, at least partially, prepared on Thursday (or earlier) when the temptation will be to do development work. Therefore, you may want to explicitly schedule time to work on the presentation throughout the week. See "Presentation Template", below.
* [ ] It is hard to predict work velocity ahead of time (given that teams are not confirmed until the start of the week). Schedule one or more short retrospectives during the week to discuss progress and pivot if necessary.
* [ ] Can responsibilities be shared so that more junior members can take ownership of some elements?

#### Presentation Template

Previous project summary presentations have included some or all of:

- [ ] Title slide
   - Names of team members
   - Project name
- [ ] Goals of the project
   - Quick recap of pitch
   - Were goals adjusted on the fly?
- [ ] Plan to achieve the goals
   - Team structure
   - Tools/technologies chosen
- [ ] Summary of progress
   - Day-by-day or person-by-person
- [ ] Results
   - What was produced or learnt?
   - With pictures, if possible
- [ ] Hindsight
   - What worked/didn't work?
   - Anything you would do differently?
   - Future of the project, if any follow-on work is planned

### 

- [ ] Further work could be carried out during "22-days" time (e.g. in open-source service area hack sessions) or sought during Hacktoberfest.
    - Perhaps mark these with "help-wanted" labels.
- [ ] Ongoing compute costs (e.g. web hosting or data storage) would need to be requested via ServiceNow. Requests will need to justify benefit to the Turing and/or scientific merit as with any request for core compute funds.
- [ ] If the project will not be actively developed after hack week, how should it be archived and what useful outputs could be generated? For example:
    - Tidy version control by merging or closing open PRs.
    - Ensure the project can be used by others:
        - Write adequate developer setup instructions in case somebody wants to fork the project.
        - Choose a license.
