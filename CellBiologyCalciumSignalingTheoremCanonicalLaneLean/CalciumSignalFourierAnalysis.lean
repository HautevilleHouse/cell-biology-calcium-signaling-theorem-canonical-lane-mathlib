import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure FourierAnalysisPackage where
  signalTransform : Type u
  frequencyRepresentation : Type v
  bandlimitedSupport : Prop
  inversionFormula : Prop

structure FourierAnalysisEvidence (P : FourierAnalysisPackage) where
  bandlimitedSupportClosed : P.bandlimitedSupport
  inversionFormulaClosed : P.inversionFormula

def FourierAnalysisClosed (P : FourierAnalysisPackage) : Prop :=
  P.bandlimitedSupport ∧ P.inversionFormula

theorem fourier_analysis_closed_from_evidence (P : FourierAnalysisPackage) (E : FourierAnalysisEvidence P) :
    FourierAnalysisClosed P :=
  And.intro E.bandlimitedSupportClosed E.inversionFormulaClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse