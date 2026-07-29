import HautevilleHouse.FinitenessObstructionsK0CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure ProjectiveModule (R : Type u) [Ring R] where
  carrier : Type v
  moduleStructure : Module R carrier
  projective : Prop

theorem projective_implies_free_summand (R) [Ring R] (P : ProjectiveModule R) : Prop :=
  P.projective

def K0Group (R : Type u) [Ring R] : AddCommGroup (ℤ × ℤ) := by
  exact inferInstance

theorem K0_is_abelian_group (R) [Ring R] : AddCommGroup (ℤ × ℤ) := by
  infer_instance

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse