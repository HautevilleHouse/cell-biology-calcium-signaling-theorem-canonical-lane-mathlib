import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def gateClosed (A : CalciumSignalingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CalciumSignalingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse