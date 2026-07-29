import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumDynamics

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure StochasticGatingPackage {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3} where
  markovModel : Prop
  transitionRates : ℝ → ℝ × ℝ
  openStateProbability : ℝ → ℝ
  closedStateProbability : ℝ → ℝ
  stationaryDistribution : Prop

structure StochasticGatingEvidence {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3}
    (S : StochasticGatingPackage C IP3 D) where
  markovModelClosed : S.markovModel
  stationaryDistributionClosed : S.stationaryDistribution

def StochasticGatingClosed {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3}
    (S : StochasticGatingPackage C IP3 D) : Prop :=
  S.markovModel ∧ S.stationaryDistribution

theorem stochastic_gating_closed_from_evidence
    {C : CalciumChannelPackage} {IP3 : IP3ReceptorPackage C}
    {D : CalciumDynamicsPackage C IP3} (S : StochasticGatingPackage C IP3 D)
    (E : StochasticGatingEvidence S) : StochasticGatingClosed S := by
  exact And.intro E.markovModelClosed E.stationaryDistributionClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse