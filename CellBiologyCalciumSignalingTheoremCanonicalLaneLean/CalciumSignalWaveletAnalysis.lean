import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure WaveletAnalysisPackage where
  motherWavelet : Type u
  scaleFunction : Type v
  timeFrequencyLocalization : Prop
  reconstructionFormula : Prop

structure WaveletAnalysisEvidence (W : WaveletAnalysisPackage) where
  timeFrequencyLocalizationClosed : W.timeFrequencyLocalization
  reconstructionFormulaClosed : W.reconstructionFormula

def WaveletAnalysisClosed (W : WaveletAnalysisPackage) : Prop :=
  W.timeFrequencyLocalization ∧ W.reconstructionFormula

theorem wavelet_analysis_closed_from_evidence (W : WaveletAnalysisPackage) (E : WaveletAnalysisEvidence W) :
    WaveletAnalysisClosed W :=
  And.intro E.timeFrequencyLocalizationClosed E.reconstructionFormulaClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse