import FinitenessObstructionsK0CanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure K0Space where
  carrier : Type
  topology : TopologicalSpace carrier

structure K0AdmittedObject where
  space : K0Space
  finitenessObstructionVanishes : Prop
  cStarAlgebra : Type
  k0Group : Type
  indexMap : Prop
  conclusion : indexMap

structure K0EndgameState where
  object : K0AdmittedObject

def K0WitnessClosed (O : K0AdmittedObject) : Prop :=
  O.indexMap

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse