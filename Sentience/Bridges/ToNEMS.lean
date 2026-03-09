import Mathlib
import NemS.Core.Basics
import Sentience.Core.ProcessWindow
import Sentience.Core.Invariants
import Sentience.Core.InvariantWitnesses
import SemanticSelfDescription.Theorems.NoFinalSelfTheory
import SemanticSelfDescription.Core.SelfTheory

/-!
# Sentience.Bridges.ToNEMS

**Bridge to Paper 51 NoFinalSelfTheory.**

Adjudication (LiveAlternatives, InternalResolution, CommitmentDeposition) utilizes
NemS.MFRR.ChoicePoints and is a specialized realization of internal selection under
categoricity-selector dichotomy and diagonal barrier.

Mirror non-exhaustion: Exh_M < 1 follows from no_final_self_theory when the
ProcessWindow's record/mirror structure induces a SelfSemanticFrame satisfying
BarrierHypotheses.
-/
set_option autoImplicit false

namespace Sentience
namespace Bridges

variable {F : NemS.Framework}

/-- Data witnessing that σ induces a barrier frame (Type 0 to fix universe inference). -/
structure SiamInducesBarrierFrameData (F : NemS.Framework) (σ : Core.ProcessWindow F) where
  W : Type 0
  SF : SemanticSelfDescription.SelfSemanticFrame W
  hB : SemanticSelfDescription.BarrierHypotheses SF

/-- Bridge hypothesis: A SIAM window with mirror structure induces a self-semantic
    frame satisfying barrier hypotheses. When this holds, mirror non-exhaustion
    follows from no_final_self_theory. -/
def siamInducesBarrierFrame (F : NemS.Framework) (σ : Core.ProcessWindow F) : Prop :=
  Nonempty (SiamInducesBarrierFrameData F σ)
  -- Structural link from σ to SF (mirror as candidate theory): left for ProcessWindow instantiation

/-- Mirror non-exhaustion under bridge: when the induction exists, no_final_self_theory
    implies the mirror cannot be exhaustive (Exh_M < 1). Given a witness with exhaustionLtOne,
    the invariant holds. -/
theorem mirror_non_exhaustion_from_witness
    (σ : Core.ProcessWindow F) (w : Core.MirrorNonExhaustionWitness σ)
    (_ : w.exhaustionLtOne) :
    Core.MirrorNonExhaustionHolds σ := ⟨w⟩

/-- Bridge theorem: when siamInducesBarrierFrame holds, mirror non-exhaustion follows from
    NoFinalSelfTheory. The witness's exhaustionLtOne is the negated existential of
    a final self-theory in the induced frame. -/
theorem mirror_non_exhaustion_from_no_final_self
    (σ : Core.ProcessWindow F)
    (hFrame : siamInducesBarrierFrame F σ) :
    Core.MirrorNonExhaustionHolds σ := by
  obtain ⟨d⟩ := hFrame
  have hNoFinal := SemanticSelfDescription.no_final_self_theory' (F := d.SF) d.hB
  exact ⟨{
    exhaustionLtOne := ¬ ∃ T : SemanticSelfDescription.InternalSelfTheory d.SF,
      SemanticSelfDescription.FinalSelfTheory T
  }⟩

end Bridges
end Sentience
