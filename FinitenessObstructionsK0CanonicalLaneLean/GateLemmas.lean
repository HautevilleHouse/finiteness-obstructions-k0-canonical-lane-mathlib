import FinitenessObstructionsK0CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse