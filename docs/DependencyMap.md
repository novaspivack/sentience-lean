# Dependency Map — Paper 73 ↔ Paper 71

Per MASTER_SPEC Phase VIII and §4a: exact one-to-one rows per ridge theorem.

| SIAM theorem | Paper 71 theorem/definition | bridge lemma | notes |
|--------------|----------------------------|--------------|-------|
| mirror_staleness_yields_proxy_drift | ProxyDetachment.weaklyAnchored | toVCDefectProfile | Mirror staleness → Weak Anchoring |
| partition_failure_yields_dissociation | LocalGlobal.LocalGlobalDecoupled | toVCDefectProfile | Partition instability → Decoupling |
| reconciliation_failure_yields_fragmentation | commonModeFailure / β₀>1 | toVCDefectProfile | Reconciliation latency → Common-mode |
| openness_collapse → capacity | capacityDeficit | toVCDefectProfile | Openness deficit → Capacity Deficit |
| osiam_collapse_at_boundary | constraint_deficit_blocks_viable_continuation | osiam_defect_implies_vc_defect, embedSIAMToVC | Summit: passes through ι |

### Preservation/Reflection Mini-Table (SIAM-instantiated VC subclass)

Per MASTER_SPEC §4a.F. **Peripheral to summit:** Summit theorem (osiam_defect_implies_vc_defect, osiam_collapse_at_boundary) does not depend on these cells. Ridge theorems establish forward direction.

| SIAM notion | preserved under ι? | reflected from ι? | notes |
|-------------|--------------------|--------------------|-------|
| Mirror freshness | TBD | TBD | mirror_staleness_yields_proxy_drift (ridge) |
| Partition stability | TBD | TBD | partition_failure_yields_dissociation (ridge) |
| Reconciliation unity | TBD | TBD | reconciliation_failure_yields_fragmentation (ridge) |
| Burden overload | TBD | TBD | burden_above_floor_implies_vc_capacity_deficit |
| Boundary defect | yes | partial | summit-critical; established |

*(TBD cells: non-load-bearing for Paper 73 closure. Certified subclass summit is established.)*
