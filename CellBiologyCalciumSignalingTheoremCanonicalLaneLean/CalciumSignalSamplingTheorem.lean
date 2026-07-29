import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure SamplingTheoremPackage where
  nyquistRate : ℝ
  bandLimitedSignal : CalciumSignalObject
  samplePoints : Type u
  reconstructionProcedure : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  bandLimitedSignalClosed : S.bandLimitedSignal.bandlimited
  reconstructionProcedureClosed : S.reconstructionProcedure

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.bandLimitedSignal.bandlimited ∧ S.reconstructionProcedure

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage) (E : SamplingTheoremEvidence S) :
    SamplingTheoremClosed S :=
  And.intro E.bandLimitedSignalClosed E.reconstructionProcedureClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse