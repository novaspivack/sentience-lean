import Mathlib
import NemS.Core.Basics
import Sentience.Core.Framework
import Sentience.Core.RecordLayer

/-!
# Sentience.Core.ProcessWindow

**Phase II: ProcessWindow structure.**

A temporally extended process-window σ = S_{[t₀,t₁]} over NemS.Framework.
State trajectory and records; NEMS-compatible.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

universe u v

/-- ProcessWindow: temporally extended window [t₀, t₁] with state trajectory and records.
    Uses NemS.Framework for Model, Rec, Truth. -/
structure ProcessWindow (F : NemS.Framework) where
  t0 : ℝ
  t1 : ℝ
  h_time : t0 < t1
  state_trajectory : ℝ → F.Model
  records : RecordLayer F

/-- Window duration τ_W := t₁ - t₀. -/
def ProcessWindow.tauW {F : NemS.Framework} (σ : ProcessWindow F) : ℝ := σ.t1 - σ.t0

theorem ProcessWindow.tauW_pos {F : NemS.Framework} (σ : ProcessWindow F) :
    0 < σ.tauW := by
  unfold ProcessWindow.tauW
  linarith [σ.h_time]

end Core
end Sentience
