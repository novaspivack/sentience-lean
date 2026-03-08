import Mathlib
import Sentience.Core.Framework
import Sentience.Core.ProcessWindow
import Sentience.Core.OSIAM

/-!
# Sentience.Examples.Countermodels

**Phase Vc: Non-example library.**

Each fails for a named reason. Certified countermodels.
-/
set_option autoImplicit false

namespace Sentience
namespace Examples

/-- Thermostat: No live alternatives; dead replay.
    Failure reason: LiveAlternatives fails. -/
def ThermostatFailureReason : String := "No live alternatives; dead replay"

/-- Plain recurrent controller: No self-index; no RSMC.
    Failure reason: RecursiveSelfUpdate or MirrorCoverage fails. -/
def RecurrentControllerFailureReason : String := "No self-index; no RSMC"

/-- LLM-style stateless engine: No continuity ledger; no reconciliation.
    Failure reason: RefiningLedger or Reconciliation fails. -/
def StatelessEngineFailureReason : String := "No continuity ledger; no reconciliation"

/-- Distributed committee: β₀ > 1; no unified partition.
    Failure reason: SelfOtherPartition or topological unity fails. -/
def CommitteeFailureReason : String := "β₀ > 1; no unified partition"

/-- Stale mirror: MirrorFreshness fails; proxy drift.
    Failure reason: MirrorFreshness fails. -/
def StaleMirrorFailureReason : String := "MirrorFreshness fails; proxy drift"

/-- Dead replay automaton: LiveAlternatives fails; trivial resolution.
    Failure reason: LiveAlternatives fails. -/
def DeadReplayFailureReason : String := "LiveAlternatives fails; trivial resolution"

end Examples
end Sentience
