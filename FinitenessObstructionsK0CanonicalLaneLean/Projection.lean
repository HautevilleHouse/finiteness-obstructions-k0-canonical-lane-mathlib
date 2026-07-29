import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure K0EndgameState where
  object : K0AdmittedObject

def projection : Projection K0EndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem projection_idempotent (x : K0EndgameState) :
    projection.toFun (projection.toFun x) = projection.toFun x := by
  exact projection.idempotent x

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse