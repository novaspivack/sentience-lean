import Mathlib
import Sentience.Core.ProcessWindow

/-!
# Sentience.Core.DefectProfiles

**Phase §4a: SIAMDefectProfile — uniform scalar severity space.**

All defect coordinates in ordered/scalar space for clean monotonicity lemmas.
NOT heterogeneous Bool flags. toVCDefectProfile maps to Paper 71.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

/-- SIAMDefectProfile: uniform severity space for all defect coordinates.
    Each coordinate is ℝ≥0; threshold predicates derived separately. -/
structure SIAMDefectProfile where
  mirror_staleness : NNReal
  partition_instability : NNReal
  reconciliation_latency : NNReal
  openness_deficit_low : NNReal   -- collapse (too closed)
  openness_deficit_high : NNReal  -- overload (too open)
  burden_overload : NNReal
  recursion_failure_severity : NNReal
  encoding_fragility : NNReal

/-- Zero defect profile: all coordinates zero. -/
def zeroDefectProfile : SIAMDefectProfile where
  mirror_staleness := 0
  partition_instability := 0
  reconciliation_latency := 0
  openness_deficit_low := 0
  openness_deficit_high := 0
  burden_overload := 0
  recursion_failure_severity := 0
  encoding_fragility := 0

theorem zeroDefectProfile_all_zero :
  zeroDefectProfile.mirror_staleness = 0 ∧ zeroDefectProfile.partition_instability = 0 ∧
  zeroDefectProfile.reconciliation_latency = 0 ∧ zeroDefectProfile.openness_deficit_low = 0 ∧
  zeroDefectProfile.openness_deficit_high = 0 ∧ zeroDefectProfile.burden_overload = 0 :=
  ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem zeroDefectProfile_no_positive :
  ¬ (zeroDefectProfile.mirror_staleness > 0 ∨ zeroDefectProfile.partition_instability > 0 ∨
     zeroDefectProfile.reconciliation_latency > 0 ∨ zeroDefectProfile.openness_deficit_low > 0 ∨
     zeroDefectProfile.openness_deficit_high > 0 ∨ zeroDefectProfile.burden_overload > 0) := by
  simp [zeroDefectProfile]

end Core
end Sentience
