import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure ScalingLimitPackage where
  scalingLimit : Prop
  universalityClass : Prop
  criticalExponent : Prop
  renormalizationGroup : Prop
  scalingLimitClosed : scalingLimit
  universalityClassClosed : universalityClass
  criticalExponentClosed : criticalExponent
  renormalizationGroupClosed : renormalizationGroup

def ScalingLimitClosed (S : ScalingLimitPackage) : Prop :=
  S.scalingLimit ∧ S.universalityClass ∧ S.criticalExponent ∧ S.renormalizationGroup

theorem scaling_limit_closed_from_evidence (S : ScalingLimitPackage) : ScalingLimitClosed S := by
  exact And.intro S.scalingLimitClosed
    (And.intro S.universalityClassClosed
      (And.intro S.criticalExponentClosed S.renormalizationGroupClosed))

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse