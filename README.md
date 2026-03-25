# Tax Skills for Claude Code

A comprehensive tax management skill pack for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) — covering bookkeeping, tax optimization, return preparation, and IRS audit risk assessment for individuals and small businesses.

**5 skills | 25 reference files | 5,400+ lines of tax guidance | Post-OBBBA (2025) law**

---

## What It Does

Ask Claude Code about taxes and get expert-level guidance grounded in current tax law:

```
> should I elect S-Corp for my LLC?

> what's my IRS audit risk?

> help me categorize these business expenses

> how do I maximize deductions with multiple LLCs?

> what forms do I need to file for a partnership in Illinois?
```

The skills trigger automatically on tax-related questions, or invoke directly with `/tax`.

## Skills Overview

| Skill | Command | What It Does |
|-------|---------|-------------|
| **tax** | `/tax` | Master orchestrator — routes to sub-skills, quick reference |
| **tax-bookkeeping** | `/tax bookkeeping` | Transaction categorization, chart of accounts, record-keeping |
| **tax-optimize** | `/tax optimize` | S-Corp analysis, retirement plans, deductions, credits, family strategies |
| **tax-prep** | `/tax prep` | Document checklists, form selection, multi-entity filing |
| **tax-audit-risk** | `/tax audit-risk` | Audit risk scoring (1-100), red flag detection, penalty exposure |

## Key Capabilities

### Bookkeeping
- Tax-aligned chart of accounts mapped to IRS Schedule C / Form 1065 / 1120-S lines
- Transaction categorization with IRS line-by-line mapping
- 70+ common transactions → correct IRS category
- 1099 tracking, record retention rules, quarterly review checklists
- Commonly missed deductions catalog

### Tax Optimization
- **Entity structure**: S-Corp election break-even analysis with QBI interaction modeling
- **S-Corp playbook**: Accountable plan (~$6K+/yr savings), Augusta Rule ($12K+ tax-free), fringe benefits, distribution planning
- **Retirement plans**: SEP vs Solo 401(k) vs Defined Benefit comparison with income-level recommendations
- **Family strategies**: Hire children (FICA-exempt, $7K+/yr savings per child), hire spouse (Section 105 HRA), dependent care FSA, kiddie tax, education savings, family LLC wealth transfer
- **Deductions**: QBI (Section 199A), Section 179 ($2.5M), 100% bonus depreciation, SALT ($40K cap), charitable bunching/DAFs, 529 plans, cost segregation
- **Credits**: R&D (Section 41), energy (30% solar, $7,500 EV), education (AOTC/LLC), WOTC, adoption
- **Advanced**: NOLs, 1031 exchanges, installment sales, passive activity (7 material participation tests), AMT, QSBS ($15M exclusion), Section 83(b)
- **Trading**: Crypto taxation, Section 475 mark-to-market, Section 1256 contracts, wash sale rules (stocks vs crypto)

### Tax Preparation
- Filing status determination and form selection guide
- Document gathering checklists by entity type and income source
- Multi-entity filing coordination (K-1 flow, basis tracking, filing order)
- Extension filing, amended returns, IL 120-day federal change rule

### IRS Audit Risk
- Weighted risk scoring model (1-100 scale, A-F grades)
- 30+ specific red flags with quantified thresholds
- DIF score factor analysis
- Penalty exposure calculator (accuracy, fraud, filing, information returns)
- Documentation gap analysis
- Statute of limitations guide
- First-time abatement eligibility

### State-Specific (Illinois)
- IL 4.95% flat tax, 1.5% replacement tax
- PTE tax election (SALT cap workaround)
- Schedule ICR credits (property tax, K-12 education)
- Chicago Lease Tax / Amusement Tax / Cook County
- IL 529 Bright Start deduction ($10K/$20K) + clawback rules
- Multi-state nexus and apportionment
- IL Series LLC, annual report ($75)

## Installation

### Quick Install (copy to skills directory)

```bash
# Clone the repo
git clone https://github.com/davidjelinekk/tax-skills-claude-code.git

# Copy skills to Claude Code
cp -r tax-skills-claude-code/skills/tax ~/.claude/skills/
cp -r tax-skills-claude-code/skills/tax-bookkeeping ~/.claude/skills/
cp -r tax-skills-claude-code/skills/tax-optimize ~/.claude/skills/
cp -r tax-skills-claude-code/skills/tax-prep ~/.claude/skills/
cp -r tax-skills-claude-code/skills/tax-audit-risk ~/.claude/skills/
```

### One-Liner

```bash
git clone https://github.com/davidjelinekk/tax-skills-claude-code.git && cp -r tax-skills-claude-code/skills/tax* ~/.claude/skills/
```

### Verify Installation

```bash
ls ~/.claude/skills/tax*/SKILL.md
```

You should see 5 SKILL.md files. Restart Claude Code — the skills will appear in your skill list.

## Directory Structure

```
skills/
├── tax/                              # Master orchestrator
│   ├── SKILL.md                      # Routing, context intake, OBBBA overview
│   └── references/
│       ├── il-tax-guide.md           # Illinois taxes, PTE, Chicago/Cook County
│       ├── tax-calendar.md           # Federal + IL deadlines, estimated payments
│       ├── current-rates.md          # 2025-2026 brackets, limits, thresholds
│       └── multi-state-guide.md      # Nexus, apportionment, state-specific rules
│
├── tax-bookkeeping/                  # Bookkeeping & categorization
│   ├── SKILL.md                      # Categorization workflow, quarterly review
│   └── references/
│       ├── chart-of-accounts.md      # Tax-aligned COA template (40+ accounts)
│       ├── schedule-c-mapping.md     # 70+ transactions → IRS lines
│       └── expense-maximization.md   # Missed deductions, timing, vehicle, home office
│
├── tax-optimize/                     # Tax optimization & planning
│   ├── SKILL.md                      # 11 strategy categories, analysis framework
│   └── references/
│       ├── entity-structure.md       # S-Corp vs LLC, reasonable salary, QBI interaction
│       ├── scorp-playbook.md         # Accountable plan, Augusta Rule, fringe benefits
│       ├── retirement-plans.md       # SEP, Solo 401(k), DB plan, HSA, 529, backdoor Roth
│       ├── deduction-strategies.md   # QBI, depreciation, SALT, charitable, cost seg, 529
│       ├── family-strategies.md      # Hire kids/spouse, dependent care, kiddie tax, FLP
│       ├── crypto-trading.md         # Crypto, DeFi, NFTs, Section 475/1256, straddles
│       ├── credits-incentives.md     # R&D, energy, EV, education, adoption, WOTC, ACA
│       └── advanced-strategies.md    # NOL, 1031, installment, passive, AMT, QSBS, 1244, 83(b)
│
├── tax-prep/                         # Tax preparation & filing
│   ├── SKILL.md                      # Filing workflow, deadlines, extensions, amendments
│   └── references/
│       ├── filing-checklist.md       # Document checklist by entity/income type
│       └── form-guide.md            # Form selection by scenario, 20+ supporting forms
│
└── tax-audit-risk/                   # IRS audit risk assessment
    ├── SKILL.md                      # Assessment workflow, report format
    └── references/
        ├── risk-scoring.md           # Weighted scoring model, category weights, DIF factors
        ├── red-flags.md              # 30+ red flags with severity scores and thresholds
        └── penalty-guide.md          # Penalty amounts, calculation, abatement strategies
```

## Tax Law Coverage

Built for **2025-2026 tax years** reflecting the **One Big Beautiful Bill Act (OBBBA)**, signed July 4, 2025:

| Provision | Status |
|-----------|--------|
| QBI deduction (Section 199A) | Permanent |
| 100% bonus depreciation | Permanent (property acquired after 1/19/2025) |
| Section 179 limit | $2,500,000 |
| SALT cap | $40,000 (2025-2029) |
| Child Tax Credit | $2,200/child |
| Standard deduction | +$750 (single) / +$1,500 (MFJ) |
| R&D expensing | Immediate domestic expensing restored |
| QSBS exclusion | $15M cap, $75M asset threshold |
| Estate tax exemption | $15M/person |

## Who This Is For

- Self-employed individuals and freelancers
- LLC and S-Corp owners
- Multi-entity business owners
- Parents looking to maximize family tax strategies
- Anyone in Illinois (includes state-specific guidance)
- Day traders and crypto investors
- Real estate investors
- SaaS and tech business owners

## Important Disclaimer

This skill pack provides **educational tax guidance** based on current tax law. It is **not a substitute** for professional tax advice from a licensed CPA, Enrolled Agent, or tax attorney. Tax law is complex and individual circumstances vary. Always consult a qualified professional before implementing tax strategies or filing returns.

## Customization

### State Adaptation
The skills are built with Illinois-specific content but the federal guidance (90%+ of content) applies everywhere. To adapt for your state:
1. Update `skills/tax/references/il-tax-guide.md` with your state's rules
2. Adjust PTE tax election details for your state's program
3. Update property tax credit and education credit rules

### Entity Customization
The workspace templates in `templates/` can be customized for your specific entities. See `CLAUDE.md` for the workspace structure.

## Contributing

Issues and PRs welcome. When contributing:
- Cite IRC sections for any tax rules added
- Include specific dollar amounts and thresholds with tax year noted
- Flag sunset provisions and expiration dates
- Test skill triggering with realistic prompts

## License

MIT License — see [LICENSE](LICENSE)

---

Built with [Claude Code](https://claude.com/claude-code)
