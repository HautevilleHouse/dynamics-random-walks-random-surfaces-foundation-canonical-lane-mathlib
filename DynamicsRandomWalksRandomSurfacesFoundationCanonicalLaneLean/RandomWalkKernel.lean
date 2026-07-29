import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean

structure RandomWalkKernel (S : Type u) where
  stateSpace : Set S
  transitionProbability : S → S → ℝ
  markovProperty : ∀ s, ∑ t, transitionProbability s t = 1
  irreducibility : ∀ s t, ∃ n, transitionProbability^[n] s t > 0

structure RandomWalkEvidence (S : Type u) (K : RandomWalkKernel S) where
  markovPropertyClosed : K.markovProperty
  irreducibilityClosed : K.irreducibility

def RandomWalkKernelClosed (S : Type u) (K : RandomWalkKernel S) : Prop :=
  K.markovProperty ∧ K.irreducibility

theorem random_walk_kernel_closed_from_evidence (S : Type u) (K : RandomWalkKernel S) (E : RandomWalkEvidence S K) : RandomWalkKernelClosed S K := by
  exact And.intro E.markovPropertyClosed E.irreducibilityClosed

end DynamicsRandomWalksRandomSurfacesFoundationCanonicalLaneLean
end HautevilleHouse