# Advisorinder
[![Contributor: Shan Chen](https://img.shields.io/badge/Contributor-Shan%20Chen-2ea44f)](https://shanchen.dev/)
[![Contributor: Chen Liu](https://img.shields.io/badge/Contributor-Chen%20Liu-4a86cf)](https://chenliu-1996.github.io/)

English | [中文](./README.zh.md)

Advisor due diligence, not vibes-only.

This repo hosts an advisor-research skill for evaluating PhD advisors and labs. The framing is simple: choosing an advisor is a lot like choosing a startup CEO. Start with the failure modes, not the branding. The first job is to identify the critical problems that can seriously damage a PhD: weak funding, unclear graduation standards, abusive culture, poor placement, bad authorship norms, or a lab that looks impressive from far away but does not actually convert student effort into strong outcomes.

## Install As A CLI Skill

This repo follows the Agent Skills standard with a `SKILL.md` at the skill root.

Install manually (simple and explicit). Run these commands from the repository root:

### Claude Code

```bash
mkdir -p ~/.claude/skills
ln -s "$(pwd)" ~/.claude/skills/advisor-research
```

### Codex

```bash
mkdir -p ~/.codex/skills
ln -s "$(pwd)" ~/.codex/skills/advisor-research
```

### Other CLI tools

Place this folder in that CLI's skills directory with the folder name `advisor-research`.

After installation, restart the CLI (or refresh its skill list), then invoke `advisor-research` using that CLI's syntax.

## Repo Contents

- `SKILL.md` contains the advisor research skill.
- `agents/openai.yaml` contains optional Codex UI metadata.

## What the Skill Produces

- A cited advisor dossier grounded in public evidence.
- A fit assessment for academia, industry, or startup goals.
- Alumni and collaborator mapping.
- A question bank for advisor conversations and private student backchannels.
- A practical outreach plan.

## Start Here: Critical Problems First

Before you get impressed by prestige, ask these first:

- Can this advisor reliably fund me to graduation?
- Do students publish well and graduate on time?
- Is the lab psychologically safe, or does it run on fear and overwork?
- Are authorship and credit handled fairly?
- Does the advisor actually help students reach the careers they want?
- If things go badly, does the lab have a recovery path, or do students just disappear?

If the answer to two or more of these is weak, that is the story. Everything else is secondary.

## Strong Pros and Cons

### Strong Pros

- Strong funding, stable grants, and real contingency plans.
- Clear student outcomes in academia, industry, or both.
- A research agenda with real taste and enough infrastructure to execute.
- Students can explain authorship, milestones, and meeting cadence without hesitation.
- The advisor gives timely feedback and helps unblock stuck projects.
- Students sound candid, respected, and broadly sane.

### Strong Cons

- Prestige without student outcomes.
- Big promises but vague funding details.
- Lots of papers, but unclear student ownership.
- Lab members who are afraid to speak plainly.
- Graduation timelines that drift without explanation.
- An advisor who says they support industry or non-traditional paths, but alumni evidence says otherwise.

## Critical Suggestions

- Prioritize downside protection before upside. A safe, productive lab usually beats a famous chaotic one.
- Separate advisor reputation from student outcomes. These are not the same variable.
- Treat every vague answer as a signal. Good labs can usually explain how things work.
- Ask current and former students the same question and compare the differences.
- Optimize for optionality if you are uncertain about academia versus industry.
- Do not ignore how you feel after conversations. Confusion, tension, or evasiveness usually means something.

## Core Criteria

### 1. Survival, Physical, and Mental Health

- Is the stipend, tuition coverage, and benefits package enough to live on?
- Is there real funding security, or are you one grant decision away from trouble?
- Are the hours sustainable, or is burnout treated as normal?
- Is the lab respectful, or does it run on chaos, bullying, or fear?
- Are expectations clear enough that you know what good progress looks like?
- Is there flexibility when health, family, or immigration issues come up?

### 2. Academic Career Outcome

- Do students publish consistently, and in what venues?
- Where do graduates go: postdocs, faculty jobs, research labs, or nowhere obvious?
- How strong is the advisor's reputation and network in the field?
- Is there enough funding stability for students to finish?
- Do students get real training in writing, presenting, and networking?
- Is there a healthy balance between guidance and independence?

### 3. Industry Career Outcome

- Will the lab teach skills that transfer to real industry roles?
- Are alumni landing in strong industry jobs?
- Is the advisor supportive of non-academic paths?
- Can students do internships or industry collaborations without drama?
- How is the lab viewed by employers outside academia?

### 4. Happiness and Day-to-Day Fit

- Are you genuinely excited by the research topic?
- Is the day-to-day work engaging, or mostly grindy and boring?
- Is the advisor available when students are stuck?
- Do students in the group seem compatible and supportive?
- Is the location and overall lifestyle workable for you?
- Does the work feel meaningful enough to sustain several years?

## Cross-Cutting Due Diligence

| Area | What to verify |
| --- | --- |
| Ecosystem and resources | Academic network, co-authors, compute, equipment, data access, and whether the lab has the actual infrastructure to execute its agenda. |
| Advisor career stage | Assistant professors may be more hands-on but more intense; senior faculty may bring more prestige and resources but provide less direct attention. |
| Research vision and execution | The lab's taste, biggest open problems, project quality, execution speed, and whether the advisor can turn ideas into papers rather than just talks. |
| Mentorship style | Micromanagement versus hands-off advising, meeting cadence, expectation clarity, and whether the style actually matches how you work best. |
| Authorship and credit | Who gets first authorship, how cross-student work is handled, and whether postdocs ever crowd out student ownership. |
| Feedback speed | Whether paper drafts and project decisions move fast enough to hit deadlines. |
| Career development | Support for academia, industry, startups, internships, and, when relevant, visa or immigration processes. |
| Lab culture | Internal competition versus collaboration, how conflict is handled, and whether students seem healthy, candid, and supported. |

## Questions To Ask The Advisor

- What are the biggest unsolved problems you think this lab can realistically win on, and why?
- If I joined now, what exact project would I start on, and are the required data, compute, equipment, and collaborators already in place?
- How are students funded year by year, what can interrupt that funding, and what is the fallback plan if a grant ends?
- What are the concrete graduation milestones, and what is the real median time to finish in your group?
- How often do you meet students one-on-one, and what is your normal turnaround time on draft feedback?
- How do you decide authorship and first-author ownership on shared projects?
- What happens when a student's project is not working for several months?
- What is your actual stance on industry internships, non-academic careers, startups, and students whose goals change?
- How do you support students through health, family, visa, or other personal disruptions without derailing the degree?

## Questions To Ask Current Or Former Students

- What is day-to-day life in the lab actually like when nobody is performing for visitors?
- Are weekends, vacations, and sick time genuinely respected?
- What happens when a project fails, stalls, or gets scooped?
- When students struggle, does the advisor help, ignore them, or turn up the pressure?
- How fast does the advisor review drafts and make decisions in practice?
- Has anyone quit, switched labs, or been pushed out? Why?
- Do students usually feel they own their projects, or do postdocs and senior students dominate the good work?
- How much does the advisor really help with internships, jobs, recommendation letters, and visa issues?
- What do you wish you had understood before joining?
- What concern feels minor from the outside but becomes serious once you are inside the lab?

## Common Red Flags

- Funding answers are vague, inconsistent, or depend on who you ask.
- Students cannot clearly explain authorship norms.
- Current students sound scripted, guarded, or afraid to be honest.
- The lab celebrates overwork as proof of commitment.
- Students stay a long time without strong outputs or clear milestones.
- Industry internships are discouraged for opaque reasons.
- Alumni outcomes are hard to verify or strangely narrow.
- No one can tell you what happens when a student struggles.

## Bottom Line

Treat advisor selection like due diligence. Talk to the advisor for vision and resources, but rely on students for the truth about execution, culture, and day-to-day reality. The best choice is usually the advisor who gives you enough safety, enough growth, and enough excitement to do great work without wrecking your life.
