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

end Core
end Sentience
