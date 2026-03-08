import Mathlib
import Sentience.Core.InvariantWitnesses

/-!
# Sentience.Core.Invariants

**Phase II: Propositional extraction from witnesses.**

InvariantHolds := Nonempty witness. The seven O-SIAM invariants as Props.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

variable {F : NemS.Framework} (σ : ProcessWindow F)

/-- RefiningLedger holds when a witness exists. -/
def RefiningLedgerHolds : Prop := Nonempty (RefiningLedgerWitness σ)

/-- SelfOtherPartition holds when a witness exists. -/
def SelfOtherPartitionHolds : Prop := Nonempty (SelfOtherPartitionWitness σ)

/-- RecursiveSelfUpdate holds when a witness exists. -/
def RecursiveSelfUpdateHolds : Prop := Nonempty (RecursiveSelfUpdateWitness σ)

/-- MirrorCoverage holds when a witness exists. -/
def MirrorCoverageHolds : Prop := Nonempty (MirrorCoverageWitness σ)

/-- MirrorFreshness holds when a witness exists. -/
def MirrorFreshnessHolds : Prop := Nonempty (MirrorFreshnessWitness σ)

/-- MirrorNonExhaustion holds when a witness exists (from Paper 51). -/
def MirrorNonExhaustionHolds : Prop := Nonempty (MirrorNonExhaustionWitness σ)

/-- LiveAlternatives holds when a witness exists. -/
def LiveAlternativesHolds : Prop := Nonempty (LiveAlternativesWitness σ)

/-- InternalResolution holds when a witness exists. -/
def InternalResolutionHolds : Prop := Nonempty (InternalResolutionWitness σ)

/-- CommitmentDeposition holds when a witness exists. -/
def CommitmentDepositionHolds : Prop := Nonempty (CommitmentDepositionWitness σ)

/-- Reconciliation holds when a witness exists. -/
def ReconciliationHolds : Prop := Nonempty (ReconciliationWitness σ)

/-- EncodingRobustness holds when a witness exists. -/
def EncodingRobustnessHolds : Prop := Nonempty (EncodingRobustnessWitness σ)

end Core
end Sentience
