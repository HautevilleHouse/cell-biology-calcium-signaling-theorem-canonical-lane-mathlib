import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure BufferKinetics where
  bufferConcentration : ℝ
  bindingRate : ℝ
  unbindingRate : ℝ
  dissociationConstant : ℝ
  bufferConcentrationPositive : bufferConcentration > 0
  bindingRatePositive : bindingRate > 0
  unbindingRatePositive : unbindingRate > 0
  dissociationConstantPositive : dissociationConstant > 0

structure BufferKineticsEvidence (B : BufferKinetics) where
  bufferConcentrationPositiveClosed : B.bufferConcentrationPositive
  bindingRatePositiveClosed : B.bindingRatePositive
  unbindingRatePositiveClosed : B.unbindingRatePositive
  dissociationConstantPositiveClosed : B.dissociationConstantPositive

def BufferKineticsClosed (B : BufferKinetics) : Prop :=
  B.bufferConcentrationPositive ∧ B.bindingRatePositive ∧
  B.unbindingRatePositive ∧ B.dissociationConstantPositive

theorem buffer_kinetics_closed_from_evidence (B : BufferKinetics) (E : BufferKineticsEvidence B) : BufferKineticsClosed B :=
  And.intro E.bufferConcentrationPositiveClosed
    (And.intro E.bindingRatePositiveClosed
      (And.intro E.unbindingRatePositiveClosed E.dissociationConstantPositiveClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse