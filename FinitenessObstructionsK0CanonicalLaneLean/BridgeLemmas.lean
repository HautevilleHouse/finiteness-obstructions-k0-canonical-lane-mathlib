import FinitenessObstructionsK0CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  K0WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse