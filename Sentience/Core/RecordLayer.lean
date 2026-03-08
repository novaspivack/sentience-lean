import Mathlib
import NemS.Core.Basics
import Sentience.Core.Framework

/-!
# Sentience.Core.RecordLayer

**Phase II: NEMS-compatible record semantics.**

Extends NemS.Framework with admissibleUpdate and observationalFragment.
recordAt uses F.Truth from NemS. Compatible with selection/diagonal machinery.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

universe u v

/-- RecordLayer: extends NemS.Framework with refinement and observational fragment.
    Record = F.Rec, recordAt = F.Truth (from NemS).
    Adds: admissibleUpdate (arrow of time), observationalFragment (interface). -/
structure RecordLayer (F : NemS.Framework) where
  /-- Admissible update: refinement relation (arrow of time). -/
  admissibleUpdate : F.Rec → F.Rec → Prop
  /-- Observational fragment: subset of records constituting the observational interface. -/
  observationalFragment : Set F.Rec

namespace RecordLayer

variable {F : NemS.Framework} (R : RecordLayer F)

/-- Records (from NemS). -/
def Record : Type _ := F.Rec

/-- Which records hold at which model states (from NemS.Truth). -/
def recordAt (M : F.Model) (r : F.Rec) : Prop := F.Truth M r

/-- A record r is in the observational fragment. -/
def inObservationalFragment (r : F.Rec) : Prop := r ∈ R.observationalFragment

end RecordLayer

end Core
end Sentience
