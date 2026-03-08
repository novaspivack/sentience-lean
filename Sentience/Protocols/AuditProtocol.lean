import Mathlib
import Sentience.Core.OSIAM
import Sentience.Core.DefectProfiles
import Sentience.Classification.RegimePartition

/-!
# Sentience.Protocols.AuditProtocol

**SIAM audit protocol implementation.**

Per docs/SIAM_Audit_Protocol.md: stages and dual-classification output.
-/
set_option autoImplicit false

namespace Sentience
namespace Protocols

/-- Audit output: SIAM class + Paper 71 defect class. -/
structure AuditOutput where
  siamClass : Classification.RegimeClass
  vcDefectClass : String  -- Trace Sufficiency | Weak Anchoring | etc.

end Protocols
end Sentience
