import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceGeodesicPackage where
  surfaceType : Type u
  geodesicDistance : surfaceType → surfaceType → ℝ
  crossingProbability : ℝ → ℝ
  geodesicExponent : ℝ
  geodesicHolderRegular : Prop

structure RandomSurfaceGeodesicEvidence (G : RandomSurfaceGeodesicPackage) where
  crossingProbabilityClosed : Prop
  geodesicHolderRegularClosed : G.geodesicHolderRegular

def RandomSurfaceGeodesicClosed (G : RandomSurfaceGeodesicPackage) : Prop :=
  G.geodesicHolderRegular

theorem random_surface_geodesic_closed_from_evidence
    (G : RandomSurfaceGeodesicPackage) (E : RandomSurfaceGeodesicEvidence G) :
    RandomSurfaceGeodesicClosed G := by
  exact E.geodesicHolderRegularClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse