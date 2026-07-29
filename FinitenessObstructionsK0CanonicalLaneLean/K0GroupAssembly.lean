import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0GroupAssembly where
  ring : Type
  projectiveModules : Type
  k0Group : Type
  splitExactSequence : Prop
  rankMapDefined : Prop
  finitenessObstructionMaps : Prop

structure K0GroupAssemblyEvidence (K : K0GroupAssembly) where
  splitExactSequenceClosed : K.splitExactSequence
  rankMapDefinedClosed : K.rankMapDefined
  finitenessObstructionMapsClosed : K.finitenessObstructionMaps

def K0GroupAssemblyClosed (K : K0GroupAssembly) : Prop :=
  K.splitExactSequence ∧ K.rankMapDefined ∧ K.finitenessObstructionMaps

theorem k0_group_assembly_closed_from_evidence
    (K : K0GroupAssembly) (E : K0GroupAssemblyEvidence K) :
    K0GroupAssemblyClosed K := by
  exact And.intro E.splitExactSequenceClosed
    (And.intro E.rankMapDefinedClosed E.finitenessObstructionMapsClosed)

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse