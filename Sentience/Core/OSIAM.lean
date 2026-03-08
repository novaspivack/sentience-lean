import Mathlib
import NemS.Core.Basics
import Sentience.Core.ProcessWindow
import Sentience.Core.InvariantWitnesses
import Sentience.Core.Invariants

/-!
# Sentience.Core.OSIAM

**Phase II: OSIAM as witness object.**

OSIAMWitness bundles all invariant witnesses. OSIAM := Nonempty OSIAMWitness.
Theorems, audits, examples operate on particular witness structures, not bare Props.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

variable {F : NemS.Framework}

/-- OSIAMWitness: bundle of all seven invariant witnesses for a ProcessWindow.
    Per spec: ledger, partition, recursion, mirror (cov/fresh/nonExh), adjudication (live/resolve/deposit),
    reconciliation, encoding robustness. -/
structure OSIAMWitness (σ : ProcessWindow F) where
  ledger : RefiningLedgerWitness σ
  partition : SelfOtherPartitionWitness σ
  recursion : RecursiveSelfUpdateWitness σ
  mirror_cov : MirrorCoverageWitness σ
  mirror_fresh : MirrorFreshnessWitness σ
  mirror_nonExh : MirrorNonExhaustionWitness σ
  adj_live : LiveAlternativesWitness σ
  adj_resolve : InternalResolutionWitness σ
  adj_deposit : CommitmentDepositionWitness σ
  recon : ReconciliationWitness σ
  enc_robust : EncodingRobustnessWitness σ

/-- OSIAM σ := there exists an OSIAMWitness for σ. -/
def OSIAM (σ : ProcessWindow F) : Prop := Nonempty (OSIAMWitness σ)

namespace OSIAM

/-- Extracting InvariantHolds from OSIAM. -/
theorem osiam_implies_ledger {σ : ProcessWindow F} (h : OSIAM σ) :
    RefiningLedgerHolds σ := by
  obtain ⟨w⟩ := h
  exact ⟨w.ledger⟩

theorem osiam_implies_partition {σ : ProcessWindow F} (h : OSIAM σ) :
    SelfOtherPartitionHolds σ := by
  obtain ⟨w⟩ := h
  exact ⟨w.partition⟩

theorem osiam_implies_reconciliation {σ : ProcessWindow F} (h : OSIAM σ) :
    ReconciliationHolds σ := by
  obtain ⟨w⟩ := h
  exact ⟨w.recon⟩

end OSIAM

end Core
end Sentience
