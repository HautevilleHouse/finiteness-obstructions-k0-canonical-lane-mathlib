import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure WallFinitenessCondition where
  object : FinitenessObstructionObject
  projectiveResolutionFinite : Prop
  finitenessDimensionBounded : Prop
  homotopyFiniteness : Prop

structure WallFinitenessConditionEvidence (W : WallFinitenessCondition) where
  projectiveResolutionFiniteClosed : W.projectiveResolutionFinite
  finitenessDimensionBoundedClosed : W.finitenessDimensionBounded
  homotopyFinitenessClosed : W.homotopyFiniteness

def WallFinitenessConditionClosed (W : WallFinitenessCondition) : Prop :=
  W.projectiveResolutionFinite ∧ W.finitenessDimensionBounded ∧ W.homotopyFiniteness

theorem wall_finiteness_condition_closed_from_evidence
    (W : WallFinitenessCondition) (E : WallFinitenessConditionEvidence W) :
    WallFinitenessConditionClosed W := by
  exact And.intro E.projectiveResolutionFiniteClosed
    (And.intro E.finitenessDimensionBoundedClosed E.homotopyFinitenessClosed)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse