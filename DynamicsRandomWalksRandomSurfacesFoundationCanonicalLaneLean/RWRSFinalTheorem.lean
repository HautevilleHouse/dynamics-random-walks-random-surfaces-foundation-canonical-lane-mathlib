import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean.RWRSBridgeLemmas

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

def ConstrainedRWRSClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rwrs_endgame (A : AdmissibleClass) : ConstrainedRWRSClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse