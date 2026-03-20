# sentience-lean — Artifact

**Paper 73: Constraint Theory of Autonomous Agency and Sentience**

## Build

```bash
cd ~/sentience-lean
lake update
lake build
```

Expected: `Build completed successfully` (8118 jobs). Zero sorry; Sentience linter warnings fixed.

## Structure

- **Core:** Framework, RecordLayer, ProcessWindow, InvariantWitnesses, Invariants, DefectProfiles, OSIAM, EncodingRobustness
- **Measures:** Timescales, Bottlenecks, Burdens, TimescaleRelativity
- **Topology:** Betti (ReconciliationSimplex), Persistence, Unity, Recursion
- **Foothills:** CausalReconciliation, MirrorFreshness, PartitionStability, AdjudicativeOpenness
- **Ridges:** ProxyDrift, Fragmentation, Dissociation
- **Summit:** ViabilityBoundary (osiam_collapse_at_boundary proved via DefectProfileOf + contraposition; osiam_defect_implies_vc_defect proved). embedSIAMToVC in Bridges.ToViableContinuation (SIAMVCSubclass).
- **Bridges:** BridgePremises, Discharge, ToViableContinuation, ToNEMS, SiamAsVCSystem, ToReflexiveClosure, ToPaper31, ToPaper33, ToPaper16
- **Examples:** Countermodels, FiniteWitnesses
- **Classification:** RegimePartition, SeparationTheorems (feedforward_not_OSIAM, stateful_not_OSIAM, robust_SIAM_implies_unified; non-vacuous definitions)
- **Protocols:** AdjudicationProtocol, AuditProtocol
- **Interventions:** InterventionTheory
- **Phenomenology:** PSIAM (extension)

## Status

- **Paper 73 locked (2026-03-08):** All load-bearing bridge axioms discharged as theorems. Phases I–VI complete.
- Summit, ridge, separation, burden–VC, mirror non-exhaustion (Paper 51), profile-level discharge: all proved.
- Zero sorry in flagship spine.
