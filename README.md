# sentience-lean


## Research Program

This repository is part of the **Reflexive Reality** research program by [Nova Spivack](https://www.novaspivack.com/).

**What this formalizes:** Paper 73 of the NEMS suite (the constraint theory of autonomous agency; Self-Indexing Adjudicative Manifold).

| Link | Description |
|------|-------------|
| [Research page](https://www.novaspivack.com/research/) | Full index of all papers, programs, and Lean archives |
| [Full abstracts](https://novaspivack.github.io/research/abstracts/#nems-73) | Complete abstract for this library's papers |
| [Zenodo program hub](https://doi.org/10.5281/zenodo.19429270) | Citable DOI hub for the NEMS program |

All results are machine-checked in Lean 4 with a zero-sorry policy on proof targets.
See [MANIFEST.md](MANIFEST.md) for the sorry audit (if present).

---

**Paper 73: The Constraint Theory of Autonomous Agency and Sentience**

Formalization of the **Self-Indexing Adjudicative Manifold (SIAM)** — a bounded dynamical regime in phase space defining the boundary conditions for unified, self-modeling systems.

## Build

```bash
cd sentience-lean   # or ~/sentience-lean
lake update
lake build
```

## Dependencies

- Mathlib v4.29.0-rc3
- nems-lean (NemS, SemanticSelfDescription / Paper 51)
- reflexive-closure-lean (AwarenessGround)
- viable-continuation-lean (Paper 71)

## Structure

See `MANIFEST.md` and `docs/Spine.md` for the formal architecture and theorem catalog.
<!-- NOVA_ZPO_ZENODO_SOFTWARE_BEGIN -->
**Archival software (Zenodo):** https://doi.org/10.5281/zenodo.19429245
<!-- NOVA_ZPO_ZENODO_SOFTWARE_END -->
