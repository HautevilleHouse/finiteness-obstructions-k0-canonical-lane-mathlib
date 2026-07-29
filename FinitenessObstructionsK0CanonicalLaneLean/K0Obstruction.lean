import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0Obstruction where
  totalSpace : Type u
  baseSpace : Type v
  indexClass : Type w
  vanishingCondition : Prop
  nontrivialElement : Prop
  
structure K0ObstructionEvidence (O : K0Obstruction) where
  vanishingConditionClosed : O.vanishingCondition
  nontrivialElementClosed : O.nontrivialElement
  
def K0ObstructionClosed (O : K0Obstruction) : Prop :=
  O.vanishingCondition ∧ O.nontrivialElement

theorem k0_obstruction_closed_from_evidence (O : K0Obstruction) (E : K0ObstructionEvidence O) :
    K0ObstructionClosed O := by
  exact And.intro E.vanishingConditionClosed E.nontrivialElementClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse