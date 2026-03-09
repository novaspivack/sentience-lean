import Mathlib
import ViableContinuation.Core.System
import ViableContinuation.Core.Constraints
import ViableContinuation.Core.Viability
import ViableContinuation.Measures.ConstraintCapacity
import Sentience.Core.ProcessWindow
import Sentience.Measures.Burdens

/-!
# Sentience.Bridges.SiamAsVCSystem

**ProcessWindow as RecordBearingSystem for VC bridge.**

Minimal embedding: one abstract state per window; capacity defined from B_SIAM_eff vs floor.
Enables burden_above_floor_implies_vc_capacity_deficit discharge.
-/
set_option autoImplicit false

namespace Sentience
namespace Bridges

open ViableContinuation.Core ViableContinuation.Measures

variable {F : NemS.Framework}

/-- Single abstract state for a SIAM window (capacity-centric view). -/
def SiamVCState (σ : Core.ProcessWindow F) := Unit

/-- SIAM as VC system: one state, records from framework, capacity from burden. -/
noncomputable def siamAsVCSystem (σ : Core.ProcessWindow F) (floor : NNReal) : RecordBearingSystem where
  State := SiamVCState σ
  Record := F.Rec
  recordAt := fun _ _ => True

namespace SiamAsVCSystem

variable (σ : Core.ProcessWindow F) (floor : NNReal)

instance : ViableContinuation.Core.HasConstraints (siamAsVCSystem σ floor) where
  Constraint := Unit
  satisfied := fun _ _ => True

instance : HasConstraintCapacity (siamAsVCSystem σ floor) where
  CapacityLevel := Prop
  capacityLe := fun P Q => P → Q
  capacityLe_refl := fun _ => id
  capacityLe_trans := fun _ _ _ f g => g ∘ f
  effectiveCapacity := fun _ => (Measures.B_SIAM_eff σ : ℝ) ≤ (floor : ℝ)
  requiredFloor := True

instance : HasViability (siamAsVCSystem σ floor) where
  Viable := fun _ => True

/-- When burden exceeds floor, the singleton state has capacity deficit. -/
theorem burden_exceeds_implies_capacity_deficit
    (h : Measures.burdenExceedsVCCapacityFloor σ floor) (s : (siamAsVCSystem σ floor).State) :
    capacityDeficit s := by
  unfold capacityDeficit
  intro hle
  unfold Measures.burdenExceedsVCCapacityFloor at h
  exact absurd (hle trivial) (not_le.mpr h)

/-- Witness: ∃ s, capacityDeficit s when burden exceeds floor. -/
theorem burden_exceeds_witness
    (h : Measures.burdenExceedsVCCapacityFloor σ floor) :
    ∃ s : (siamAsVCSystem σ floor).State, capacityDeficit s :=
  ⟨(), burden_exceeds_implies_capacity_deficit σ floor h ()⟩

/-- Bridge theorem (discharged): burden above floor implies VC capacity deficit.
    Replaces the former axiom in Measures.Burdens. -/
theorem burden_above_floor_implies_vc_capacity_deficit
    (h : Measures.burdenExceedsVCCapacityFloor σ floor) :
    ∃ s : (siamAsVCSystem σ floor).State, capacityDeficit s :=
  burden_exceeds_witness σ floor h

end SiamAsVCSystem

end Bridges
end Sentience
