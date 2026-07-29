import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalciumAdmittedObject where
  space : CalciumSpace
  calciumSignalingComplete : Prop
  calciumDynamicsValid : Prop
  cellModel : Type
  cellTopology : TopologicalSpace cellModel
  calciumSignalingHolds : Prop
  conclusion : calciumSignalingHolds

structure CalciumEndgameState where
  object : CalciumAdmittedObject

def CalciumWitnessClosed (O : CalciumAdmittedObject) : Prop :=
  O.calciumSignalingHolds

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse