import Mathlib
import Sentience.Core.ProcessWindow
import Sentience.Core.DefectProfiles
import Sentience.Core.OSIAM
import Sentience.Measures.Bottlenecks
import Sentience.Bridges.BridgePremises

/-!
# Sentience.Summit.ViabilityBoundary

**Phase VI: Summit theorem.**

OSIAMBoundaryDefect ⇒ VCBoundaryDefect(ι(σ)).
osiam_defect_implies_vc_defect; osiam_collapse_at_boundary via osiam_implies_zero_defect.
embedSIAMToVC lives in Bridges.ToViableContinuation (returns SIAMVCSubclass).
-/
set_option autoImplicit false

namespace Sentience
namespace Summit

variable {F : NemS.Framework} (σ : Core.ProcessWindow F)

/-- Canonical defect profile for σ (measurement-layer bridge). -/
axiom DefectProfileOf : Core.ProcessWindow F → Core.SIAMDefectProfile

/-- OSIAMBoundaryDefect: canonical profile has at least one coordinate exceeding zero. -/
def OSIAMBoundaryDefect (sigma : Core.ProcessWindow F) : Prop :=
  let p := DefectProfileOf sigma
  p.mirror_staleness > 0 ∨ p.partition_instability > 0 ∨ p.reconciliation_latency > 0 ∨
  p.openness_deficit_low > 0 ∨ p.openness_deficit_high > 0 ∨ p.burden_overload > 0

/-- Bridge: OSIAM implies canonical defect profile is zero (invariants exclude defect). -/
axiom osiam_implies_zero_defect {σ : Core.ProcessWindow F} (h : Core.OSIAM σ) :
  DefectProfileOf σ = Core.zeroDefectProfile

/-- SIAM defect implies VC defect under the canonical defect map. -/
theorem osiam_defect_implies_vc_defect
    (h_defect : OSIAMBoundaryDefect σ) :
    ∃ vc : Bridges.VCDefectProfile,
      vc.weakAnchoring ∨ vc.localGlobalDecoupled ∨ vc.commonModeFailure ∨ vc.capacityDeficit := by
  unfold OSIAMBoundaryDefect at h_defect
  exact ⟨Bridges.toVCDefectProfile (DefectProfileOf σ),
    Bridges.siam_defect_profile_implies_vc_defect_image (DefectProfileOf σ) h_defect⟩

/-- Boundary defect blocks OSIAM: defect and OSIAM are mutually exclusive.
    Proved from osiam_implies_zero_defect by contraposition. -/
theorem osiam_collapse_at_boundary
    (h_defect : OSIAMBoundaryDefect σ) :
    ¬ Core.OSIAM σ := by
  intro hOSIAM
  have heq := osiam_implies_zero_defect hOSIAM
  unfold OSIAMBoundaryDefect at h_defect
  rw [heq] at h_defect
  exact Core.zeroDefectProfile_no_positive h_defect

end Summit
end Sentience
