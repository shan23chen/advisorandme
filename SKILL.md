---
name: advisor-research
description: Use when users ask to evaluate, compare, or choose a PhD advisor or lab. Also trigger when users mention PI fit, advisor shortlist, lab culture, professor due diligence, or PhD offer decisions, even if they do not explicitly ask for a dossier. Especially relevant for AI-career planning requests involving frontier-lab outcomes, internship-to-offer conversion, alumni role trajectories, PI commercialization/founder signals, or startup paths. Produces a cited advisor dossier with scorecards, risk gates, outreach guidance, and a 12-24 month career plan.
---

# Advisor Research

Evaluate advisors like startup due diligence: start with failure modes before prestige.

## Intake

Ask for the minimum inputs needed to disambiguate the advisor:
- Advisor name
- University and department
- Advisor website, Google Scholar, or lab page if available

Ask for student context when available because fit depends on goals:
- Current stage: undergrad, masters, incoming PhD, or current PhD
- Background: methods, projects, publications, and research experience
- Public profile links if they help with personalization
- Primary goal: academia, industry-research, industry-engineering, startup, or exploration
- Specific concerns such as funding, visa, workload, location, or mentorship style

For AI career planning, also ask:
- Top target labs or companies (ranked)
- Target role family: RS, AS, RE, infra, founder, or mixed
- Preferred geography and visa constraints
- Founder intent: none, maybe, or high

If student profile links are provided, read them and tailor the fit analysis and outreach plan.

## Research Priorities

Lead with the risks that can seriously damage the student's outcome:
- Funding instability
- Unclear graduation path
- Weak placement
- Unfair authorship
- Poor management
- Unhealthy lab culture

Do not let prestige, citations, or topic overlap bury unresolved risk.

## Research Workflow

Gather evidence in parallel where possible.

## Data Sources and Verification Protocol (Required)

Use source tiers and confidence labels explicitly.

### Source tiers
- Tier A (highest trust): university, lab, grant, and employer official pages
- Tier B: bibliometric sources such as Google Scholar or Semantic Scholar
- Tier C: professional profiles and personal pages (for role history and transitions)
- Tier D: company databases and media reports (useful for founder and funding context, but cross-check)

### Verification rules
- For high-impact claims (frontier placement, internship conversion, founder outcomes, funding): require at least two independent sources when possible
- If only one source exists: label claim as provisional
- If sources conflict: show the conflict and reduce confidence
- Do not let unresolved identity matches contribute to strong-fit claims

### Entity resolution
For each alumnus, attempt disambiguation by name + institution + dates + coauthor or lab context:
- `resolved`: high-confidence identity match
- `ambiguous`: plausible but uncertain match
- `unresolved`: insufficient evidence

Use only `resolved` rows for strongest claims in scorecards and verdicts.

### Academic profile

Establish the advisor's research profile:
- Google Scholar or Semantic Scholar metrics, trends, and recent papers
- Venue mix and publication quality
- Repeated co-authors and collaborator institutions
- Academic genealogy when public and relevant

### Lab, students, and alumni

Map trainee outcomes with public evidence:
- Current lab members and projects
- First-author frequency and venue quality for trainees
- Estimated start and graduation years for prior trainees
- First job after graduation and current role
- Outcome type: academia, industry research, engineering, startup, mixed, or unknown
- Attrition or transfers only when publicly verifiable

When dates are uncertain, provide year windows and a confidence label.

### Funding and infrastructure

Check whether the lab can actually support the stated agenda:
- Active grants, amounts, periods, and expirations
- Industry partnerships and institutional support
- Compute, data, equipment, and lab infrastructure
- Funding runway estimate with uncertainty notes

### Public persona and network

Assess network and reach:
- Talks, interviews, media, and public writing
- Social activity when it reveals tone or community behavior
- Service roles, awards, editorial or program-committee work
- Repeated collaborators and cross-institution bridges

### Career stage

Infer how career stage changes mentorship risk:
- Early-career faculty
- Recently tenured faculty
- Senior faculty
- Admin-heavy faculty
- Faculty near retirement

Explain the practical implications for mentorship bandwidth and lab stability.

## Goal-Weighted Analysis

Score fit through four dimensions:
1. Survival and health
2. Academic outcome potential
3. Industry outcome potential
4. Day-to-day happiness and fit

Use these base weights by goal:

| Goal | Survival | Academic | Industry | Happiness |
| --- | ---: | ---: | ---: | ---: |
| `academia` | 30 | 45 | 10 | 15 |
| `industry-research` | 25 | 15 | 45 | 15 |
| `industry-engineering` | 25 | 10 | 50 | 15 |
| `startup` | 25 | 10 | 45 | 20 |
| `exploration` | 25 | 25 | 25 | 25 |

Compute a **Four-Dimension Fit Score** out of 100:
- Assign each dimension a 0-100 score with evidence and confidence.
- Multiply each dimension by its goal weight.
- Sum weighted values for the final Four-Dimension Fit Score.

Use this score-to-verdict mapping as the default:
- `Strong fit`: 75-100
- `Proceed with caution`: 50-74
- `Significant concerns`: 0-49

Adjustments to the default mapping are allowed only when explicit gates below require a stricter cap.

## AI Industry Outcome Scorecard (Required)

When the student is AI-focused and has any non-academic goal, include a quantitative scorecard with explicit weights and evidence:

### Industry-research track (0-100)
- Frontier placement evidence: 35
- Internship-to-offer conversion evidence: 20
- Advisor and collaborator network access to hiring teams: 20
- Project relevance to target teams (pretraining, post-training, alignment, evals, infra): 15
- Geography and visa feasibility: 10

### Industry-engineering track (0-100)
- Production-grade engineering exposure: 30
- Internship access and conversion: 25
- Alumni hiring outcomes in engineering roles: 20
- Shipping cadence and ownership opportunities: 15
- Geography and visa feasibility: 10

### Startup track (0-100)
- PI founder or commercialization track record: 25
- Alumni founder outcomes: 30
- Startup-supportive policies (IP, leave, flexibility): 20
- Applied research velocity and product relevance: 15
- Founder network access (operators, investors, early team leads): 10

State the final score for each relevant track plus 2 to 4 evidence-backed reasons.

## Verdict and Score Reconciliation

Use this sequence to avoid conflicting verdict logic:
1. Compute the Four-Dimension Fit Score and map it to a base verdict.
2. If AI Industry Outcome Scorecard applies, compute the primary-track score for the student's primary non-academic goal:
   - `industry-research` goal -> industry-research track
   - `industry-engineering` goal -> industry-engineering track
   - `startup` goal -> startup track
3. Apply primary-track caps:
   - primary-track score < 50 -> cap final verdict at `Significant concerns`
   - primary-track score 50-74 -> cap final verdict at `Proceed with caution`
   - primary-track score >= 75 -> no scorecard cap
4. Apply frontier and coverage gates.
5. Final verdict is the strictest verdict after all caps.

When the student has mixed non-academic goals, evaluate each relevant track and use the strictest cap among those tracks.

## Frontier-Lab Evidence Gate

Apply this gate when the student explicitly targets frontier labs such as OpenAI, Anthropic, DeepMind, FAIR, or MSR:
- Build a verified frontier placement table for alumni or current trainees using explicit evidence
- Separate verified frontier placements from adjacent placements and unknown outcomes
- If there is no verifiable frontier placement evidence, say so plainly in the executive summary

Use this explicit gate policy:
- If verified frontier full-time placements = 0 **and** verified frontier internships <= 1, cap final verdict at `Proceed with caution`.
- If verified frontier full-time placements = 0 **and** verified frontier internships = 0, mark frontier readiness as `limited`.
- Allow `Strong fit` for frontier goals only when at least one of the following holds:
  1. verified frontier full-time placements >= 2, or
  2. verified frontier internships >= 3 with at least one documented return offer or full-time conversion, or
  3. a clearly evidenced recurring collaboration pipeline to target frontier teams.

Also build a frontier pipeline funnel for each target lab when evidence allows, using this exact stage vocabulary:
- Applied
- Interviewed
- Interned
- Return offer
- Full-time
- Team type (pretraining, post-training, alignment, evals, infra)

If funnel evidence is weak or mostly unknown, explicitly mark frontier readiness as limited and list what evidence is missing.

## Personalized Fit Analysis

Connect the student to the advisor and call out friction honestly:
- Research overlap
- Skill match and likely gap plan
- Publication trajectory compatibility
- Network complementarity
- Goal alignment
- Potential friction points

End with one verdict:
- `Strong fit`
- `Proceed with caution`
- `Significant concerns`

## Alumni Impact and Connection Mapping

Build an alumni intelligence table with one row per alumnus or a clearly marked unknown:
- Name
- Lab role
- Estimated start year
- Estimated graduation or end year
- Confidence level
- First role after graduation
- Current role
- Role family (research scientist, applied scientist, research engineer, infra engineer, founder, other)
- Seniority progression signal (when public)
- Time-to-industry estimate (when relevant)
- Founder outcome signal (company, stage, funding evidence when public)
- Trajectory type
- Impact signals
- Public profiles
- Best reach-out channel
- Connection strength to the student: `direct`, `adjacent`, or `weak`

Use this rubric:
- `direct`: shared advisor, institution, co-author, or an immediate warm intro path
- `adjacent`: a one-hop path through collaborators, department contacts, or labmates
- `weak`: cold outreach only

Also provide:
- An overall alumni-outcome estimate by category
- A frontier-lab readiness estimate with uncertainty
- A PI commercialization and founder enablement assessment:
  - PI founder history or startup advisory roles
  - Student founder precedent
  - Policy signals around IP, startup leave, or flexibility
- A prioritized contact list and why each person matters

## Data Coverage Dashboard (Required)

Report coverage so the user can judge evidence quality:
- Percent of alumni rows with resolved identity
- Percent with verified first role after graduation
- Percent with verified current role
- Percent with role-family classification confidence high or medium
- Percent with frontier funnel evidence for relevant targets
- Percent with founder/commercialization evidence for startup goals

Use this coverage confidence rubric:
- `high` coverage confidence: all critical metrics >= 70%
- `medium` coverage confidence: all critical metrics >= 40% and at least one < 70%
- `low` coverage confidence: any critical metric < 40%

Critical metrics are:
- resolved identity coverage
- verified first-role coverage
- verified current-role coverage
- role-family classification (high/medium confidence)

Rules:
- If coverage confidence is `low`, cap final verdict at `Proceed with caution` unless there is overwhelming Tier A evidence for the key claim.
- If coverage confidence is `low` and frontier evidence is also weak, cap verdict at `Significant concerns`.
- Always list which missing data points would most likely change the verdict.

## Question Generation

Generate three sets of questions:
1. Questions for the advisor
2. Questions for current or former students
3. Questions that verify high-uncertainty, high-impact claims

Always include these advisor questions:
1. What major problems is the lab trying to solve, and why is it positioned to win?
2. What would the first project be, and are data, compute, equipment, and collaborators already in place?
3. What is the funding model, TA expectation, and backup plan if a grant ends?
4. What is the mentorship style, meeting cadence, and typical draft-feedback turnaround time?
5. What is the authorship policy and first-author ownership rule?
6. What happens when a student is stuck or a project fails?
7. What are the graduation milestones, typical timeline, and recent time-to-degree?
8. What is the internship policy across academia, industry, and startup paths?
9. How does the lab support health, family, or visa disruptions?

Always include these student or private-channel questions:
1. What is day-to-day life like when nobody is recruiting for the lab?
2. Are boundaries respected, or does the lab run on pressure?
3. How does the advisor behave when projects fail or students struggle?
4. How fast are drafts reviewed and decisions made in practice?
5. Is there attrition or transfer history, and what actually happened?
6. Do students really own projects and authorship?
7. How strong is placement support for the student's likely goal?
8. How good is visa or immigration support when relevant?
9. What do people wish they knew before joining?
10. What is the most underappreciated concern about the lab?

## Output

Write the full report to `./advisor-dossier-{advisor-lastname}.md`.
In the response, present:
1) Executive Summary
2) Final verdict
3) Score snapshots
4) Top next steps
5) Report file path

If file writing fails for any reason, present the full report in the response and note that file output failed.

Use inline citations such as `[1]` for every factual claim. Include a source list or source table.

### Core required sections
1. Executive Summary with one-line verdict
2. Critical Problems First
3. Strong Pros and Strong Cons
4. Critical Suggestions
5. Alumni Outcomes and Graduation Windows
6. Data Coverage Dashboard
7. Four-Dimension Risk and Fit Assessment
8. Personalized Fit
9. Research Gaps
10. Sources

### Conditional sections (include only when relevant)
- Academic Profile
- Lab Snapshot
- Verified Frontier Placement Table (frontier-lab goals)
- Frontier Pipeline Funnel (frontier-lab goals)
- AI Industry Outcome Scorecard (AI-focused non-academic goals)
- PI Founder and Commercialization Assessment (startup intent or commercialization interest)
- Funding and Resources
- Public Presence, Collaborators, and Network Access
- Connection Map
- 12-24 Month Career Plan with contingency paths
- Outreach Plan and Prioritized Contacts
- Questions to Ask

In the executive summary:
- Lead with the top 2 to 4 critical problems or unknowns
- Then give the one-line verdict
- Then summarize the strongest pros and cons
- Then include score snapshots for relevant tracks (industry-research, industry-engineering, startup)
- Then include one-line coverage summary from the Data Coverage Dashboard
- Then give concrete next steps to reduce risk

## Quality Bar

Follow these constraints:
- Do not fabricate; label unknowns clearly
- Cite every factual claim
- Add confidence labels for estimated dates and inferred trajectories
- Prefer recent evidence from the last 2 to 3 years when possible
- Keep the framing aligned to the student's goal
- Separate advisor reputation from student outcomes
- Use only public information for individuals
- For industry and startup claims, prefer outcome evidence over reputation proxies
- Apply frontier and coverage gate policies exactly as defined above
- End with actionable next steps
- Write in direct, readable language without corporate filler
