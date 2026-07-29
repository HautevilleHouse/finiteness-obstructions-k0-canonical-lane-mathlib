import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0IndexTheorem where
  sequence : K0Sequence
  operator : K0Operator
  indexMatch : Prop
  signatureCompatibility : Prop
  
structure K0IndexTheoremEvidence (I : K0IndexTheorem) where
  indexMatchClosed : I.indexMatch
  signatureCompatibilityClosed : I.signatureCompatibility
  sequenceClosed : K0SequenceClosed I.sequence
  operatorClosed : K0OperatorClosed I.operator

def K0IndexTheoremClosed (I : K0IndexTheorem) : Prop :=
  I.indexMatch ∧ I.signatureCompatibility

theorem k0_index_theorem_closed_from_evidence (I : K0IndexTheorem) (E : K0IndexTheoremEvidence I) :
    K0IndexTheoremClosed I := by
  exact And.intro E.indexMatchClosed E.signatureCompatibilityClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse