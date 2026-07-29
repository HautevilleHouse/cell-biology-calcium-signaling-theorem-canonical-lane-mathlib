import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalObject where
  timeDomain : Type u
  frequencyDomain : Type v
  bandlimited : Prop
  reconstructionCondition : Prop
  conclusion : reconstructionCondition

structure CalciumSignalAdmissibleClass where
  object : CalciumSignalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CalciumSignalAdmissibleClass) : Prop :=
  CalciumSignalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse