import Lake
open Lake DSL

package «sentience-lean» where
  -- Constraint Theory of Autonomous Agency and Sentience (Paper 73)
  -- Self-Indexing Adjudicative Manifold (SIAM) formalization

-- NEMS core (NemS.Core.Basics.Framework, selection, diagonal barrier)
require «nems-lean» from git
  "https://github.com/novaspivack/nems-lean.git" @ "main"

-- Reflexive closure (AwarenessGround, GroundManifestation for P-SIAM)
require «reflexive-closure-lean» from git
  "https://github.com/novaspivack/reflexive-closure-lean.git" @ "main"

-- Viable Continuation (Paper 71) — required for summit bridge
require «viable-continuation-lean» from git
  "https://github.com/novaspivack/viable-continuation-lean.git" @ "main"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.1"

@[default_target]
lean_lib «Sentience» where
  roots := #[`Sentience]
