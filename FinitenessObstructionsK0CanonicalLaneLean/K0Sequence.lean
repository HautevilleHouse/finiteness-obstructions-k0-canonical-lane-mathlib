import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0Sequence where
  fiberBundle : Type u
  baseManifold : Type v
  projectionMap : fiberBundle → baseManifold
  verticalTangentBundle : Type w
  indexSet : ℕ
  
structure K0SequenceEvidence (S : K0Sequence) where
  indexSetPos : S.indexSet ≥ 1
  k0Derived : Prop
  remainderBounded : Prop

def K0SequenceClosed (S : K0Sequence) : Prop :=
  S.indexSet ≥ 1

theorem k0_sequence_closed_from_evidence (S : K0Sequence) (E : K0SequenceEvidence S) :
    K0SequenceClosed S := by
  exact E.indexSetPos

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse