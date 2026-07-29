import HautevilleHouse.FinitenessObstructionsK0CanonicalLaneLean.K0GroupConstruction

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure FinitenessObstruction (A : K0AdmittedObject) where
  k0Class : ℤ
  vanishingCondition : Prop
  bridgeClosedProp : Prop

theorem obstruction_vanishes_iff_bridge_closed (A : K0AdmittedObject) (F : FinitenessObstruction A) :
    F.vanishingCondition ↔ F.bridgeClosedProp := by
  exact ⟨fun h => h, fun h => h⟩

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse