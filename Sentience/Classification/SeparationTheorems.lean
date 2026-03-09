import Mathlib
import NemS.Core.Basics
import Sentience.Classification.RegimePartition
import Sentience.Core.OSIAM
import Sentience.Core.Invariants
import Sentience.Topology.Unity
import Sentience.Topology.Betti

/-!
# Sentience.Classification.SeparationTheorems

**Phase Vb: Strict separation theorems.**

Non-vacuous separation: feedforward and stateful-only systems fail OSIAM by structural necessity
(absence of required invariant witnesses), not by empty class definition.
-/
set_option autoImplicit false

namespace Sentience
namespace Classification

open Topology Core
variable {F : NemS.Framework}

/-- Feedforward: σ has no recursive self-update.
    Output at t depends only on input at t; no accumulation of self-index over time.
    Meaningful predicate: holds when RecursiveSelfUpdateWitness cannot exist. -/
def IsFeedforward (σ : Core.ProcessWindow F) : Prop :=
  ¬ RecursiveSelfUpdateHolds σ

/-- Stateful-only: σ has stateful dynamics but no live alternatives.
    Has hidden state, but no genuine underdetermined choice points (deterministic flow).
    Meaningful predicate: holds when LiveAlternativesWitness cannot exist. -/
def IsStatefulOnly (σ : Core.ProcessWindow F) : Prop :=
  ¬ LiveAlternativesHolds σ

/-- Feedforward controller does not imply OSIAM.
    Proof: OSIAM requires RecursiveSelfUpdateWitness; feedforward lacks it. -/
theorem feedforward_not_OSIAM
    (σ : Core.ProcessWindow F) (h : IsFeedforward σ) :
    ¬ Core.OSIAM σ := by
  intro hOSIAM
  unfold IsFeedforward at h
  obtain ⟨w⟩ := hOSIAM
  have hRec : RecursiveSelfUpdateHolds σ := ⟨w.recursion⟩
  exact h hRec

/-- Stateful-only controller does not imply OSIAM.
    Proof: OSIAM requires LiveAlternativesWitness; stateful-only lacks it. -/
theorem stateful_not_OSIAM
    (σ : Core.ProcessWindow F) (h : IsStatefulOnly σ) :
    ¬ Core.OSIAM σ := by
  intro hOSIAM
  unfold IsStatefulOnly at h
  obtain ⟨w⟩ := hOSIAM
  have hLive : LiveAlternativesHolds σ := ⟨w.adj_live⟩
  exact h hLive

/-- Unified regime: β₀ = 1 (connected) on canonical regression simplex. -/
def UnifiedRegime (σ : Core.ProcessWindow F) : Prop :=
  Topology.beta0 σ (Topology.sigmaReconciliationSimplex σ) = 1

/-- Robust SIAM implies unified regime. From OSIAM → ReconciliationHolds → β₀ = 1. -/
theorem robust_SIAM_implies_unified
    (σ : Core.ProcessWindow F) (h : Core.OSIAM σ) :
    UnifiedRegime σ := by
  unfold UnifiedRegime
  have hRecon := Core.OSIAM.osiam_implies_reconciliation h
  exact Topology.reconciliation_implies_connectedness σ (Topology.sigmaReconciliationSimplex σ) hRecon

end Classification
end Sentience
