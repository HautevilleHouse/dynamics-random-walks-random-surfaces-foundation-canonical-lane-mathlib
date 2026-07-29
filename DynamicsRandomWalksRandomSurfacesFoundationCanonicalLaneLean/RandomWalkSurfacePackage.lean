import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkSurfacePackage where
  surfaceSpace : Type u
  probabilityMeasure : surfaceSpace → Prop
  stepDistribution : surfaceSpace → surfaceSpace → Prop
  transitionKernel : surfaceSpace → surfaceSpace → Prop
  invariantMeasure : surfaceSpace → Prop

structure RandomWalkSurfaceEvidence (R : RandomWalkSurfacePackage) where
  surfaceSpaceClosed : R.surfaceSpace = R.surfaceSpace
  probabilityMeasureClosed : R.probabilityMeasure = R.probabilityMeasure
  stepDistributionClosed : R.stepDistribution = R.stepDistribution
  transitionKernelClosed : R.transitionKernel = R.transitionKernel
  invariantMeasureClosed : R.invariantMeasure = R.invariantMeasure

def RandomWalkSurfaceClosed (R : RandomWalkSurfacePackage) : Prop :=
  R.surfaceSpace = R.surfaceSpace ∧ R.probabilityMeasure = R.probabilityMeasure ∧
  R.stepDistribution = R.stepDistribution ∧ R.transitionKernel = R.transitionKernel ∧
  R.invariantMeasure = R.invariantMeasure

theorem random_walk_surface_closed_from_evidence (R : RandomWalkSurfacePackage) (E : RandomWalkSurfaceEvidence R) :
    RandomWalkSurfaceClosed R := by
  exact And.intro E.surfaceSpaceClosed
    (And.intro E.probabilityMeasureClosed
      (And.intro E.stepDistributionClosed
        (And.intro E.transitionKernelClosed E.invariantMeasureClosed)))

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse