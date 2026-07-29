import FinitenessObstructionsK0CanonicalLaneLean.IndexPackage

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure CStarAlgebraPackage (O : K0AdmittedObject) where
  algebra : Type u
  norm : algebra → ℝ
  involution : algebra → algebra
  cStarIdentity : Prop
  stableRankOne : Prop
  k0Vanishes : O.finitenessObstructionVanishes

structure CStarAlgebraEvidence (O : K0AdmittedObject) (C : CStarAlgebraPackage O) where
  cStarIdentityClosed : C.cStarIdentity
  stableRankOneClosed : C.stableRankOne
  k0VanishesClosed : C.k0Vanishes

def CStarAlgebraClosed (O : K0AdmittedObject) (C : CStarAlgebraPackage O) : Prop :=
  C.cStarIdentity ∧ C.stableRankOne

theorem cstar_algebra_closed_from_evidence (O : K0AdmittedObject) (C : CStarAlgebraPackage O) (E : CStarAlgebraEvidence O C) : CStarAlgebraClosed O C := by
  exact And.intro E.cStarIdentityClosed E.stableRankOneClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse