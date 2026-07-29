import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

def ConstrainedK0Closure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem k0_endgame (A : AdmissibleClass) : ConstrainedK0Closure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse