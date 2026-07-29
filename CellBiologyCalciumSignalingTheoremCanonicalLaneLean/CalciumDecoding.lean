import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumDecodingPackage {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C} where
  frequencyDecoding : Prop
  amplitudeDecoding : Prop
  spatialDecoding : Prop
  transcriptionalRegulation : Prop
  enzymeActivation : Prop
  cellFateDecisions : Prop

structure CalciumDecodingEvidence {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C}
    (D : CalciumDecodingPackage C P) where
  frequencyDecodingClosed : D.frequencyDecoding
  amplitudeDecodingClosed : D.amplitudeDecoding
  spatialDecodingClosed : D.spatialDecoding
  transcriptionalRegulationClosed : D.transcriptionalRegulation
  enzymeActivationClosed : D.enzymeActivation
  cellFateDecisionsClosed : D.cellFateDecisions

def CalciumDecodingClosed {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C}
    (D : CalciumDecodingPackage C P) : Prop :=
  D.frequencyDecoding ∧ D.amplitudeDecoding ∧ D.spatialDecoding ∧
  D.transcriptionalRegulation ∧ D.enzymeActivation ∧ D.cellFateDecisions

theorem calcium_decoding_closed_from_evidence
    {C : CalciumDynamicsPackage} {P : CalciumSignalingPathwaysPackage C}
    (D : CalciumDecodingPackage C P) (E : CalciumDecodingEvidence D) :
    CalciumDecodingClosed D := by
  exact And.intro E.frequencyDecodingClosed
    (And.intro E.amplitudeDecodingClosed
      (And.intro E.spatialDecodingClosed
        (And.intro E.transcriptionalRegulationClosed
          (And.intro E.enzymeActivationClosed E.cellFateDecisionsClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse