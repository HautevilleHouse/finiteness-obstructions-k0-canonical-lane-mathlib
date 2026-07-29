import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinitenessObstructionsK0CanonicalLaneLean

structure K0Surgery where
  oldManifold : Type u
  newManifold : Type v
  cuttingCycle : Type w
  glueingData : Type x
  k0Preservation : Prop
  
structure K0SurgeryEvidence (S : K0Surgery) where
  k0PreservationClosed : S.k0Preservation
  cuttingCycleNonsingular : Prop
  glueingDataWellDefined : Prop
  cuttingCycleNonsingularTerm : cuttingCycleNonsingular
  glueingDataWellDefinedTerm : glueingDataWellDefined
  
def K0SurgeryClosed (S : K0Surgery) : Prop :=
  S.k0Preservation

theorem k0_surgery_closed_from_evidence (S : K0Surgery) (E : K0SurgeryEvidence S) :
    K0SurgeryClosed S := by
  exact E.k0PreservationClosed

end FinitenessObstructionsK0CanonicalLaneLean
end HautevilleHouse