import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0IndexObstructionPackage where
  ring : Type u
  additiveGroup : AddCommGroup ring
  ringStructure : Ring ring
  projectiveModules : Type v
  k0Group : Type w
  indexMap : projectiveModules → k0Group
  finitenessCondition : Prop
  indexVanishesOnFree : Prop
  finitenessConditionTerm : finitenessCondition
  indexVanishesOnFreeTerm : indexVanishesOnFree

structure K0IndexObstructionEvidence (P : K0IndexObstructionPackage) where
  finitenessConditionClosed : P.finitenessCondition
  indexVanishesOnFreeClosed : P.indexVanishesOnFree

def K0IndexObstructionClosed (P : K0IndexObstructionPackage) : Prop :=
  P.finitenessCondition ∧ P.indexVanishesOnFree

theorem k0_index_obstruction_closed_from_evidence (P : K0IndexObstructionPackage) (E : K0IndexObstructionEvidence P) : K0IndexObstructionClosed P := by
  exact And.intro E.finitenessConditionClosed E.indexVanishesOnFreeClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse