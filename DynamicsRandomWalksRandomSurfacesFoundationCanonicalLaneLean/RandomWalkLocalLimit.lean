import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkLocalLimitPackage where
  randomWalkSpace : Type u
  scalingLimit : ℕ → randomWalkSpace → randomWalkSpace
  limitProcess : Type v
  weakConvergence : Prop
  invariancePrinciple : Prop
  holderContinuity : Prop

structure RandomWalkLocalLimitEvidence (L : RandomWalkLocalLimitPackage) where
  weakConvergenceClosed : L.weakConvergence
  invariancePrincipleClosed : L.invariancePrinciple
  holderContinuityClosed : L.holderContinuity

def RandomWalkLocalLimitClosed (L : RandomWalkLocalLimitPackage) : Prop :=
  L.weakConvergence ∧ L.invariancePrinciple ∧ L.holderContinuity

theorem random_walk_local_limit_closed_from_evidence
    (L : RandomWalkLocalLimitPackage) (E : RandomWalkLocalLimitEvidence L) :
    RandomWalkLocalLimitClosed L := by
  exact And.intro E.weakConvergenceClosed
    (And.intro E.invariancePrincipleClosed E.holderContinuityClosed)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse