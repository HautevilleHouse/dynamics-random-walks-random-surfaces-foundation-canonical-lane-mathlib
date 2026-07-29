import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkTransitionPackage (A : AdmissibleClass) where
  stateSpace : Type u
  transitionKernel : stateSpace → stateSpace → ℝ
  reversibleMeasure : stateSpace → ℝ
  spectralGap : ℝ
  spectralGapPositive : spectralGap > 0
  transitionKernelNormalized : ∀ x, (∑' y, transitionKernel x y) = 1

structure RandomWalkTransitionEvidence {A : AdmissibleClass} (P : RandomWalkTransitionPackage A) where
  spectralGapPositiveClosed : P.spectralGapPositive
  transitionKernelNormalizedClosed : ∀ x, (∑' y, P.transitionKernel x y) = 1

def RandomWalkTransitionClosed {A : AdmissibleClass} (P : RandomWalkTransitionPackage A) : Prop :=
  P.spectralGapPositive ∧ (∀ x, (∑' y, P.transitionKernel x y) = 1)

theorem random_walk_transition_closed_from_evidence
    {A : AdmissibleClass} (P : RandomWalkTransitionPackage A) (E : RandomWalkTransitionEvidence P) :
    RandomWalkTransitionClosed P := by
  exact And.intro E.spectralGapPositiveClosed E.transitionKernelNormalizedClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse