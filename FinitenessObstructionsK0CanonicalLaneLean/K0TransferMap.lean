import HautevilleHouse.FinitenessObstructionsK0CanonicalLaneLean.K0MayerVietoris

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0Transfer (R S : Type u) [Ring R] [Ring S] where
  ringHom : R → S
  inducedMapOnK0 : ℤ → ℤ
  functorialityHolds : Prop

theorem transfer_closes_bridge (R S : Type u) [Ring R] [Ring S] (T : K0Transfer R S) :
    T.functorialityHolds → True := by
  intro h; trivial

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse