# Bridge Axiom Discharge Plan — Paper 72

Per MASTER_SPEC: bridge axioms have explicit provenance. This document tracks discharge status and upstream requirements.

## Discharge Status

### ✅ Discharged (Bridges/Discharge.lean)

Defect profile → VC defect mapping. When a SIAMDefectProfile has positive coordinate, the VC image exhibits the corresponding defect. **Proved** from DefectMapReflecting.

| Theorem | File | Status |
|---------|------|--------|
| `mirror_staleness_implies_vc_weak_anchoring` | Discharge.lean | ✅ Proved |
| `partition_instability_implies_vc_decoupled` | Discharge.lean | ✅ Proved |
| `reconciliation_latency_implies_vc_common_mode` | Discharge.lean | ✅ Proved |
| `openness_or_burden_implies_vc_capacity_deficit` | Discharge.lean | ✅ Proved |

Ridge modules (ProxyDrift, Fragmentation, Dissociation) now have **proved** profile-level theorems that use these; observable-level axioms remain for the measurement→profile step.

### Remaining (Scaffold / Upstream)

| Bridge Axiom | Upstream Source | Status |
|--------------|-----------------|--------|
| `osiam_collapse_at_boundary` | VC ConstraintDeficitBlocksViableContinuation | Need ProcessWindow→RecordBearingSystem embed |
| `mirror_non_exhaustion_from_no_final_self` | Paper 51 NoFinalSelfTheory | siamInducesBarrierFrame bridges; ToNEMS has witness |
| `burden_above_floor_implies_vc_capacity_deficit` | VC capacityDeficit | Need burden→capacity link under embedding |
| Ridge observable axioms | Measurement layer | ρ_M/ρ_P/ρ_CR > Λ_* ⇒ defect profile (DSAC) |
| Paper 31/33/16 bridge axioms | Upstream repos | External |

## Implementation Notes

- `Bridges/Discharge.lean`: four discharge theorems from DefectMapReflecting.
- Ridge axioms split: (1) profile→VC defect = proved; (2) observable→profile = axiom (measurement).
- Next: ProcessWindow→RecordBearingSystem instantiation for full VC theorem application.
