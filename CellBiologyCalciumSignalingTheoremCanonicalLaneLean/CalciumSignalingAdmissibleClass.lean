import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalingAdmittedObject where
  cellType : Type
  receptorModel : Type
  oscillationObserved : Prop
  wavePdeConsistent : Prop
  conclusion : oscillationObserved ∧ wavePdeConsistent

structure CalciumSignalingAdmissibleClass where
  object : CalciumSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def calciumSignalingAdmittedClosure (A : CalciumSignalingAdmissibleClass) : Prop :=
  let O := A.object
  O.oscillationObserved ∧ O.wavePdeConsistent ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse