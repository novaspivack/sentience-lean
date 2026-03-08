import Mathlib
import NemS.Core.Basics
import Sentience.Core.OSIAM
import Sentience.Bridges.ToReflexiveClosure

/-!
# Sentience.Phenomenology.PSIAM

**Phase VII: P-SIAM (demoted to extension appendix).**

PSIAM := OSIAM ∧ AlphaScoped. AlphaScoped: process operates as locus where
Alpha-manifestation is present (AwarenessGround.LocusOfAlphaPresence).
Bridge: ToReflexiveClosure.processWindowInducesAwarenessLocus.
-/
set_option autoImplicit false

namespace Sentience
namespace Phenomenology

variable {F : NemS.Framework} (σ : Core.ProcessWindow F)

/-- AlphaScoped σ: process operates as locus-role where Alpha-manifestation is present.
    Bridge: ToReflexiveClosure.processWindowInducesAwarenessLocus — when the embedding
    to AwarenessGround.LocusOfAlphaPresence exists, this holds. -/
def AlphaScoped (σ : Core.ProcessWindow F) : Prop := Bridges.processWindowInducesAwarenessLocus F σ

/-- P-SIAM := O-SIAM ∧ AlphaScoped. -/
def PSIAM : Prop := Core.OSIAM σ ∧ AlphaScoped σ

end Phenomenology
end Sentience
