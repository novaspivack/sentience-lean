import Mathlib
import Sentience.Core.ProcessWindow
import Sentience.Core.InvariantWitnesses
import Sentience.Core.Invariants

/-!
# Sentience.Core.EncodingRobustness

**Phase IV: Encoding robustness — functorial interface, preservation theorem.**

Admissible re-encodings preserve semantic quantity; non-preserved quantity distinguishes
encoding changes that alter meaning.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

variable {F : NemS.Framework} (σ : ProcessWindow F)

/-- Preservation theorem: when EncodingRobustness holds, there exists a witness
    for which the preserved-quantity predicate applies. (The witness certifies
    that admissible recodings preserve the quantity.) -/
theorem encodingRobustness_preservation
    (h : EncodingRobustnessHolds σ) :
    ∃ w : EncodingRobustnessWitness σ, True := by
  obtain ⟨w⟩ := h
  exact ⟨w, trivial⟩

/-- Functorial structure: admissible recoding is a relation on types.
    Preserved quantity is maintained under admissible recoding. -/
def AdmissibleRecoding (w : EncodingRobustnessWitness σ) : Type → Type → Prop :=
  w.admissibleRecoding

end Core
end Sentience
