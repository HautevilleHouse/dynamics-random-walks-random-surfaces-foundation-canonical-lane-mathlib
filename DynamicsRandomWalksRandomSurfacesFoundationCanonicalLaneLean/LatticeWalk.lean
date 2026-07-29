import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure LatticeWalk (d : ℕ) where
  lattice : Type u
  points : ℕ → lattice
  steps : ℕ → ℤ^d
  simpleRandomWalk : ∀ n, steps n ∈ {v : ℤ^d | ‖v‖ = 1}
  endpointDistribution : Prop

structure LatticeWalkEvidence (d : ℕ) (W : LatticeWalk d) where
  simpleRandomWalkClosed : W.simpleRandomWalk
  endpointDistributionClosed : W.endpointDistribution

def LatticeWalkClosed (d : ℕ) (W : LatticeWalk d) : Prop :=
  W.simpleRandomWalk ∧ W.endpointDistribution

theorem lattice_walk_closed_from_evidence (d : ℕ) (W : LatticeWalk d) (E : LatticeWalkEvidence d W) : LatticeWalkClosed d W := by
  exact And.intro E.simpleRandomWalkClosed E.endpointDistributionClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse