import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure ProjectiveResolutionBoundPackage where
  ring : Type u
  additiveGroup : AddCommGroup ring
  ringStructure : Ring ring
  moduleType : Type v
  projectiveResolutionLength : Nat
  boundedResolution : Prop
  k0Finiteness : Prop
  boundedResolutionTerm : boundedResolution
  k0FinitenessTerm : k0Finiteness

structure ProjectiveResolutionBoundEvidence (P : ProjectiveResolutionBoundPackage) where
  boundedResolutionClosed : P.boundedResolution
  k0FinitenessClosed : P.k0Finiteness

def ProjectiveResolutionBoundClosed (P : ProjectiveResolutionBoundPackage) : Prop :=
  P.boundedResolution ∧ P.k0Finiteness

theorem projective_resolution_bound_closed_from_evidence (P : ProjectiveResolutionBoundPackage) (E : ProjectiveResolutionBoundEvidence P) : ProjectiveResolutionBoundClosed P := by
  exact And.intro E.boundedResolutionClosed E.k0FinitenessClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse