# sentience-lean — Spine

Dependency order and primitive justification for the SIAM formalization.

## Module Order

1. **Core/Framework** — Minimal Framework stub (NEMS-compatible when available)
2. **Core/RecordLayer** — Record semantics, observational fragment interface
3. **Core/ProcessWindow** — ProcessWindow structure over Framework
4. **Core/InvariantWitnesses** — Witness structures for each invariant
5. **Core/Invariants** — Propositional extraction (InvariantHolds)
6. **Core/DefectProfiles** — SIAMDefectProfile, toVCDefectProfile
7. **Core/OSIAM** — OSIAMWitness, OSIAM
8. **Measures/** — Timescales, Bottlenecks, Burdens
9. **Topology/** — ReconciliationSimplex, Betti, Persistence
10. **Foothills/** — Bound theorems
11. **Ridges/** — Pathology mapping to Paper 71
12. **Summit/** — Viability boundary, osiam_defect_implies_vc_defect (proved)
13. **Bridges/** — ToViableContinuation, ToNEMS (stubs until NEMS exists)

## Primitives

- **Framework:** Abstract parameter for world-type/observational machinery. Provides `Model : Type`.
- **ProcessWindow:** (t₀, t₁, state_trajectory, records) with t₀ < t₁.
- **RecordLayer:** Semantic structure for records; compatible with NEMS selection/diagonal machinery.
- **InvariantWitness:** Structures carrying filtrations, partitions, maps — not bare Props.
