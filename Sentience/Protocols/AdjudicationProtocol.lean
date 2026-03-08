import Mathlib
import NemS.Core.Basics
import Sentience.Core.ProcessWindow
import Sentience.Core.OSIAM

/-!
# Sentience.Protocols.AdjudicationProtocol

**Phase IV: Typed adjudication protocol.**

Choice-point carrier, selector family, diagonal constraint, deposition.
Per MASTER_SPEC: adjudication = internal selection at choice points, constrained by
NEMS categoricity-selector dichotomy and diagonal barrier.
-/
set_option autoImplicit false

namespace Sentience
namespace Protocols

variable {F : NemS.Framework}

/-- Choice-point carrier: type of decision points where alternatives are live. -/
structure ChoicePointCarrier (σ : Core.ProcessWindow F) where
  carrier : Type
  inhabited : Nonempty carrier

/-- Selector family: maps choice points to selected alternatives.
    Constrained by diagonal barrier: no total effective selector for all record propositions. -/
structure SelectorFamily (σ : Core.ProcessWindow F) (CP : ChoicePointCarrier σ) where
  select : CP.carrier → Prop  -- selected alternative holds
  diagonalConstraint : Prop   -- selector respects diagonal barrier (not total effective)

/-- Deposition: resolved commitments deposit into the ledger. -/
structure Deposition (σ : Core.ProcessWindow F) where
  deposits : Prop  -- committed records enter ledger

/-- Typed adjudication protocol: choice points + selector + deposition. -/
structure AdjudicationProtocol (σ : Core.ProcessWindow F) where
  choicePoints : ChoicePointCarrier σ
  selector : SelectorFamily σ choicePoints
  deposition : Deposition σ

/-- OSIAM implies an admissible adjudication protocol exists. -/
axiom osiam_has_adjudication_protocol
    (σ : Core.ProcessWindow F) (h : Core.OSIAM σ) :
    Nonempty (AdjudicationProtocol σ)

end Protocols
end Sentience
