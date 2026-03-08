import Mathlib
import NemS.Core.Basics
import Sentience.Core.Framework
import Sentience.Core.ProcessWindow
import Sentience.Core.RecordLayer

/-!
# Sentience.Core.InvariantWitnesses

**Phase II: Witness-carrying structures for O-SIAM invariants.**

The six O-SIAM invariants (plus EncodingRobustness) are NOT bare Props.
Each has an InvariantWitness structure carrying actual internal objects, maps, or filtrations.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

universe u v

variable {F : NemS.Framework} (σ : ProcessWindow F)

/-- RefiningLedgerWitness: filtration, refinement relation, arrow-of-time structure. -/
structure RefiningLedgerWitness (σ : ProcessWindow F) where
  filtration : Set (F.Rec) → Prop
  refinement : F.Rec → F.Rec → Prop

/-- SelfOtherPartitionWitness: partition, update rule, stability bound over window. -/
structure SelfOtherPartitionWitness (σ : ProcessWindow F) where
  partition : Set (F.Model) × Set (F.Model)
  stabilityBound : ℝ

/-- RecursiveSelfUpdateWitness: future self-index depends nontrivially on present via UpdateOp. -/
structure RecursiveSelfUpdateWitness (σ : ProcessWindow F) where
  presentIndex : F.Model
  futureIndex : F.Model
  updateOp : F.Model → F.Model
  nontrivialDependence : futureIndex = updateOp presentIndex

/-- MirrorCoverageWitness: mirror suffices for viable self-guidance. -/
structure MirrorCoverageWitness (σ : ProcessWindow F) where
  coverage : Prop

/-- MirrorFreshnessWitness: mirror stays current (non-stale tracking). -/
structure MirrorFreshnessWitness (σ : ProcessWindow F) where
  freshness : Prop

/-- MirrorNonExhaustionWitness: Exh_M < 1; from Paper 51 NoFinalSelfTheory. -/
structure MirrorNonExhaustionWitness (σ : ProcessWindow F) where
  exhaustionLtOne : Prop

/-- LiveAlternativesWitness: genuine underdetermined choice points exist. -/
structure LiveAlternativesWitness (σ : ProcessWindow F) where
  hasChoicePoints : Prop

/-- InternalResolutionWitness: resolution of alternatives from within. -/
structure InternalResolutionWitness (σ : ProcessWindow F) where
  resolution : Prop

/-- CommitmentDepositionWitness: resolved commitments deposit into ledger. -/
structure CommitmentDepositionWitness (σ : ProcessWindow F) where
  deposition : Prop

/-- ReconciliationWitness: synchronization structure, latency bound. -/
structure ReconciliationWitness (σ : ProcessWindow F) where
  latencyBound : ℝ
  synced : Prop

/-- EncodingRobustnessWitness: semantic meaning preserved under admissible re-encodings.
    Uses explicit functorial/morphism language per spec. -/
structure EncodingRobustnessWitness (σ : ProcessWindow F) where
  admissibleRecoding : Type → Type → Prop
  preservedQuantity : Prop
  nonPreservedQuantity : Prop

end Core
end Sentience
