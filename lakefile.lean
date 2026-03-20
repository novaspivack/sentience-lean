import Lake
open Lake DSL

package «sentience-lean» where
  -- Constraint Theory of Autonomous Agency and Sentience (Paper 73)
  -- Self-Indexing Adjudicative Manifold (SIAM) formalization

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.0-rc3"

-- NEMS core (NemS.Core.Basics.Framework, selection, diagonal barrier)
require «nems-lean» from "../nems-lean"

-- Reflexive closure (AwarenessGround, GroundManifestation for P-SIAM)
require «reflexive-closure-lean» from "../reflexive-closure-lean"

-- Viable Continuation (Paper 71) — required for summit bridge
require «viable-continuation-lean» from "../viable-continuation-lean"

@[default_target]
lean_lib «Sentience» where
  globs := #[.submodules `Sentience]
