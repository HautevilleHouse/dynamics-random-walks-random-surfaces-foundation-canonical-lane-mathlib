import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure GaussianFreeField (V : Type u) where
  graph : SimpleGraph V
  mass : ℝ≥0
  covariance : V × V → ℝ
  harmonicProperty : Prop

structure GaussianFreeFieldEvidence (V : Type u) (G : GaussianFreeField V) where
  harmonicPropertyClosed : G.harmonicProperty
  covariancePositiveDefinite : ∀ s : Finset V, s.card > 0 → ∑ x in s, ∑ y in s, G.covariance (x,y) > 0

def GaussianFreeFieldClosed (V : Type u) (G : GaussianFreeField V) : Prop :=
  G.harmonicProperty ∧ (∀ s : Finset V, s.card > 0 → ∑ x in s, ∑ y in s, G.covariance (x,y) > 0)

theorem gaussian_free_field_closed_from_evidence (V : Type u) (G : GaussianFreeField V) (E : GaussianFreeFieldEvidence V G) : GaussianFreeFieldClosed V G := by
  exact And.intro E.harmonicPropertyClosed E.covariancePositiveDefinite

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse