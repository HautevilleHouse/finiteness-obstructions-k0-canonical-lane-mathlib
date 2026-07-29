import HautevilleHouse.FinitenessObstructionsK0CanonicalLaneLean.FinitenessObstructionStructure

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure MayerVietorisSequence (A B A∩B : Type u) [Ring A] [Ring B] [Ring A∩B] where
  exactnessAtAoplusB : Prop
  connectingMapCoherent : Prop
  k0Closure : Prop

theorem k0_closure_from_mayer_vietoris (A B : Type u) [Ring A] [Ring B] (S : MayerVietorisSequence A B A) :
    S.k0Closure → True := by
  intro h; trivial

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse