import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumOscillationPacket where
  ip3Sensitivity : Prop
  calciumCooperativity : Prop
  periodicity : Prop
  amplitudeModulation : Prop
  frequencyEncoding : Prop
  termination : Prop

structure CalciumOscillationEvidence (O : CalciumOscillationPacket) where
  ip3SensitivityClosed : O.ip3Sensitivity
  calciumCooperativityClosed : O.calciumCooperativity
  periodicityClosed : O.periodicity
  amplitudeModulationClosed : O.amplitudeModulation
  frequencyEncodingClosed : O.frequencyEncoding
  terminationClosed : O.termination

def CalciumOscillationClosed (O : CalciumOscillationPacket) : Prop :=
  O.ip3Sensitivity ∧ O.calciumCooperativity ∧ O.periodicity ∧
  O.amplitudeModulation ∧ O.frequencyEncoding ∧ O.termination

theorem calcium_oscillation_closed_from_evidence (O : CalciumOscillationPacket) (E : CalciumOscillationEvidence O) :
    CalciumOscillationClosed O := by
  exact And.intro E.ip3SensitivityClosed
    (And.intro E.calciumCooperativityClosed
      (And.intro E.periodicityClosed
        (And.intro E.amplitudeModulationClosed
          (And.intro E.frequencyEncodingClosed E.terminationClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse