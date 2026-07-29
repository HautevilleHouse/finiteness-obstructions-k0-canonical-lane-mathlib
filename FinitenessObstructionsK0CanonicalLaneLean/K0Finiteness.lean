import FinitenessObstructionsK0CanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure FinitenessPackage (O : K0AdmittedObject) (C : CStarAlgebraPackage O) where
  k0GroupCalculated : Type u
  zeroElement : k0GroupCalculated
  indexMapInjective : Prop
  finitenessObstructionZero : Prop

structure FinitenessEvidence (O : K0AdmittedObject) (C : CStarAlgebraPackage O) (F : FinitenessPackage O C) where
  indexMapInjectiveClosed : F.indexMapInjective
  finitenessObstructionZeroClosed : F.finitenessObstructionZero

def FinitenessClosed (O : K0AdmittedObject) (C : CStarAlgebraPackage O) (F : FinitenessPackage O C) : Prop :=
  F.indexMapInjective ∧ F.finitenessObstructionZero

theorem finiteness_closed_from_evidence (O : K0AdmittedObject) (C : CStarAlgebraPackage O) (F : FinitenessPackage O C) (E : FinitenessEvidence O C F) : FinitenessClosed O C F := by
  exact And.intro E.indexMapInjectiveClosed E.finitenessObstructionZeroClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse