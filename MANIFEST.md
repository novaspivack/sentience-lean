# sentience-lean — Artifact Manifest

**Status:** Phase I complete; Phases II+ in progress  
**Date:** March 2026  
**Lean version:** leanprover/lean4:v4.29.0-rc3  
**Mathlib version:** v4.29.0-rc3  

## Phase I Deliverables

- [x] Repo initialized at `~/sentience-lean`
- [x] Symlink: `72_Sentience_Program/sentience-lean -> ~/sentience-lean`
- [x] lakefile.lean (mathlib, viable-continuation-lean)
- [x] Directory structure per MASTER_SPEC §3
- [x] MANIFEST.md, docs/Spine.md, docs/ClaimTyping.md, docs/DependencyMap.md, docs/SIAM_Audit_Protocol.md, docs/NonExamples.md, docs/EngineeringUseCases.md

## Phase II–VI Lean Work Complete

- [x] Core: Framework, RecordLayer, ProcessWindow, InvariantWitnesses, Invariants, DefectProfiles, OSIAM
- [x] Measures: Timescales, Bottlenecks, Burdens, TimescaleRelativity
- [x] Topology: Betti (ReconciliationSimplex), Persistence, Unity, Recursion
- [x] Foothills: CausalReconciliation, MirrorFreshness, AdjudicativeOpenness
- [x] Ridges: ProxyDrift
- [x] Summit: ViabilityBoundary
- [x] Bridges: ToViableContinuation
- [x] Examples: Countermodels, FiniteWitnesses
- [x] Classification: RegimePartition, SeparationTheorems
- [x] Protocols: AuditProtocol
- [x] Interventions: InterventionTheory
- [x] Phenomenology: PSIAM
- [x] Geometry: FisherMetric, CurvatureBounds, ManifoldStructure

**Build:** `lake build` succeeds. Some theorems use axioms for bridge/measure stubs; zero sorry in proved code.

## NEMS & Reflexive-Closure Integration (Wired)

- **Framework:** Replaced with `NemS.Framework` (Model, Rec, Truth from NemS.Core.Basics)
- **RecordLayer:** Uses F.Rec, F.Truth; extends with admissibleUpdate, observationalFragment
- **Bridges/ToNEMS:** Imports SemanticSelfDescription.NoFinalSelfTheory; bridge hypothesis for mirror_non_exhaustion
- **Bridges/ToReflexiveClosure:** Imports AwarenessGround; processWindowInducesAwarenessLocus axiom for AlphaScoped
- **P-SIAM:** AlphaScoped defined via ToReflexiveClosure bridge; PSIAM := OSIAM ∧ AlphaScoped σ

## File Structure

```
sentience-lean/
├── lean-toolchain
├── lakefile.lean
├── README.md
├── MANIFEST.md
├── docs/
│   ├── Overview.md
│   ├── Spine.md
│   ├── ClaimTyping.md
│   ├── DependencyMap.md
│   ├── SIAM_Audit_Protocol.md
│   ├── NonExamples.md
│   └── EngineeringUseCases.md
├── Sentience.lean
└── Sentience/
    ├── Core/
    │   ├── ProcessWindow.lean
    │   ├── RecordLayer.lean
    │   ├── Invariants.lean
    │   ├── InvariantWitnesses.lean
    │   ├── DefectProfiles.lean
    │   └── OSIAM.lean
    ├── Topology/
    │   ├── Betti.lean
    │   ├── Persistence.lean
    │   ├── Unity.lean
    │   └── Recursion.lean
    ├── Geometry/
    │   ├── FisherMetric.lean
    │   ├── CurvatureBounds.lean
    │   └── ManifoldStructure.lean
    ├── Measures/
    │   ├── Timescales.lean
    │   ├── TimescaleRelativity.lean
    │   ├── Bottlenecks.lean
    │   └── Burdens.lean
    ├── Foothills/
    ├── Ridges/
    ├── Summit/
    ├── Examples/
    ├── Classification/
    ├── Protocols/
    ├── Interventions/
    ├── Phenomenology/
    └── Bridges/
```

## Theorem Catalog

*(To be populated as phases complete)*
