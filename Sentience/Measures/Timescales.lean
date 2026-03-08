import Mathlib
import NemS.Core.Basics
import Sentience.Core.Framework
import Sentience.Core.ProcessWindow

/-!
# Sentience.Measures.Timescales

**Phase III: Timescales as non-negative reals.**

τ_W, τ_C, τ_R, τ_M, τ_P, τ_A, τ_O, τ_D, τ_E.
-/
set_option autoImplicit false

namespace Sentience
namespace Measures

variable {F : NemS.Framework} (σ : Core.ProcessWindow F)

/-- Timescale bundle for a ProcessWindow. -/
structure Timescales (σ : Core.ProcessWindow F) where
  tauC : NNReal  -- causal propagation
  tauR : NNReal  -- reconciliation
  tauM : NNReal  -- mirror refresh
  tauP : NNReal  -- partition update
  tauA : NNReal  -- adjudication
  tauO : NNReal  -- openness duration
  tauD : NNReal  -- decoherence/noise
  tauE : NNReal  -- error correction

/-- Dimensionless ratio ρ_CR := (τ_C + τ_R) / τ_W. -/
noncomputable def rho_CR (ts : Timescales σ) : ℝ :=
  ((ts.tauC : ℝ) + (ts.tauR : ℝ)) / (σ.t1 - σ.t0)

/-- Dimensionless ratio ρ_M := τ_M / τ_W. -/
noncomputable def rho_M (ts : Timescales σ) : ℝ := (ts.tauM : ℝ) / (σ.t1 - σ.t0)

/-- Dimensionless ratio ρ_P := τ_P / τ_W. -/
noncomputable def rho_P (ts : Timescales σ) : ℝ := (ts.tauP : ℝ) / (σ.t1 - σ.t0)

/-- Dimensionless ratio ρ_O := τ_O / τ_W. -/
noncomputable def rho_O (ts : Timescales σ) : ℝ := (ts.tauO : ℝ) / (σ.t1 - σ.t0)

end Measures
end Sentience
