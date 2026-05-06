# helix-store-wal-trail

`helix-store-wal-trail` keeps a focused Swift implementation around databases. The project goal is to develop a Swift command-oriented project for wal scenarios with deny and allow fixtures, explainable decision traces, and no network dependency.

## Problem It Tries To Make Smaller

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Helix Store WAL Trail Review Notes

Start with `plan drift` and `join width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/helix-store-wal-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `plan drift` and `join width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Swift addition stays small enough to inspect in one sitting.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 204, which lands in `ship`. The most cautious case is `stress` at 161, which lands in `ship`.

## Known Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
