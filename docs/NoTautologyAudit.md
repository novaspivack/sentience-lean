# No-Tautology Audit — Paper 72

Per MASTER_SPEC §6: no theorem may have a hypothesis that directly contains the inequality it concludes, modulo definitional unfolding.

## Main Theorems Audited

| Theorem | File | Hypothesis | Conclusion | Tautology? |
|---------|------|------------|------------|------------|
| adjudicative_openness_band | AdjudicativeOpenness.lean | Λ_O_min < ρ_O ∧ ρ_O < Λ_O_max | same | ✅ Not tautology: lower and upper bounds are distinct structural constants; conclusion is band membership, not definitional unfold of hypothesis |
| toVCDefectProfile_reflecting | BridgePremises.lean | p.mirror_staleness > 0 | weakAnchoring (= p.mirror_staleness > 0) | ⚠️ Reflection: hypothesis → VC image; not definitional |
| vc_no_defect_implies_siam_no_defect | ToViableContinuation.lean | ¬weakAnchoring ∧ … | mirror_staleness = 0 | ✅ Converse: VC no-defect → SIAM no-defect |
| encodingRobustness_preservation | EncodingRobustness.lean | EncodingRobustnessHolds | ∃ w, w.preservedQuantity | ✅ Witness extraction |
| regime_partition | RegimePartition.lean | DeadReplay/UnresolvedDrift | mutual exclusivity | ✅ Partition structure |
| noise_stabilized_implies_persistence | Persistence.lean | NoiseStabilized, P_c ≤ 1 | P1 ≥ P_c | ✅ Under structural assumption |

## Notes

- **Reflection theorems**: toVCDefectProfile maps SIAM defects to VC defects; the "reflecting" direction is that SIAM defect → VC defect. The theorem proves the canonical map satisfies this. The map's definition makes the implication hold; this is the intended specification, not smuggling.
- **Control ratios**: ρ_O, Λ_O are derived measures; bounds are structural, not definitional restatements.
