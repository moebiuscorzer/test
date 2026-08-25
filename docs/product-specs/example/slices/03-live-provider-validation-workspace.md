# Slice 03: Live provider validation marker workspace

## Outcome

Create `validation.txt` at the repository root containing exactly one line:
`sandbox lifecycle validated`.

## Seam

### Owner/module

Repository root validation fixture.

### Inputs

This approved slice and the existing verification commands.

### Outputs

The tracked `validation.txt` marker.

### Side effects

No runtime side effects beyond the tracked file.

## Invariants

- Existing product and control-plane documentation remains unchanged.
- The marker contains no credentials or provider identifiers.

## Scope

### In

- Add `validation.txt` with the exact required content.
- Run the configured verification commands.

### Out

- Application, infrastructure, dependency, and configuration changes.

## Protected contracts

None.

## Allowed implementation discretion

No discretion is needed beyond creating the exact marker.

## Required sensors

- `make verify-fast`
- `make verify`

## Human-visible review surface

The `validation.txt` diff and command results.

## Risk labels

None.

## Dependencies

None.

## Escalate if

The exact marker cannot be created without changing another file.

## Acceptance evidence

- `validation.txt` contains exactly `sandbox lifecycle validated` followed by a newline.
- `make verify-fast` passes.
- `make verify` passes.
