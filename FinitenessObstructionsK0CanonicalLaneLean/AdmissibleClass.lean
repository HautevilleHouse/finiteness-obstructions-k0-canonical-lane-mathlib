import FinitenessObstructionsK0CanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure AdmissibleClass where
  object : K0AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  K0WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse