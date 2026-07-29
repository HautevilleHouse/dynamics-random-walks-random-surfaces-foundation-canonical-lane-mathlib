import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure SurfaceRandomGeometryPackage where
  surfaceType : Type u
  randomMetric : Prop
  gaussianFreeField : Prop
  conformalStructure : Prop
  randomMetricClosed : randomMetric
  gaussianFreeFieldClosed : gaussianFreeField
  conformalStructureClosed : conformalStructure

def SurfaceRandomGeometryClosed (S : SurfaceRandomGeometryPackage) : Prop :=
  S.randomMetric ∧ S.gaussianFreeField ∧ S.conformalStructure

theorem surface_random_geometry_closed_from_evidence (S : SurfaceRandomGeometryPackage) :
    SurfaceRandomGeometryClosed S := by
  exact And.intro S.randomMetricClosed (And.intro S.gaussianFreeFieldClosed S.conformalStructureClosed)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse