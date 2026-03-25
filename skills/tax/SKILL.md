---
name: tax
description: "Comprehensive personal and SMB tax management suite for bookkeeping, tax preparation, tax optimization, and IRS audit risk assessment. Covers federal and Illinois state taxes, LLC/S-Corp entity structures, pass-through entity taxation, estimated payments, and multi-entity coordination. Triggers on: tax, taxes, bookkeeping, tax prep, tax preparation, tax planning, tax optimization, deductions, IRS, audit risk, estimated taxes, quarterly taxes, Schedule C, 1099, W-2, K-1, LLC tax, S-Corp, QBI, SALT, depreciation, Section 179, home office deduction, mileage deduction, child tax credit, 529 plan, tax return, tax filing, IL tax, Illinois tax."
argument-hint: "bookkeeping | optimize | prep | audit-risk | calendar | rates"
license: MIT
---

# Tax — Personal & SMB Tax Management Suite

Comprehensive tax management for individuals and small businesses. Covers
bookkeeping, tax preparation, optimization, and IRS audit risk assessment
with Illinois-specific guidance and post-OBBBA (One Big Beautiful Bill Act) law.

**IMPORTANT DISCLAIMER**: This skill provides educational tax guidance based on
current tax law. It is NOT a substitute for professional tax advice from a
licensed CPA or tax attorney. Tax law is complex and individual circumstances
vary. Always consult a qualified professional for binding tax decisions.

## Quick Reference

| Command | What it does |
|---------|-------------|
| `/tax bookkeeping` | Transaction categorization, chart of accounts, record-keeping |
| `/tax optimize` | Tax-saving strategies, entity structure, retirement plans, deductions |
| `/tax prep` | Tax return preparation, document gathering, form selection |
| `/tax audit-risk` | IRS audit risk scoring, red flag identification, penalty exposure |
| `/tax calendar` | Key deadlines, estimated payment dates, filing due dates |
| `/tax rates` | Current tax brackets, rates, limits, and thresholds |

## Context Intake (Do This First)

Before any analysis, collect taxpayer context. Ask in a single message:

1. **Filing status** — Single, MFJ, MFS, HoH, QSS
2. **State** — Primary state of residence (default: Illinois)
3. **Income sources** — W-2, Schedule C, K-1s, investments, rental, crypto
4. **Entity types** — Sole prop, single-member LLC, multi-member LLC, S-Corp, C-Corp
5. **Dependents** — Number and ages of children/dependents
6. **Approximate AGI range** — Needed for phase-out analysis
7. **Current tax pain points** — What's the specific question or concern?

If the user provides context upfront (e.g., "I have 3 LLCs in IL, should I elect S-Corp?"),
extract what you can and proceed without re-asking known details.

## Orchestration Logic

### Single-command routing:
- `/tax bookkeeping` → Load tax-bookkeeping skill
- `/tax optimize` → Load tax-optimize skill
- `/tax prep` → Load tax-prep skill
- `/tax audit-risk` → Load tax-audit-risk skill

### Quick-reference commands (handled directly):
- `/tax calendar` → Load `references/tax-calendar.md` and present relevant deadlines
- `/tax rates` → Load `references/current-rates.md` and present relevant rates

### General tax questions:
For general questions, determine the best sub-skill to route to:
- Categorizing expenses, receipts, books → tax-bookkeeping
- Saving money, reducing taxes, strategy → tax-optimize
- Filing returns, what forms, documents needed → tax-prep
- Risk of audit, red flags, penalties → tax-audit-risk

## Key Legislative Context (Post-OBBBA)

The One Big Beautiful Bill Act (P.L. 119-21), signed July 4, 2025, made these
critical changes that affect ALL sub-skills:

- **QBI deduction (Section 199A)**: Made PERMANENT (was expiring 12/31/2025)
- **100% bonus depreciation**: Permanently restored for property acquired after 1/19/2025
- **SALT cap**: Raised to $40,000 (2025-2029) with phase-down above $500K AGI
- **Section 179**: Raised to $2,500,000 (2025)
- **Child Tax Credit**: Increased to $2,200/child, ACTC $1,700 refundable
- **Standard deduction**: Increased by $750 (single) / $1,500 (MFJ) on top of inflation
- **New deductions**: Tips ($25K), overtime ($12.5K/$25K), auto loan interest ($10K)
- **Estate tax exemption**: Raised to $15M per person
- **Interest deduction**: Reverts to 30% of EBITDA (not EBIT)

## Reference Files

Load on-demand as needed — do NOT load all at startup.

- `references/il-tax-guide.md` — Illinois-specific tax rules, PTE election, replacement tax, Chicago/Cook County taxes
- `references/tax-calendar.md` — Federal and IL deadlines, estimated payment schedule
- `references/current-rates.md` — 2025-2026 rates, brackets, limits, thresholds
- `references/multi-state-guide.md` — Multi-state nexus, apportionment, state-specific filing requirements

## Sub-Skills

This skill orchestrates 4 specialized sub-skills:

1. **tax-bookkeeping** — Chart of accounts, transaction categorization, record-keeping, 1099 tracking
2. **tax-optimize** — Entity structure, retirement plans, QBI, depreciation, SALT, charitable, 529
3. **tax-prep** — Document checklists, form selection, multi-entity filing, IL state returns
4. **tax-audit-risk** — 30+ red flag checks, risk scoring (1-100), penalty exposure, documentation gaps

## Quality Gates

Hard rules — never violate these:
- Always include the disclaimer that this is educational guidance, not professional tax advice
- Never recommend tax positions without citing the relevant IRC section or IRS publication
- Always flag when a strategy has audit risk implications (cross-reference tax-audit-risk)
- Always note when IL-specific rules differ from federal
- Always use post-OBBBA numbers for 2025+ tax years
- Never recommend filing positions without noting documentation requirements
- Always flag sunset provisions and expiration dates for temporary tax provisions
