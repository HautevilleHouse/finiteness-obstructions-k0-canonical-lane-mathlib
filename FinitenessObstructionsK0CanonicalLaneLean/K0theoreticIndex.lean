import FinitenessObstructionsK0CanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure IndexPackage (O : K0AdmittedObject) where
  projectionMap : Prop
  indexPairing : Prop
  finitenessObstructionZero : Prop
  indexMapDefined : O.indexMap

structure IndexEvidence (O : K0AdmittedObject) (I : IndexPackage O) where
  projectionMapClosed : I.projectionMap
  indexPairingClosed : I.indexPairing
  finitenessObstructionZeroClosed : I.finitenessObstructionZero

def IndexClosed (O : K0AdmittedObject) (I : IndexPackage O) : Prop :=
  I.projectionMap ∧ I.indexPairing ∧ I.finitenessObstructionZero

theorem index_closed_from_evidence (O : K0AdmittedObject) (I : IndexPackage O) (E : IndexEvidence O I) : IndexClosed O I := by
  exact And.intro E.projectionMapClosed (And.intro E.indexPairingClosed E.finitenessObstructionZeroClosed)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse