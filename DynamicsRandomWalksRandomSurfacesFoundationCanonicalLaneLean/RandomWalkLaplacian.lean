import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkLaplacianPackage where
  stateSpace : Type u
  transitionKernel : stateSpace → stateSpace → ℝ
  invariantMeasure : stateSpace → ℝ
  laplacianOperator : (stateSpace → ℝ) → (stateSpace → ℝ)
  laplacianBounded : Prop
  spectrumGap : Prop

structure RandomWalkLaplacianEvidence (R : RandomWalkLaplacianPackage) where
  laplacianBoundedClosed : R.laplacianBounded
  spectrumGapClosed : R.spectrumGap

def RandomWalkLaplacianClosed (R : RandomWalkLaplacianPackage) : Prop :=
  R.laplacianBounded ∧ R.spectrumGap

theorem random_walk_laplacian_closed_from_evidence
    (R : RandomWalkLaplacianPackage) (E : RandomWalkLaplacianEvidence R) :
    RandomWalkLaplacianClosed R := by
  exact And.intro E.laplacianBoundedClosed E.spectrumGapClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse