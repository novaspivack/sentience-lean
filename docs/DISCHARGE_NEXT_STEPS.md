# Bridge Axiom Discharge — Next Steps (Lean-Level)

Per BRIDGE_DISCHARGE_PLAN. Concrete actions to turn each axiom into a theorem.

## 1. osiam_collapse_at_boundary (Summit/ViabilityBoundary.lean)

**Current:** `axiom osiam_collapse_at_boundary (h_defect : OSIAMBoundaryDefect σ) : ¬ Core.OSIAM σ`

**Target:** Prove from VC `ConstraintDeficitBlocksViableContinuation` (or equivalent).

**Next steps:**
1. Import or define `ConstraintDeficitBlocksViableContinuation` from viable-continuation (VC) schema.
2. Establish ProcessWindow → RecordBearingSystem (or VC's system type) embedding; link `embedSIAMToVC σ` to the defect.
3. Apply: defect profile ⇒ VC defect (already proved via `siam_defect_profile_implies_vc_defect_image`) ⇒ VC theorem gives block ⇒ OSIAM invariants fail.

## 2. mirror_non_exhaustion_from_no_final_self (Bridges/ToNEMS.lean)

**Current:** `axiom mirror_non_exhaustion_from_no_final_self (σ) (_hFrame : siamInducesBarrierFrame F σ) : Core.MirrorNonExhaustionHolds σ`

**Target:** Prove from Paper 51 `NoFinalSelfTheory`.

**Next steps:**
1. Replace `siamInducesBarrierFrame` placeholder with real definition: ∃ (W : Type) (SF : SelfSemanticFrame W), BarrierHypotheses SF ∧ (structural link from σ to SF).
2. From `NoFinalSelfTheory` obtain conclusion that yields exhaustion < 1 in the frame.
3. Construct `MirrorNonExhaustionWitness` with `exhaustionLtOne` from that conclusion.
4. Apply existing `mirror_non_exhaustion_from_witness` to obtain `MirrorNonExhaustionHolds σ`.

## 3. burden_above_floor_implies_vc_capacity_deficit (Measures/Burdens.lean)

**Current:** `axiom burden_above_floor_implies_vc_capacity_deficit (floor) (_ : burdenExceedsVCCapacityFloor σ floor) : True`

**Target:** Prove `capacityDeficit (embedSIAMToVC σ)` from VC schema.

**Next steps:**
1. Import VC `capacityDeficit` (or `ConstraintCapacity.capacityDeficit`) and link to `B_SIAM_eff`.
2. Under `embedSIAMToVC` (Bridges.ToViableContinuation), show burden above floor ⇒ capacity deficit in embedded system.

## 4. Observable → profile (Ridge pathologies)

**Target:** Prove ρ_M, ρ_P, ρ_CR > thresholds ⇒ defect profile coordinates > 0.

**Next steps:**
1. Define measurement layer: DSAC observables (residual norms, ρ_CR, etc.) as typed terms.
2. Add axioms or proved lemmas: `observable_above_threshold → profile_coordinate_positive`.
3. Already in place: profile → VC defect (Discharge.lean).

## 5. reconciliation_failure_yields_fragmentation (Ridges/Fragmentation.lean)

**Current:** `axiom reconciliation_failure_yields_fragmentation (rho_CR_val) (h_frag : rho_CR_val > Lambda_CR_max) : beta0 σ (...) > 1`

**Target:** Prove from observable→profile + profile→topology.

**Next steps:**
1. Prove or assume ρ_CR > Λ_CR_max ⇒ reconciliation_latency > 0 in profile.
2. Prove reconciliation_latency > 0 ⇒ β₀ > 1 (topology from profile; may need TDA correspondence lemma).
3. Compose with (1).

## 6. feedforward_not_OSIAM, stateful_not_OSIAM (Classification/SeparationTheorems.lean)

**Target:** Certified countermodels or structural proofs.

**Next steps:**
1. Replace `IsFeedforward` and `IsStateful` stubs with proper definitions (e.g. no recurrent state, has state but not self-modeling).
2. Prove or provide countermodel: construct ProcessWindow satisfying predicate but not OSIAM.
3. Alternatively: import from separation theory if NEMS has relevant theorems.

## 7. robust_SIAM_implies_unified (Classification/SeparationTheorems.lean)

**Current:** `axiom robust_SIAM_implies_unified (σ) (_ : Core.OSIAM σ) : RegimeClass.four = RegimeClass.four` (stub).

**Target:** Nontrivial unified regime (RegimeClass.four with structural content).

**Next steps:**
1. Define what "unified" means for RegimeClass.four (e.g. β₀ = 1, single persistence component).
2. Prove OSIAM σ ⇒ unified regime from topology/encoding theorems.
3. Replace stub equality with actual regime classification.
