import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomSurfaceDiscretizationPackage (A : AdmissibleClass) where
  triangulation : Type u
  edgeSet : Set (triangulation × triangulation)
  faceSet : Set (List triangulation)
  edgeWeight : (triangulation × triangulation) → ℝ
  planarEmbedding : Prop

structure RandomSurfaceDiscretizationEvidence {A : AdmissibleClass} (S : RandomSurfaceDiscretizationPackage A) where
  planarEmbeddingClosed : S.planarEmbedding
  edgeWeightNonnegative : ∀ e, S.edgeWeight e ≥ 0

def RandomSurfaceDiscretizationClosed {A : AdmissibleClass} (S : RandomSurfaceDiscretizationPackage A) : Prop :=
  S.planarEmbedding ∧ (∀ e, S.edgeWeight e ≥ 0)

theorem random_surface_discretization_closed_from_evidence
    {A : AdmissibleClass} (S : RandomSurfaceDiscretizationPackage A) (E : RandomSurfaceDiscretizationEvidence S) :
    RandomSurfaceDiscretizationClosed S := by
  exact And.intro E.planarEmbeddingClosed E.edgeWeightNonnegative

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse