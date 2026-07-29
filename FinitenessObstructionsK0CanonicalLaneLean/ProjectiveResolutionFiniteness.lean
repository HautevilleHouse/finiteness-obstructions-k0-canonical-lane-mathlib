import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure ProjectiveResolutionFiniteness where
  module : Type
  projectiveResolution : Type
  finiteLength : Prop
  finitelyGeneratedKernel : Prop
  wallCondition : Prop

structure ProjectiveResolutionFinitenessEvidence (P : ProjectiveResolutionFiniteness) where
  finiteLengthClosed : P.finiteLength
  finitelyGeneratedKernelClosed : P.finitelyGeneratedKernel
  wallConditionClosed : P.wallCondition

def ProjectiveResolutionFinitenessClosed (P : ProjectiveResolutionFiniteness) : Prop :=
  P.finiteLength ∧ P.finitelyGeneratedKernel ∧ P.wallCondition

theorem projective_resolution_finiteness_closed_from_evidence
    (P : ProjectiveResolutionFiniteness) (E : ProjectiveResolutionFinitenessEvidence P) :
    ProjectiveResolutionFinitenessClosed P := by
  exact And.intro E.finiteLengthClosed
    (And.intro E.finitelyGeneratedKernelClosed E.wallConditionClosed)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse