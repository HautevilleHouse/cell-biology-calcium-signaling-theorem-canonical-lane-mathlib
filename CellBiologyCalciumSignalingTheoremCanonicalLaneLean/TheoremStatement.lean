import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalciumSignalingAdmittedObject where
  space : CalciumSignalingSpace
  calciumOscillationDynamics : Prop
  ip3ReceptorCoupling : Prop
  receptorModel : Type
  signalingModel : Prop
  conclusion : signalingModel

structure CalciumSignalingEndgameState where
  object : CalciumSignalingAdmittedObject

def CalciumSignalingWitnessClosed (O : CalciumSignalingAdmittedObject) : Prop :=
  O.signalingModel

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse