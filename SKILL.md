# /advisor — PhD Advisor Due Diligence Skill

> Deep-research an advisor like you're evaluating a startup CEO. Assess research vision, funding runway, lab execution, network strength, alumni outcomes, and mentorship style — then generate a polished, cited dossier with personalized questions, connection mapping, and outreach guidance.

## Trigger
User invokes `/advisor` or asks: "research this advisor", "help me choose an advisor", "look into Professor X".

## Input Collection

When the skill starts, collect missing inputs via `AskUserQuestion`.

### About the Advisor (required)
- **Advisor name**
- **University / department affiliation**
- **Advisor website and/or Google Scholar URL** (if available, to avoid identity ambiguity)

### About the Student (recommended)
- **Your name**
- **Your current stage** (undergrad / masters / incoming PhD / current PhD)
- **Your background** (research experience, methods, pubs, projects)
- **Your website / Scholar / LinkedIn / X** (optional but useful for fit + network mapping)
- **Your goal(s)** (primary + optional secondary):
  - `academia`
  - `industry-research`
  - `industry-engineering`
  - `startup`
  - `exploration`
- **Top target destinations** (optional): e.g., DeepMind, FAIR, OpenAI, Anthropic, MSR
- **Specific concerns**: funding, visa, workload, city, advisor style, etc.

If student profile links are provided, fetch and analyze them to personalize the fit analysis.

---

## Workflow

### Phase 0: Student Profile Analysis (if provided)
- Parse the student's profile and infer:
  - research themes and methods
  - publication maturity and trajectory
  - technical strengths / probable gaps
  - likely network starting points (for warm intros)

### Phase 1: Intelligence Gathering (Deep Research)

Run research threads in parallel using sub-agents where possible.

#### 1A. Academic Profile
- Google Scholar / Semantic Scholar: citations, h-index, i10, trend, top papers, recent papers (last 2 years)
- DBLP / venue mix: top-tier vs mid-tier; conference vs journal profile
- Co-author network: recurring collaborators, institutions, cross-industry links
- Academic genealogy where available

#### 1B. Lab, Students, and Alumni Outcomes
- Lab website: members, projects, culture signals
- Student publication outcomes: first-author frequency, venue quality
- Graduation timeline evidence:
  - estimate **start year** and **end/graduation year** for prior trainees
  - if exact dates unavailable, provide **year windows** + confidence (`high/medium/low`)
- Alumni placements:
  - first role after graduation
  - current role
  - trajectory type (academia ladder / industry research / engineering / startup / mixed)
- Attrition signals:
  - transfers, early exits, unexplained roster churn (only if publicly verifiable)

#### 1C. Funding & Infrastructure
- NSF / NIH / institutional awards: active grants, amounts, periods, expirations
- Industry funding and partnerships
- Compute/data/equipment availability for the advisor's stated research agenda
- Funding runway estimate with uncertainty notes

#### 1D. Public Persona, Collaborators, and Reach
- Advisor/lab X activity: frequency, tone, community interaction
- Public talks/media: how they communicate and credit trainees
- Collaborator graph:
  - repeated co-authors
  - cross-institution bridges
  - likely hiring-network relevance
- Reputation signals: awards, service roles, editorial/PC work

#### 1E. Career Stage Assessment
- AP / recently tenured / full professor / admin-heavy / near retirement
- Practical implications for student mentorship bandwidth and lab stability

### Phase 2: Goal-Weighted Synthesis

Score and discuss fit through four core dimensions:

1. **Survival & Health**
   - stipend/funding security, burnout risk, culture, clarity of expectations, flexibility
2. **Academic Outcome Potential**
   - publishing power, training quality, placement record, scholarly network
3. **Industry Outcome Potential**
   - transferable skills, industry collaborations, internship support, alumni in target sectors
4. **Happiness & Day-to-Day Fit**
   - topic excitement, advisor responsiveness, peer culture, location/QoL

Weight dimensions by student goal:
- `academia`: emphasize publication + faculty/postdoc placement + network prestige
- `industry-research`: emphasize top-paper quality + frontier-lab pathways + collaborator network
- `industry-engineering`: emphasize practical skills + internship policy + alumni hiring paths
- `startup`: emphasize applied work + flexibility + startup-friendly alumni outcomes
- `exploration`: maintain balance + optionality

### Frontier-lab evidence gate (critical for `industry-research` goals)
When the student explicitly targets frontier labs (e.g., OpenAI/Anthropic/DeepMind/FAIR/MSR):
- Build a **Verified Frontier Placement Table** for alumni/current trainees with explicit evidence.
- Distinguish clearly between:
  1) verified frontier-lab placements,
  2) adjacent placements (top academia, biotech AI, non-frontier industry research),
  3) unknown outcomes.
- If there is **no verifiable frontier-lab placement evidence**, explicitly state this in the Executive Summary and treat it as a major risk.
- Do **not** give `Strong fit` based only on advisor prestige, topic overlap, or citation strength when frontier-placement evidence is absent.
- In that case, default verdict should be at most `Proceed with caution` unless there is strong counter-evidence (e.g., repeated frontier-lab internships or direct advisor collaboration pipelines).

### Phase 3: Personalized Fit Analysis (Student ↔ Advisor)

Include:
- Research overlap
- Skill match and gap plan
- Publication trajectory compatibility
- Network complementarity
- Goal alignment
- Potential friction points
- Personalized verdict (`Strong fit` / `Proceed with caution` / `Significant concerns`)

### Phase 3.5: Alumni Impact + Connection Mapping (required)

Build an **Alumni Intelligence Table** with one row per alumnus (or clearly marked unknown):
- Name
- Lab role (PhD/postdoc/etc.)
- Estimated start year
- Estimated graduation/end year
- Confidence level
- First role after graduation
- Current role
- Trajectory type
- Impact signals (e.g., publications/citations/talks/leadership/startup outcomes)
- Public profiles (LinkedIn, X, personal site)
- X followers (if publicly available)
- Reach-out channel
- Connection strength to student (`direct` / `adjacent` / `weak`) + rationale

Connection rubric:
- `direct`: shared advisor/institution/co-author OR immediate warm-intro path
- `adjacent`: one-hop path via collaborator/labmate/department network
- `weak`: cold outreach only; no trusted connector identified

Also provide:
1. **Overall alumni-outcome estimate** by category (academia / ind-research / ind-eng / startup / other)
2. **Frontier-lab readiness estimate** (with uncertainty)
3. **Prioritized contact list**: who to reach out to first and why

### Phase 4: Questions to Ask (Personalized)

Generate three sets:
1. Questions for advisor (vision/resources/expectations)
2. Questions for current/former students (private reality check)
3. **Double-check questions** for high-uncertainty / high-impact claims

#### Required advisor questions
1. Vision: major unsolved problems + lab strategy
2. First project + resources already in place
3. Funding model + TA load
4. Mentorship style + meeting cadence
5. Internship policy
6. Authorship policy
7. Graduation milestones + typical timeline
8. Career support across academia/industry/startup

#### Required student/private questions
1. Day-to-day reality
2. Work-life pressure and boundaries
3. Advisor behavior when projects fail
4. Draft feedback speed
5. Attrition/transfer history
6. What they wish they knew before joining
7. Job-placement support quality
8. Visa/immigration support (if relevant)

### Phase 5: Outreach & Career Development Plan

Produce a practical outreach plan:
- Contact priority tiers (now / next / optional)
- Channel recommendation per person (warm intro, LinkedIn, email, X)
- One-line personalization hook per contact
- Suggested ask type (15-min chat, feedback on fit, referral advice)
- Follow-up cadence (single follow-up; avoid spam)

Include a short "how to ask for help" script style:
- concise context
- specific question
- low-friction ask
- clear gratitude

---

## Output: Final Report

Save to `./advisor-dossier-{advisor-lastname}.md` and display it.

Every factual claim must have inline citations `[1]`, `[2]`, etc., with full source table.

### Required report sections
1. Executive Summary + one-line verdict
2. Academic Profile
3. Lab Snapshot
4. Alumni Outcomes & Graduation Windows
5. **Verified Frontier Placement Table** (required for frontier-lab goals)
6. Funding & Resources
7. Public Presence, Collaborators, and Network Access
8. Four-Dimension Risk/Fit Assessment
9. Personalized Fit (Student ↔ Advisor)
10. Connection Map (direct/adjacent/weak)
11. Outreach Plan + prioritized contacts
12. Questions to Ask (advisor / students / double-check)
13. Research Gaps
14. Sources

### Recommended tables
- Active grants table
- Alumni intelligence table
- Connection map table
- Contact priority table

---

## Quality Bar

- **No fabrication**: if unverified, state unknown and add to Research Gaps
- **Citation discipline**: every factual claim must be sourced
- **Confidence labels**: especially for estimated graduation years and inferred trajectories
- **Recency-first**: prioritize last 2–3 years where possible
- **Goal-first framing**: evaluation must align with student's career goal
- **Critical + fair framing**: do not inflate fit; explicitly separate advisor strength from placement evidence and surface contradictions early
- **Placement rigor for frontier goals**: if verified frontier-lab alumni evidence is weak/none, say so plainly and downgrade verdict accordingly
- **Privacy-aware**: use only public data for individuals
- **Actionability**: end with concrete next steps and what to verify in live conversations
- **Voice and style**: write like a sharp senior student, not a corporate bot — direct, easy to skim, lightly funny, and grounded in evidence
- **Readability**: use short paragraphs, clear bullets, plain language, and minimal jargon; avoid repetitive AI disclaimers or fluff
