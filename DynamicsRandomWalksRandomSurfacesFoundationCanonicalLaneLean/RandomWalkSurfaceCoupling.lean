import DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkSurfaceCouplingPackage (A : AdmissibleClass) where
  pathSpace : Type u
  measureCoupling : Prop
  mixingProperty : Prop
  surfaceRandomWalkMeasure : A.object.randomWalkMeasure
  couplingExists : Prop

structure RandomWalkSurfaceCouplingEvidence {A : AdmissibleClass} (C : RandomWalkSurfaceCouplingPackage A) where
  measureCouplingClosed : C.measureCoupling
  mixingPropertyClosed : C.mixingProperty
  couplingExistsClosed : C.couplingExists

def RandomWalkSurfaceCouplingClosed {A : AdmissibleClass} (C : RandomWalkSurfaceCouplingPackage A) : Prop :=
  C.measureCoupling ∧ C.mixingProperty ∧ C.couplingExists

theorem random_walk_surface_coupling_closed_from_evidence
    {A : AdmissibleClass} (C : RandomWalkSurfaceCouplingPackage A)
    (E : RandomWalkSurfaceCouplingEvidence C) : RandomWalkSurfaceCouplingClosed C := by
  exact And.intro E.measureCouplingClosed (And.intro E.mixingPropertyClosed E.couplingExistsClosed)

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse