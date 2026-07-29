import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceHeightPackage where
  baseManifold : Type u
  heightFunction : baseManifold → ℝ
  gaussianField : Prop
  heightCorrelation : Prop
  rougheningExponent : ℝ
  heightHolderRegular : Prop

structure RandomSurfaceHeightEvidence (H : RandomSurfaceHeightPackage) where
  gaussianFieldClosed : H.gaussianField
  heightCorrelationClosed : H.heightCorrelation
  heightHolderRegularClosed : H.heightHolderRegular

def RandomSurfaceHeightClosed (H : RandomSurfaceHeightPackage) : Prop :=
  H.gaussianField ∧ H.heightCorrelation ∧ H.heightHolderRegular

theorem random_surface_height_closed_from_evidence
    (H : RandomSurfaceHeightPackage) (E : RandomSurfaceHeightEvidence H) :
    RandomSurfaceHeightClosed H := by
  exact And.intro E.gaussianFieldClosed
    (And.intro E.heightCorrelationClosed E.heightHolderRegularClosed)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse