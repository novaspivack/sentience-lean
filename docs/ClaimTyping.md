# Claim Typing — Paper 72

Per MASTER_SPEC §1.1: every major statement classified.

| Claim | Type | Source | Status | File | Notes |
|-------|------|--------|--------|------|-------|
| ProcessWindow | Definition | Spec Phase II | ✅ | Core/ProcessWindow.lean | |
| RecordLayer | Definition | Spec Phase II | ✅ | Core/RecordLayer.lean | |
| RefiningLedgerWitness | Definition | Spec Phase II | ✅ | Core/InvariantWitnesses.lean | |
| SelfOtherPartitionWitness | Definition | Spec Phase II | ✅ | Core/InvariantWitnesses.lean | |
| MirrorCoverageWitness etc. | Definition | Spec Phase II | ✅ | Core/InvariantWitnesses.lean | |
| AdjudicationWitness (split) | Definition | Spec Phase II | ✅ | Core/InvariantWitnesses.lean | |
| EncodingRobustnessWitness | Definition | Spec Phase II | ✅ | Core/InvariantWitnesses.lean | |
| OSIAMWitness, OSIAM | Definition | Spec Phase II | ✅ | Core/OSIAM.lean | |
| SIAMDefectProfile | Definition | Spec §4a | ✅ | Core/DefectProfiles.lean | |
| toVCDefectProfile | Definition | Spec §4a | ✅ | Bridges/ToViableContinuation.lean | |
| causal_reconciliation_bound | Machine-checked theorem | Foothill | 🔄 | Foothills/ | |
| adjudicative_openness_band | Machine-checked theorem | Foothill | 🔄 | Foothills/ | |
| mirror_non_exhaustion | Theorem under bridge | Paper 51 NoFinalSelfTheory | 🔄 | Foothills/ | |
| mirror_staleness_yields_proxy_drift | Machine-checked theorem | Ridge | 🔄 | Ridges/ | |
| osiam_defect_implies_vc_defect | Axiom | Summit bridge | ⬜ | Summit/ | Stub: needs VC boundary |
| osiam_collapse_at_boundary | Axiom | Via VC boundary | ⬜ | Summit/ | Stub |
| partition_stability_bound | Machine-checked theorem | Foothill | ✅ | Foothills/PartitionStability.lean | |
| reconciliation_failure_yields_fragmentation | Axiom | Ridge | ⬜ | Ridges/Fragmentation.lean | β₀>1 |
| partition_failure_yields_dissociation | Axiom | Ridge | ⬜ | Ridges/Dissociation.lean | LocalGlobalDecoupled |
| social_mirror_assists_not_replaces | Axiom | Bridge Paper 31 | ⬜ | Bridges/ToPaper31.lean | |
| mirror_coverage_stratified | Axiom | Bridge Paper 33 | ⬜ | Bridges/ToPaper33.lean | |
| full_self_exhaustion_impossible | Axiom | Bridge Paper 33/51 | ⬜ | Bridges/ToPaper33.lean | |
| subsystem_vs_whole_failure_modes | Axiom | Bridge Paper 16 | ⬜ | Bridges/ToPaper16.lean | |

*(To be expanded as theorems are proved; bridge axioms → real proofs)*
