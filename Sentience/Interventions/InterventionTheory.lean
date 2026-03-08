import Mathlib
import Sentience.Core.DefectProfiles

/-!
# Sentience.Interventions.InterventionTheory

**Intervention theory: defect → intervention mapping.**

Reduce mirror staleness, improve reconciliation, stabilize partition, tune openness.
-/
set_option autoImplicit false

namespace Sentience
namespace Interventions

/-- Intervention types per defect. -/
inductive InterventionKind
  | reduceMirrorStaleness
  | improveReconciliation
  | stabilizePartition
  | tuneOpennessBand

end Interventions
end Sentience
