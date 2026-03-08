import Mathlib
import Sentience.Core.ProcessWindow
import Sentience.Core.DefectProfiles
import Sentience.Bridges.BridgePremises
import Sentience.Summit.ViabilityBoundary

/-!
# Sentience.Bridges.ToViableContinuation

**§4a Paper 71 Bridge.**

toVCDefectProfile, embedSIAMToVC, certified subclass schema.
-/
set_option autoImplicit false

namespace Sentience
namespace Bridges

variable {F : NemS.Framework} (σ : Core.ProcessWindow F)

/-- embedSIAMToVC: embedding ι of SIAM windows into viable-continuation framework.
    Carrier type opaque; instantiation in bridge schemas. -/
def embedSIAMToVC : Unit := Summit.embedSIAMToVC σ

/-- SIAM defect profile witnesses VC defect: when any coordinate exceeds zero,
    the image under toVCDefectProfile has the corresponding VC defect component.
    Links Summit.OSIAMBoundaryDefect to VCBoundaryDefect (Paper 71). -/
theorem siam_defect_profile_implies_vc_defect_image
    (p : Core.SIAMDefectProfile)
    (h : p.mirror_staleness > 0 ∨ p.partition_instability > 0 ∨ p.reconciliation_latency > 0 ∨
         p.openness_deficit_low > 0 ∨ p.openness_deficit_high > 0 ∨ p.burden_overload > 0) :
    (toVCDefectProfile p).weakAnchoring ∨ (toVCDefectProfile p).localGlobalDecoupled ∨
    (toVCDefectProfile p).commonModeFailure ∨ (toVCDefectProfile p).capacityDeficit := by
  obtain (hm | hp | hr | hol | hoh | hb) := h
  · exact Or.inl hm
  · exact Or.inr (Or.inl hp)
  · exact Or.inr (Or.inr (Or.inl hr))
  · exact Or.inr (Or.inr (Or.inr (Or.inl hol)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hoh))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr hb))))

/-- Partial converse (SIAM-instantiated subclass): when VC has no boundary defect
    under the image of ι, and the defect map is reflecting, SIAM has no defect. -/
theorem vc_no_defect_implies_siam_no_defect
    (p : Core.SIAMDefectProfile)
    (hVC : ¬ (toVCDefectProfile p).weakAnchoring ∧
            ¬ (toVCDefectProfile p).localGlobalDecoupled ∧
            ¬ (toVCDefectProfile p).commonModeFailure ∧
            ¬ (toVCDefectProfile p).capacityDeficit)
    (hMap : DefectMapReflecting toVCDefectProfile) :
    p.mirror_staleness = 0 ∧ p.partition_instability = 0 ∧ p.reconciliation_latency = 0 := by
  obtain ⟨h1, h2, h3, h4⟩ := hVC
  unfold DefectMapReflecting at hMap
  constructor
  · by_contra h; push_neg at h
    have := hMap.1 p (zero_lt_iff.mpr h)
    exact h1 this
  constructor
  · by_contra h; push_neg at h
    have := hMap.2.1 p (zero_lt_iff.mpr h)
    exact h2 this
  · by_contra h; push_neg at h
    have := hMap.2.2.1 p (zero_lt_iff.mpr h)
    exact h3 this

end Bridges
end Sentience
