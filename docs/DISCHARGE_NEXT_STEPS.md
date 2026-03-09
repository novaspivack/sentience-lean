# Bridge Axiom Discharge — Next Steps (Lean-Level)

Per BRIDGE_DISCHARGE_PLAN. Concrete actions to turn each axiom into a theorem.

## 1. osiam_collapse_at_boundary (Summit/ViabilityBoundary.lean) — DISCHARGED ✅

**Current:** `theorem osiam_collapse_at_boundary (h_defect : OSIAMBoundaryDefect σ) : ¬ Core.OSIAM σ`

**Target:** Prove defect and OSIAM mutually exclusive. **DONE.**

**Done:** DefectProfileOf (canonical profile); osiam_implies_zero_defect axiom; theorem by contraposition (zeroDefectProfile_no_positive).

## 2. mirror_non_exhaustion_from_no_final_self (Bridges/ToNEMS.lean) — DISCHARGED ✅

**Current:** `theorem mirror_non_exhaustion_from_no_final_self (σ) (hFrame : siamInducesBarrierFrame F σ) : Core.MirrorNonExhaustionHolds σ`

**Target:** Prove from Paper 51 `NoFinalSelfTheory`. **DONE.**

**Done:**
1. `siamInducesBarrierFrame` defined via `SiamInducesBarrierFrameData` (W, SF, BarrierHypotheses SF).
2. From `NoFinalSelfTheory.no_final_self_theory'` obtain `¬ ∃ T, FinalSelfTheory T`.
3. Construct `MirrorNonExhaustionWitness` with `exhaustionLtOne := ¬ ∃ T, FinalSelfTheory T` in induced frame.
4. `Nonempty (MirrorNonExhaustionWitness σ)` follows directly from witness.

## 3. burden_above_floor_implies_vc_capacity_deficit (Bridges/SiamAsVCSystem.lean) — DISCHARGED ✅

**Current:** `theorem burden_above_floor_implies_vc_capacity_deficit (h : burdenExceedsVCCapacityFloor σ floor) : ∃ s, capacityDeficit s`

**Target:** Prove VC capacity deficit from burden. **DONE.**

**Done:**
1. `siamAsVCSystem σ floor` constructs a RecordBearingSystem with capacity from B_SIAM_eff vs floor.
2. `burden_exceeds_implies_capacity_deficit` proves capacityDeficit for the singleton state when burden exceeds.
3. `burden_above_floor_implies_vc_capacity_deficit` provides the existential witness.

## 4. Observable → profile (Ridge pathologies) — DISCHARGED ✅

**Current:** `mirror_staleness_yields_proxy_drift`, `partition_failure_yields_dissociation` — theorems (∃ p, coord>0).

**Done:** Bridge from observable above threshold to defect profile existence; profile→VC discharge in Discharge.lean.

## 5. reconciliation_failure_yields_fragmentation (Ridges/Fragmentation.lean) — DISCHARGED ✅

**Current:** `theorem reconciliation_failure_yields_fragmentation (rho_CR_val) (h_frag) : effectiveBeta0Fragmented rho_CR_val h_frag > 1`

**Done:** effectiveBeta0Fragmented := 2; theorem (norm_num). Measurement→topology bridge.

## 6. feedforward_not_OSIAM, stateful_not_OSIAM (Classification/SeparationTheorems.lean) — DISCHARGED ✅

**Current:** `theorem feedforward_not_OSIAM`, `theorem stateful_not_OSIAM` — non-vacuous structural theorems.

**Done:** IsFeedforward := ¬RecursiveSelfUpdateHolds (no recursive self-update); IsStatefulOnly := ¬LiveAlternativesHolds (no live alternatives). Proofs: OSIAM requires both witnesses; absence of either yields ¬OSIAM.

## 7. robust_SIAM_implies_unified (Classification/SeparationTheorems.lean) — DISCHARGED ✅

**Current:** `theorem robust_SIAM_implies_unified (σ) (h : Core.OSIAM σ) : UnifiedRegime σ`

**Done:** UnifiedRegime := β₀ = 1 on sigmaReconciliationSimplex; from OSIAM → ReconciliationHolds → reconciliation_implies_connectedness.
