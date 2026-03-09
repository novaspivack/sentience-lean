# Claim Typing — Paper 72

Per MASTER_SPEC §1.1: every major statement classified. **Authoritative.** Sync with MASTER_SPEC theorem/axiom/scaffold table.

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
| toVCDefectProfile | Definition | Spec §4a | ✅ | Bridges/BridgePremises.lean | Canonical map |
| toVCDefectProfile_reflecting | Machine-checked theorem | BridgePremises | ✅ | Bridges/BridgePremises.lean | DefectMapReflecting |
| siam_defect_profile_implies_vc_defect_image | Machine-checked theorem | BridgePremises | ✅ | Bridges/BridgePremises.lean | Summit building block |
| mirror_staleness_implies_vc_weak_anchoring | Machine-checked theorem | Discharge | ✅ | Bridges/Discharge.lean | Profile→VC discharge |
| partition_instability_implies_vc_decoupled | Machine-checked theorem | Discharge | ✅ | Bridges/Discharge.lean | Profile→VC discharge |
| reconciliation_latency_implies_vc_common_mode | Machine-checked theorem | Discharge | ✅ | Bridges/Discharge.lean | Profile→VC discharge |
| openness_or_burden_implies_vc_capacity_deficit | Machine-checked theorem | Discharge | ✅ | Bridges/Discharge.lean | Profile→VC discharge |
| osiam_defect_implies_vc_defect | Machine-checked theorem | Summit | ✅ | Summit/ViabilityBoundary.lean | Proved via BridgePremises |
| vc_no_defect_implies_siam_no_defect | Machine-checked theorem | ToViableContinuation | ✅ | Bridges/ToViableContinuation.lean | Partial converse |
| causal_reconciliation_bound | Machine-checked theorem | Foothill | ✅ | Foothills/CausalReconciliation.lean | |
| adjudicative_openness_band | Machine-checked theorem | Foothill | ✅ | Foothills/AdjudicativeOpenness.lean | Λ_O band |
| mirror_freshness_bound | Machine-checked theorem | Foothill | ✅ | Foothills/MirrorFreshness.lean | |
| partition_stability_bound | Machine-checked theorem | Foothill | ✅ | Foothills/PartitionStability.lean | |
| regime_partition | Machine-checked theorem | Classification | ✅ | Classification/RegimePartition.lean | Phase mutual exclusivity |
| noise_stabilized_implies_persistence | Machine-checked theorem | Topology | ✅ | Topology/Persistence.lean | P₁ ≥ P_c |
| mere_recurrence_vs_self_indexed | Machine-checked theorem | Topology | ✅ | Topology/Persistence.lean | |
| encodingRobustness_preservation | Machine-checked theorem | Core | ✅ | Core/EncodingRobustness.lean | |
| reconciliation_implies_connectedness | Machine-checked theorem | Topology | ✅ | Topology/Unity.lean | β₀=1 |
| osiam_collapse_at_boundary | Machine-checked theorem | DefectProfileOf + osiam_implies_zero_defect | ✅ | Summit/ViabilityBoundary.lean | Discharged via contraposition |
| mirror_non_exhaustion_from_no_final_self | Machine-checked theorem | Paper 51 NoFinalSelfTheory | ✅ | Bridges/ToNEMS.lean | Discharged from no_final_self_theory'; siamInducesBarrierFrameData |
| burden_above_floor_implies_vc_capacity_deficit | Machine-checked theorem | VC capacity | ✅ | Bridges/SiamAsVCSystem.lean | Discharged via siamAsVCSystem |
| mirror_staleness_profile_implies_vc_weak_anchoring | Machine-checked theorem | Ridge | ✅ | Ridges/ProxyDrift.lean | Via Bridges.Discharge |
| mirror_staleness_yields_proxy_drift | Machine-checked theorem | Ridge | ✅ | Ridges/ProxyDrift.lean | ∃ p, mirror_staleness>0 |
| reconciliation_latency_profile_implies_vc_common_mode | Machine-checked theorem | Ridge | ✅ | Ridges/Fragmentation.lean | Via Bridges.Discharge |
| reconciliation_failure_yields_fragmentation | Machine-checked theorem | Ridge | ✅ | Ridges/Fragmentation.lean | effectiveBeta0Fragmented > 1 |
| partition_instability_profile_implies_vc_decoupled | Machine-checked theorem | Ridge | ✅ | Ridges/Dissociation.lean | Via Bridges.Discharge |
| partition_failure_yields_dissociation | Machine-checked theorem | Ridge | ✅ | Ridges/Dissociation.lean | ∃ p, partition_instability>0 |
| social_mirror_assists_not_replaces | Bridge axiom | Paper 31 | ✅ | Bridges/ToPaper31.lean | |
| group_structure_assists_not_replaces | Bridge axiom | Paper 31 | ✅ | Bridges/ToPaper31.lean | |
| mirror_coverage_stratified | Bridge axiom | Paper 33 | ✅ | Bridges/ToPaper33.lean | |
| full_self_exhaustion_impossible | Bridge axiom | Paper 33/51 | ✅ | Bridges/ToPaper33.lean | |
| subsystem_vs_whole_failure_modes | Bridge axiom | Paper 16 | ✅ | Bridges/ToPaper16.lean | |
| feedforward_not_OSIAM | Machine-checked theorem | Separation | ✅ | Classification/SeparationTheorems.lean | IsFeedforward := ¬RecursiveSelfUpdateHolds; structural |
| stateful_not_OSIAM | Machine-checked theorem | Separation | ✅ | Classification/SeparationTheorems.lean | IsStatefulOnly := ¬LiveAlternativesHolds; structural |
| robust_SIAM_implies_unified | Machine-checked theorem | Separation | ✅ | Classification/SeparationTheorems.lean | OSIAM→UnifiedRegime (β₀=1) |
| P_c, Lambda_* | Scaffold | Measures | ✅ | Topology/Persistence, Measures/Bottlenecks | Threshold constants |
| sigmaReconciliationSimplex | Scaffold | Topology | ✅ | Topology/Betti.lean | |
| hasFisherMetric, hasManifoldStructure | Scaffold | Geometry | ✅ | Geometry/*.lean | Placeholder |
| finiteWitnessExists | Existence axiom | Examples | ✅ | Examples/FiniteWitnesses.lean | |

*(Bridge axioms: explicit provenance; discharge plan in docs/BRIDGE_DISCHARGE_PLAN.md)*
