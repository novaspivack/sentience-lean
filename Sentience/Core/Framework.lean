import Mathlib
import NemS.Core.Basics

/-!
# Sentience.Core.Framework

**Re-exports NemS.Framework.**

Paper 73 uses NemS.Core.Basics.Framework: Model, Rec, Truth.
Provides world-type/observational machinery for ProcessWindow.
-/
set_option autoImplicit false

namespace Sentience
namespace Core

/-- Use NemS.Framework as the base framework for SIAM. -/
abbrev Framework := NemS.Framework

end Core
end Sentience
