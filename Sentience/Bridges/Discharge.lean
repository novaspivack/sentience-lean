import Mathlib
import Sentience.Core.DefectProfiles
import Sentience.Bridges.BridgePremises

/-!
# Sentience.Bridges.Discharge

**Bridge axiom discharge — defect profile → VC defect.**

Proved from DefectMapReflecting (BridgePremises). When a SIAM defect profile has a positive
coordinate, the VC image under toVCDefectProfile exhibits the corresponding VC defect.
Remaining gap: observable (ρ_M, ρ_P, ρ_CR) → defect profile construction (DSAC/measurement).
-/
set_option autoImplicit false

namespace Sentience
namespace Bridges

variable {F : NemS.Framework}

/-- Mirror staleness > 0 ⇒ VC weakAnchoring. Discharge of mirror_staleness ↔ ProxyDetachment. -/
theorem mirror_staleness_implies_vc_weak_anchoring
    (p : Core.SIAMDefectProfile) (h : p.mirror_staleness > 0) :
    (toVCDefectProfile p).weakAnchoring :=
  (toVCDefectProfile_reflecting).1 p h

/-- Partition instability > 0 ⇒ VC localGlobalDecoupled. Discharge for Dissociation ridge. -/
theorem partition_instability_implies_vc_decoupled
    (p : Core.SIAMDefectProfile) (h : p.partition_instability > 0) :
    (toVCDefectProfile p).localGlobalDecoupled :=
  (toVCDefectProfile_reflecting).2.1 p h

/-- Reconciliation latency > 0 ⇒ VC commonModeFailure. Discharge for Fragmentation ridge. -/
theorem reconciliation_latency_implies_vc_common_mode
    (p : Core.SIAMDefectProfile) (h : p.reconciliation_latency > 0) :
    (toVCDefectProfile p).commonModeFailure :=
  (toVCDefectProfile_reflecting).2.2.1 p h

/-- Openness or burden deficit ⇒ VC capacityDeficit. Discharge for burden/openness. -/
theorem openness_or_burden_implies_vc_capacity_deficit
    (p : Core.SIAMDefectProfile)
    (h : p.openness_deficit_low > 0 ∨ p.openness_deficit_high > 0 ∨ p.burden_overload > 0) :
    (toVCDefectProfile p).capacityDeficit := by
  obtain (hol | hoh | hb) := h
  · exact Or.inl hol
  · exact Or.inr (Or.inl hoh)
  · exact Or.inr (Or.inr hb)

end Bridges
end Sentience
