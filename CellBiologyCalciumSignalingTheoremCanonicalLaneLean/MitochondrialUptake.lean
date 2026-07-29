import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure MitochondrialUptake where
  uptakeRate : ℝ
  capacity : ℝ
  releaseRate : ℝ
  uptakeRatePositive : uptakeRate > 0
  capacityPositive : capacity > 0
  releaseRateNonnegative : releaseRate ≥ 0

structure MitochondrialUptakeEvidence (M : MitochondrialUptake) where
  uptakeRatePositiveClosed : M.uptakeRatePositive
  capacityPositiveClosed : M.capacityPositive
  releaseRateNonnegativeClosed : M.releaseRateNonnegative

def MitochondrialUptakeClosed (M : MitochondrialUptake) : Prop :=
  M.uptakeRatePositive ∧ M.capacityPositive ∧ M.releaseRateNonnegative

theorem mitochondrial_uptake_closed_from_evidence (M : MitochondrialUptake) (E : MitochondrialUptakeEvidence M) : MitochondrialUptakeClosed M :=
  And.intro E.uptakeRatePositiveClosed (And.intro E.capacityPositiveClosed E.releaseRateNonnegativeClosed)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse