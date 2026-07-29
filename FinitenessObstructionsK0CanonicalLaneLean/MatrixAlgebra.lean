import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure MatrixAlgebra where
  n : ℕ
  ring : Type u
  trace : ring → ℤ
  idempotentCompletion : Prop
  finiteGeneration : Prop

def matrixAlgebraClosed (M : MatrixAlgebra) : Prop :=
  M.finiteGeneration ∧ M.idempotentCompletion

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse