import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumReleaseUnit where
  openProbability : ℝ
  calciumConductance : ℝ
  activationThreshold : ℝ
  inactivationThreshold : ℝ
  openProbabilityPositive : openProbability > 0
  calciumConductancePositive : calciumConductance > 0

structure CalciumReleaseUnitEvidence (U : CalciumReleaseUnit) where
  openProbabilityPositiveClosed : U.openProbabilityPositive
  calciumConductancePositiveClosed : U.calciumConductancePositive

def CalciumReleaseUnitClosed (U : CalciumReleaseUnit) : Prop :=
  U.openProbabilityPositive ∧ U.calciumConductancePositive

theorem calcium_release_unit_closed_from_evidence (U : CalciumReleaseUnit) (E : CalciumReleaseUnitEvidence U) : CalciumReleaseUnitClosed U :=
  And.intro E.openProbabilityPositiveClosed E.calciumConductancePositiveClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse