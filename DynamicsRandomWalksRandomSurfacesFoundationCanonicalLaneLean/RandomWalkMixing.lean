import DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean.RandomWalkSurfaceCoupling

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkMixingPackage {A : AdmissibleClass} (C : RandomWalkSurfaceCouplingPackage A) where
  mixingRate : ℝ
  mixingInequality : Prop
  exponentialDecay : Prop
  spectralGapBound : Prop

structure RandomWalkMixingEvidence {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    (M : RandomWalkMixingPackage C) where
  mixingInequalityClosed : M.mixingInequality
  exponentialDecayClosed : M.exponentialDecay
  spectralGapBoundClosed : M.spectralGapBound

def RandomWalkMixingClosed {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    (M : RandomWalkMixingPackage C) : Prop :=
  M.mixingInequality ∧ M.exponentialDecay ∧ M.spectralGapBound

theorem random_walk_mixing_closed_from_evidence
    {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    (M : RandomWalkMixingPackage C) (E : RandomWalkMixingEvidence M) :
    RandomWalkMixingClosed M := by
  exact And.intro E.mixingInequalityClosed (And.intro E.exponentialDecayClosed E.spectralGapBoundClosed)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse