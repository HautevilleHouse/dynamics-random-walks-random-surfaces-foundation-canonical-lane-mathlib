import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkSurfaceAdmittedObject where
  surface : Type u
  topology : TopologicalSpace surface
  randomWalkMeasure : MeasureTheory.Measure (Path surface)
  surfaceRandomWalkCoupling : Prop
  surfaceCompact : Prop
  mixingBound : ℝ
  conclusion : mixingBound > 0

structure AdmissibleClass where
  object : RandomWalkSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RandomWalkSurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def RandomWalkSurfaceWitnessClosed (O : RandomWalkSurfaceAdmittedObject) : Prop :=
  O.conclusion

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse