import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceScalingPackage where
  surfaceFamily : Type u → Type v
  scaleParameter : ℝ
  scalingOperator : (surfaceFamily ℕ → ℝ) → (surfaceFamily ℕ → ℝ)
  scalingExponent : ℝ
  scalingLimitExists : Prop
  scalingLimitHolder : Prop

structure RandomSurfaceScalingEvidence (S : RandomSurfaceScalingPackage) where
  scalingLimitExistsClosed : S.scalingLimitExists
  scalingLimitHolderClosed : S.scalingLimitHolder

def RandomSurfaceScalingClosed (S : RandomSurfaceScalingPackage) : Prop :=
  S.scalingLimitExists ∧ S.scalingLimitHolder

theorem random_surface_scaling_closed_from_evidence
    (S : RandomSurfaceScalingPackage) (E : RandomSurfaceScalingEvidence S) :
    RandomSurfaceScalingClosed S := by
  exact And.intro E.scalingLimitExistsClosed E.scalingLimitHolderClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse