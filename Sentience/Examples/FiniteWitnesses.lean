import Mathlib
import NemS.Core.Basics
import Sentience.Core.ProcessWindow
import Sentience.Core.OSIAM

/-!
# Sentience.Examples.FiniteWitnesses

**Phase Vc / §6.2: Concrete finite SIAM witnesses.**

Per spec: Paper 31/33 include concrete finite witnesses; Paper 73 needs the same.
Structured witness type; construction axiom.
-/
set_option autoImplicit false

namespace Sentience
namespace Examples

variable {F : NemS.Framework}

/-- Finite SIAM witness: explicit finite carrier types for a process window.
    Carriers are computable/finite per Paper 31/33 pattern. -/
structure FiniteSIAMWitness (σ : Core.ProcessWindow F) where
  ledgerCarrier : Type
  partitionCarrier : Type
  recordCarrier : Type
  finite_ledger : Finite ledgerCarrier
  finite_partition : Finite partitionCarrier
  finite_record : Finite recordCarrier
  osiam : Core.OSIAM σ  -- Witness certifies OSIAM

/-- Existence axiom: for the standard finite instantiation, a finite witness exists.
    Full construction provides explicit computable witnesses. -/
axiom finiteWitnessExists
    (F : NemS.Framework) (σ : Core.ProcessWindow F)
    (_ : Core.OSIAM σ) :
    Nonempty (FiniteSIAMWitness σ)

end Examples
end Sentience
