# SIAM Audit Protocol

Per MASTER_SPEC §6: audit procedure with dual-classification output.

## Stages

1. **Candidate window identification** — Select process window σ = S_{[t₀,t₁]}
2. **Invariant witness extraction** — Attempt to construct OSIAMWitness components
3. **Burden estimation** — Compute ℬ_SIAM^eff(σ), ratios ρ_CR, ρ_M, ρ_P, ρ_O
4. **Boundary defect detection** — Check SIAMDefectProfile thresholds
5. **Topological audit** — Verify β₀=1, β₁≥1, P₁≥P_c on ReconciliationSimplex σ
6. **Classification** — Output dual classification (below)

## Dual-Classification Output (MANDATORY)

Each audit must output BOTH:

1. **SIAM classification:** Class 0 | 1 | 2 | 3 | 4 (Robust O-SIAM) | 5 (P-SIAM candidate)
2. **Paper 71 defect classification:** Trace Sufficiency | Weak Anchoring | Local/Global Decoupling | Common-Mode Failure | Capacity Deficit

| Class | Description |
|-------|-------------|
| 0 | Feedforward / no loop |
| 1 | Recurrent but no self-index |
| 2 | Self-modeling but no live adjudication |
| 3 | Operational adjudicator but non-unified |
| 4 | Robust O-SIAM |
| 5 | P-SIAM candidate |
