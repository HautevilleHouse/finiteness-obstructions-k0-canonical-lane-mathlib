import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0AdmittedObject where
  ring : Type u
  idempotent : ring → Prop
  trace : ring → ℤ
  conclusion : Prop

structure AdmissibleClass where
  object : K0AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse