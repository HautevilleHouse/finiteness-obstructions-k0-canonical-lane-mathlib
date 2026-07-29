import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure FinitenessObstructionObject where
  space : Type
  fundamentalGroupFinitelyGenerated : Prop
  wallFinitenessCondition : Prop
  k0Invariant : Prop
  conclusion : wallFinitenessCondition ∧ k0Invariant

structure FinitenessObstructionState where
  object : FinitenessObstructionObject

def FinitenessWitnessClosed (O : FinitenessObstructionObject) : Prop :=
  O.wallFinitenessCondition ∧ O.k0Invariant

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse