import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumBufferPackage where
  bufferSpecies : Type u
  bindingRate : Type v
  unbindingRate : Type w
  cytosolicCalciumConcentration : Prop
  bufferedCalciumFraction : Prop
  bufferingKinetics : Prop
  saturationLevel : Prop

structure CalciumBufferEvidence (B : CalciumBufferPackage) where
  cytosolicCalciumConcentrationClosed : B.cytosolicCalciumConcentration
  bufferedCalciumFractionClosed : B.bufferedCalciumFraction
  bufferingKineticsClosed : B.bufferingKinetics
  saturationLevelClosed : B.saturationLevel

def CalciumBufferClosed (B : CalciumBufferPackage) : Prop :=
  B.cytosolicCalciumConcentration ∧ B.bufferedCalciumFraction ∧
  B.bufferingKinetics ∧ B.saturationLevel

theorem calcium_buffer_closed_from_evidence (B : CalciumBufferPackage) (E : CalciumBufferEvidence B) :
    CalciumBufferClosed B := by
  exact And.intro E.cytosolicCalciumConcentrationClosed
    (And.intro E.bufferedCalciumFractionClosed
      (And.intro E.bufferingKineticsClosed E.saturationLevelClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse