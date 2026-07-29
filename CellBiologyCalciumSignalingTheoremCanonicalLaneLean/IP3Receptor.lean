import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumChannel

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure IP3ReceptorPackage (C : CalciumChannelPackage) where
  IP3Affinity : ℝ
  calciumActivation : ℝ
  calciumInhibition : ℝ
  numberSubunits : ℕ
  steadyStateOpenProbability : ℝ
  deYoungKeizerModel : Prop

structure IP3ReceptorEvidence {C : CalciumChannelPackage}
    (IP3 : IP3ReceptorPackage C) where
  IP3AffinityClosed : IP3.IP3Affinity > 0
  calciumActivationClosed : IP3.calciumActivation > 0
  calciumInhibitionClosed : IP3.calciumInhibition > 0
  numberSubunitsClosed : IP3.numberSubunits ≥ 3
  steadyStateOpenProbabilityClosed : IP3.steadyStateOpenProbability ≥ 0 ∧ IP3.steadyStateOpenProbability ≤ 1
  deYoungKeizerModelClosed : IP3.deYoungKeizerModel

def IP3ReceptorClosed {C : CalciumChannelPackage}
    (IP3 : IP3ReceptorPackage C) : Prop :=
  IP3.IP3Affinity > 0 ∧ IP3.calciumActivation > 0 ∧ IP3.calciumInhibition > 0 ∧
  IP3.numberSubunits ≥ 3 ∧ IP3.steadyStateOpenProbability ≥ 0 ∧ IP3.steadyStateOpenProbability ≤ 1 ∧
  IP3.deYoungKeizerModel

theorem ip3_receptor_closed_from_evidence
    {C : CalciumChannelPackage} (IP3 : IP3ReceptorPackage C)
    (E : IP3ReceptorEvidence IP3) : IP3ReceptorClosed IP3 := by
  exact And.intro E.IP3AffinityClosed
    (And.intro E.calciumActivationClosed
      (And.intro E.calciumInhibitionClosed
        (And.intro E.numberSubunitsClosed
          (And.intro E.steadyStateOpenProbabilityClosed E.deYoungKeizerModelClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse