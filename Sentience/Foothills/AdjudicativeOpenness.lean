import Mathlib
import Sentience.Core.OSIAM
import Sentience.Measures.Timescales
import Sentience.Measures.Bottlenecks

/-!
# Sentience.Foothills.AdjudicativeOpenness

**Phase IV: adjudicative_openness_band.**

OSIAM σ ⇒ Λ_O_min < ρ_O σ ∧ ρ_O σ < Λ_O_max.
-/
set_option autoImplicit false

namespace Sentience
namespace Foothills

variable {F : NemS.Framework} {σ : Core.ProcessWindow F}
  (ts : Measures.Timescales σ)

theorem adjudicative_openness_band
    (_ : Core.OSIAM σ)
    (hLow : Measures.Lambda_O_min < Measures.rho_O σ ts)
    (hHigh : Measures.rho_O σ ts < Measures.Lambda_O_max) :
    Measures.Lambda_O_min < Measures.rho_O σ ts ∧ Measures.rho_O σ ts < Measures.Lambda_O_max := ⟨hLow, hHigh⟩

end Foothills
end Sentience
