# Tax Workspace

Multi-year, multi-entity tax management workspace for personal and SMB returns.
Uses the `/tax` skill suite for bookkeeping, optimization, preparation, and audit risk assessment.

## Owner Profile
- Filing status: [UPDATE — MFJ, Single, HoH, etc.]
- State: Illinois (Cook County)
- Dependents: [UPDATE — number and ages]
- Entities: [UPDATE — list each LLC name and tax classification]

## Workspace Structure

```
Tax/
├── CLAUDE.md              ← You are here (workspace overview)
├── 2025/                  ← Tax Year 2025 workspace
│   ├── CLAUDE.md          ← TY2025 instructions, entities, deadlines
│   ├── entities/          ← One directory per entity
│   │   ├── personal/      ← Form 1040 + state
│   │   ├── llc-name-1/    ← Form 1065 or Schedule C
│   │   └── llc-name-2/    ← Form 1120-S (if S-Corp elected)
│   ├── shared/            ← Tax law changes, rate tables
│   └── tracking/          ← Filing status, deadline tracking
├── 2026/                  ← Tax Year 2026 workspace (same structure)
├── templates/             ← Reusable templates for new years/entities
└── scripts/               ← Utility scripts
```

## Quick Start

### Start a New Tax Year
1. Copy structure from prior year or use templates
2. Update `{year}/CLAUDE.md` with that year's entities, rates, and deadlines
3. Create entity directories under `{year}/entities/`
4. Begin document collection phase

### Available Skills
| Command | Purpose |
|---------|---------|
| `/tax bookkeeping` | Categorize transactions, chart of accounts |
| `/tax optimize` | S-Corp analysis, retirement plans, deductions, credits |
| `/tax prep` | Document checklists, form selection, filing coordination |
| `/tax audit-risk` | Audit risk scoring, red flag detection |
| `/tax calendar` | Key deadlines and estimated payment dates |
| `/tax rates` | Current brackets, limits, thresholds |

## Working Principles

- **Confidentiality**: Tax data is sensitive. Never commit actual financial data to git.
- **Year isolation**: Each tax year is self-contained. Prior year data stays in its directory.
- **Entity separation**: Each entity gets its own directory with its own documents.
- **Filing order**: Entity returns (1065, 1120-S) must be filed BEFORE individual return (1040).
- **Document everything**: Keep receipts, logs, and calculations in entity workpapers.
- **Verify annually**: Tax law changes every year. Always check current-year rates and rules.
- **IL 120-day rule**: If IRS adjusts federal return, file amended IL-1040-X within 120 days.

## Entity Naming Convention

Use lowercase, hyphenated names for entity directories:
- `personal` — Individual Form 1040
- `{llc-name}` — Each LLC by name (e.g., `splintai`, `polytrade`, `scalp-trading`)
- Add suffix for clarity: `-scorp` if S-Corp elected, `-partnership` if multi-member

## File Naming Convention

Within entity directories:
- `income/` — W-2s, 1099s, K-1s, revenue records
- `expenses/` — Receipts organized by Schedule C category
- `workpapers/` — Calculations, basis tracking, depreciation schedules
- `returns/` — Draft and final tax returns
- `correspondence/` — IRS/state letters, notices, responses
