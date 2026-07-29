import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure ObstructionClass where
  ring : Type u
  traceCondition : Prop
  finitenessObstruction : Prop

def obstructionClosed (O : ObstructionClass) : Prop :=
  O.traceCondition ∧ O.finitenessObstruction

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse