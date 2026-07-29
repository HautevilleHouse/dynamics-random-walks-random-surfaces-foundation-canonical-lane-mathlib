import DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean.RandomWalkMixing

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceScalingLimitPackage {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    {M : RandomWalkMixingPackage C} where
  scalingExponent : ℝ
  limitProcess : Type u
  weakConvergence : Prop
  gaussianFreeFieldLimit : Prop

structure RandomSurfaceScalingLimitEvidence {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    {M : RandomWalkMixingPackage C} (S : RandomSurfaceScalingLimitPackage M) where
  weakConvergenceClosed : S.weakConvergence
  gaussianFreeFieldLimitClosed : S.gaussianFreeFieldLimit

def RandomSurfaceScalingLimitClosed {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    {M : RandomWalkMixingPackage C} (S : RandomSurfaceScalingLimitPackage M) : Prop :=
  S.weakConvergence ∧ S.gaussianFreeFieldLimit

theorem random_surface_scaling_limit_closed_from_evidence
    {A : AdmissibleClass} {C : RandomWalkSurfaceCouplingPackage A}
    {M : RandomWalkMixingPackage C} (S : RandomSurfaceScalingLimitPackage M)
    (E : RandomSurfaceScalingLimitEvidence S) : RandomSurfaceScalingLimitClosed S := by
  exact And.intro E.weakConvergenceClosed E.gaussianFreeFieldLimitClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse