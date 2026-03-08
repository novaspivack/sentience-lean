# sentience-lean — Overview

Paper 72 formalizes the **Self-Indexing Adjudicative Manifold (SIAM)** as a bounded dynamical regime in phase space — the boundary condition for **unified agency** and self-modeling, decision-making systems. Operational names: *unified agency*, *self-indexed unity*, *viable subject-window*, *adjudicative manifold* (per MASTER_SPEC naming note).

## Two Tiers

1. **O-SIAM (Operational):** Purely structural, cybernetic, information-theoretic. All core math and bounds proven here.
2. **P-SIAM (Phenomenological):** O-SIAM bridged to Alpha ground. Extension appendix only; main burden is O-SIAM.

## Core Notions

- **ProcessWindow σ:** Viable subject-window: temporally extended [t₀, t₁] with state trajectory, record layer, and timescales.
- **Seven Invariants:** Refining Ledger, Self/Other Partition, Recursive Self-Update (self-indexed unity), Mirror (coverage/freshness/non-exhaustion), Adjudication (live/resolution/deposition), Reconciliation, Encoding Robustness.
- **OSIAM σ:** Unified agency regime — Nonempty OSIAMWitness (witness-carrying structure, not bare Prop).
- **Bridge to Paper 71:** SIAMDefectProfile → VCDefectProfile; embedSIAMToVC; summit via VC boundary theorem.

## Build

```bash
cd ~/sentience-lean
lake update
lake build
```

Expected: 8111 jobs, 0 sorry. Sentience linter warnings fixed; remaining in upstream AwarenessGround.

## References

- `docs/Spine.md` — theorem spine
- `docs/ClaimTyping.md` — claim taxonomy
- `docs/BRIDGE_DISCHARGE_PLAN.md` — bridge axiom discharge status
- `docs/DISCHARGE_NEXT_STEPS.md` — Lean-level next steps per axiom
