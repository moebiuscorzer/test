# Agent Skills

The orchestrator installs a pinned, compatibility-line-qualified skill set. Project artifacts and
executable sensors remain authoritative; skills supply contextual procedure and judgment.

## Default methodology

- Refinement: `explore-unknowns`, `product-refinement`, then adapted `write-spec` for meaningful
  multi-step work.
- Implementation: `implement-work-item`, `write-tests`, and `audit-choices` inside one claimed
  work-item boundary.
- Review: independent `code-review`; reviewers have read-only durable source.

## Specialist routing

- `risk:ui`: design-engineering guidance during implementation; screenshot critique/comparison
  in a fresh UI review.
- `risk:motion`: approved motion implementation plus an independent animation review.
- `risk:maintainability`, `release:large-change`, `change:cross-cutting`, or
  `refactor:substantial`: severe maintainability review; proposals are not automatic authority.
- `risk:security` and `risk:performance`: project-specific security and NFR review/sensors.
- `platform:ios` / Swift surfaces: Apple design and Swift guidance.
- `platform:expo`: Expo/React Native motion guidance when motion is required.

Labels are not the only signal. If the changed behavior reveals a missing specialist route, the
worker/reviewer reports the metadata drift and uses only a skill its profile permits.

Refinement also compares concrete platform/toolchain/NFR needs with this catalogue. A credible gap
is shown to the user before any search. Search and adoption are separate approvals; candidate
review uses the isolated `skill-curator` profile, never installs directly, and produces an exact
provenance/license/permissions/hazards/feedback dossier.

## Authority and permissions

For user-facing work, current feature decisions and protected project contracts outrank
`DESIGN.md`, which outranks `PRODUCT_SENSE.md`, blessed references, generic expert skills, and
model judgment. A skill never grants filesystem, Git, tracker, credential, browser, simulator, or
network capability; the harness and OS adapter enforce permissions.

Run `agentic doctor` to report the installed lock identity and every missing or mismatched skill
dependency. Upstream updates are explicit orchestrator dependency changes, never runtime fetches.
