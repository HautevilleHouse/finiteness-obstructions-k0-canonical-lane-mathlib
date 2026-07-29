import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0Operator where
  domain : Type u
  codomain : Type v
  indexMap : ℕ → ℕ
  spectralBound : ℝ
  
structure K0OperatorEvidence (T : K0Operator) where
  spectralBoundFinite : T.spectralBound < ∞
  indexMapInjective : Function.Injective T.indexMap
  
def K0OperatorClosed (T : K0Operator) : Prop :=
  T.spectralBound < ∞ ∧ Function.Injective T.indexMap

theorem k0_operator_closed_from_evidence (T : K0Operator) (E : K0OperatorEvidence T) :
    K0OperatorClosed T := by
  exact And.intro E.spectralBoundFinite E.indexMapInjective

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse