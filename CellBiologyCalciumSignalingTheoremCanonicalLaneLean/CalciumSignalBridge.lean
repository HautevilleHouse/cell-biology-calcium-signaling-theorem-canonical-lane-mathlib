import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def CalciumSignalWitnessClosed (O : CalciumSignalObject) : Prop :=
  O.reconstructionCondition

structure CalciumSignalBridgePackage where
  object : CalciumSignalObject
  bridgeClosed : CalciumSignalWitnessClosed object

def bridgeClosed (A : CalciumSignalAdmissibleClass) : Prop :=
  CalciumSignalWitnessClosed A.object

theorem bridge_from_admissible_class (A : CalciumSignalAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse