import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceModel (V : Type u) where
  vertices : Set V
  edges : Set (V × V)
  heightFunction : V → ℤ
  heightDifference : V × V → ℤ
  boundaryConditions : Set V
  weight : (V → ℤ) → ℝ

structure RandomSurfaceEvidence (V : Type u) (M : RandomSurfaceModel V) where
  weightPositive : ∀ h, M.weight h > 0
  finiteVolume : Fintype V

def RandomSurfaceModelClosed (V : Type u) (M : RandomSurfaceModel V) : Prop :=
  (∀ h, M.weight h > 0) ∧ Fintype V

theorem random_surface_model_closed_from_evidence (V : Type u) (M : RandomSurfaceModel V) (E : RandomSurfaceEvidence V M) : RandomSurfaceModelClosed V M := by
  exact And.intro E.weightPositive E.finiteVolume

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse