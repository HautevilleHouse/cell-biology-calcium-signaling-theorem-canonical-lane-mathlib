import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumOscillationPackage where
  oscillationFrequency : Prop
  amplitudeModulation : Prop
  frequencyEncoding : Prop
  CICRInput : Prop
  ip3Dependence : Prop

structure CalciumOscillationEvidence (P : CalciumOscillationPackage) where
  oscillationFrequencyClosed : P.oscillationFrequency
  amplitudeModulationClosed : P.amplitudeModulation
  frequencyEncodingClosed : P.frequencyEncoding
  CICRInputClosed : P.CICRInput
  ip3DependenceClosed : P.ip3Dependence

def CalciumOscillationClosed (P : CalciumOscillationPackage) : Prop :=
  P.oscillationFrequency ∧ P.amplitudeModulation ∧ P.frequencyEncoding ∧
  P.CICRInput ∧ P.ip3Dependence

theorem calcium_oscillation_closed_from_evidence
    (P : CalciumOscillationPackage) (E : CalciumOscillationEvidence P) :
    CalciumOscillationClosed P := by
  exact And.intro E.oscillationFrequencyClosed
    (And.intro E.amplitudeModulationClosed
      (And.intro E.frequencyEncodingClosed
        (And.intro E.CICRInputClosed E.ip3DependenceClosed)))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse