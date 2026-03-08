# sentience-lean — Overview

Paper 72 formalizes the **Self-Indexing Adjudicative Manifold (SIAM)** as a bounded dynamical regime in phase space — the boundary condition for unified, self-modeling, decision-making systems.

## Two Tiers

1. **O-SIAM (Operational):** Purely structural, cybernetic, information-theoretic. All core math and bounds proven here.
2. **P-SIAM (Phenomenological):** O-SIAM bridged to Alpha ground. Extension appendix only; main burden is O-SIAM.

## Core Notions

- **ProcessWindow σ:** Temporally extended window [t₀, t₁] with state trajectory, record layer, and timescales.
- **Seven Invariants:** Refining Ledger, Self/Other Partition, Recursive Self-Update, Mirror (coverage/freshness/non-exhaustion), Adjudication (live/resolution/deposition), Reconciliation, Encoding Robustness.
- **OSIAM σ:** Nonempty OSIAMWitness — witness-carrying structure, not bare Prop.
- **Bridge to Paper 71:** SIAMDefectProfile → VCDefectProfile; embedSIAMToVC; summit via VC boundary theorem.

## Build

```bash
cd ~/sentience-lean
lake update
lake build
```
