import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure ChainComplexFiniteness where
  chainComplex : Type
  finiteLength : Nat
  homologyFinitelyGenerated : Prop
  projectiveResolution : Prop
  k0Class : Prop

structure ChainComplexFinitenessEvidence (C : ChainComplexFiniteness) where
  finiteLengthClosed : C.finiteLength
  homologyFinitelyGeneratedClosed : C.homologyFinitelyGenerated
  projectiveResolutionClosed : C.projectiveResolution
  k0ClassClosed : C.k0Class

def ChainComplexFinitenessClosed (C : ChainComplexFiniteness) : Prop :=
  C.homologyFinitelyGenerated ∧ C.projectiveResolution ∧ C.k0Class

theorem chain_complex_finiteness_closed_from_evidence
    (C : ChainComplexFiniteness) (E : ChainComplexFinitenessEvidence C) :
    ChainComplexFinitenessClosed C := by
  exact And.intro E.homologyFinitelyGeneratedClosed
    (And.intro E.projectiveResolutionClosed E.k0ClassClosed)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse