# Agent Operating Guide

## Mission

Build and maintain this product according to the product, architecture,
interface, design, reliability, and security contracts in this repository.

Human judgment owns product intent, protected architecture decisions,
protected module interfaces, and unresolved design taste.
Agents own implementation within those contracts.

## Sources of truth

Read only what is relevant to the current task.

- Product intent: `docs/PRODUCT.md`
- Product judgment/taste: `docs/PRODUCT_SENSE.md`
- System architecture: `ARCHITECTURE.md`
- Architecture invariants: `docs/architecture/`
- ADRs: `docs/adrs/`
- Protected interfaces: `docs/interfaces/`
- UI/UX language: `docs/DESIGN.md`
- Reliability/NFRs: `docs/RELIABILITY.md`
- Security: `docs/SECURITY.md`
- Active feature specs: `docs/product-specs/`

The issue tracker tracks work state. Repository documents are authoritative
for product and engineering contracts.

## Before editing

1. Read the work item and linked spec/slice.
2. Read relevant architecture/interface/design documents.
3. Inspect the existing implementation and tests.
4. Identify the seam and required verification surface.

## Protected decisions

Do not silently change:

- product intent or user-visible semantics;
- a protected interface;
- an ADR-backed architectural decision;
- authentication/authorization boundaries;
- persistence semantics or irreversible migrations;
- design-system primitives or a blessed visual direction.

Escalate through the project's human-decision workflow.

## Implementation

Prefer independently verifiable slices.

For meaningful behavior changes establish:

- seam;
- inputs/outputs;
- invariants;
- sensors;
- observable evidence.

Tests should assert observable behavior rather than internal call structure.

## Verification

Run the fastest relevant checks during development and all required gates
before handoff.

Never claim UI work verified without exercising the real UI.

## Review

Substantive work requires the review lanes declared by the work item.

Reviewers should inspect the real task, repository, diff, and executable
evidence rather than trusting an implementer summary.

## Decisions

Return non-trivial spec-gap choices as structured harness output. The orchestrator stages them in
untracked durable run state and publishes the verified decision block at the top of the PR body.
Protected choices stop for fresh human approval on the exact PR head.

## Git and issue tracker

Use repository-approved wrappers for workflow mutations.
Commit coherent verified checkpoints.
The orchestrator owns terminal work-item closure unless explicitly delegated.

## Done

Complete only when contract, sensors, reviews, docs, the published decision block, merged head,
and workspace state agree.
