# sentience-lean — Artifact

**Paper 72: Constraint Theory of Autonomous Agency and Sentience**

## Build

```bash
cd ~/sentience-lean
lake update
lake build
```

Expected: `Build completed successfully` (8111 jobs). Zero sorry; Sentience linter warnings fixed.

## Structure

- **Core:** Framework, RecordLayer, ProcessWindow, InvariantWitnesses, Invariants, DefectProfiles, OSIAM
- **Measures:** Timescales, Bottlenecks, Burdens, TimescaleRelativity
- **Topology:** Betti (ReconciliationSimplex), Persistence, Unity, Recursion
- **Foothills:** CausalReconciliation, MirrorFreshness, AdjudicativeOpenness
- **Ridges:** ProxyDrift, Fragmentation, Dissociation
- **Summit:** ViabilityBoundary (OSIAMBoundaryDefect, osiam_defect_implies_vc_defect proved, osiam_collapse_at_boundary axiom). embedSIAMToVC in Bridges.ToViableContinuation (SIAMVCSubclass).
- **Bridges:** BridgePremises, Discharge, ToViableContinuation, ToNEMS, ToReflexiveClosure, ToPaper31, ToPaper33, ToPaper16
- **Examples:** Countermodels, FiniteWitnesses
- **Classification:** RegimePartition, SeparationTheorems
- **Protocols:** AuditProtocol
- **Interventions:** InterventionTheory
- **Phenomenology:** PSIAM (extension)

## Status

- Phase I–II: Complete (core structures, OSIAM, witness objects)
- Phase III–IV: Stubs and axiomatic placeholders (timescales, bottlenecks, foothills)
- Phase V–VI: Ridge/Summit axiomatic stubs (full proofs when VC bridge complete)
- Zero sorry in proved theorems; axioms used for unimplemented bridge/measure details
