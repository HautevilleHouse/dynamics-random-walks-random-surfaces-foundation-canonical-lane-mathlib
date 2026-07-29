import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkErgodicityPackage where
  markovKernel : Type u → Type u → ℝ
  stationaryMeasure : Type u → ℝ
  ergodicityProperty : Prop
  mixingRate : ℝ
  centralLimitTheorem : Prop

structure RandomWalkErgodicityEvidence (E : RandomWalkErgodicityPackage) where
  ergodicityPropertyClosed : E.ergodicityProperty
  centralLimitTheoremClosed : E.centralLimitTheorem

def RandomWalkErgodicityClosed (E : RandomWalkErgodicityPackage) : Prop :=
  E.ergodicityProperty ∧ E.centralLimitTheorem

theorem random_walk_ergodicity_closed_from_evidence
    (E : RandomWalkErgodicityPackage) (Ev : RandomWalkErgodicityEvidence E) :
    RandomWalkErgodicityClosed E := by
  exact And.intro Ev.ergodicityPropertyClosed Ev.centralLimitTheoremClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse