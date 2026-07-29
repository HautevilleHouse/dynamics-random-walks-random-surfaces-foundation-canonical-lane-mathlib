import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure ConvergencePackage (A : AdmissibleClass) where
  scalingLimit : Type u
  localLimit : Type v
  scalingExponent : ℝ
  convergenceRate : ℝ

structure ConvergenceEvidence {A : AdmissibleClass} (C : ConvergencePackage A) where
  convergenceRatePositive : C.convergenceRate > 0
  scalingExponentNonzero : C.scalingExponent ≠ 0

def ConvergenceClosed {A : AdmissibleClass} (C : ConvergencePackage A) : Prop :=
  C.convergenceRate > 0 ∧ C.scalingExponent ≠ 0

theorem convergence_closed_from_evidence
    {A : AdmissibleClass} (C : ConvergencePackage A) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.convergenceRatePositive E.scalingExponentNonzero

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse