import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def gateClosed (A : CalciumSignalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CalciumSignalAdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse