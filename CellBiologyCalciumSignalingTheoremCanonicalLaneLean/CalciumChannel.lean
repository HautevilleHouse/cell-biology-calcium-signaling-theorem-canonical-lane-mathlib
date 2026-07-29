import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumChannelPackage where
  channelName : String
  gatingOpenProbability : ℝ
  conductance : ℝ
  activationMechanism : String
  inactivationMechanism : String
  stochasticGatingFlag : Bool

structure CalciumChannelEvidence (C : CalciumChannelPackage) where
  gatingOpenProbabilityClosed : C.gatingOpenProbability ≥ 0 ∧ C.gatingOpenProbability ≤ 1
  conductanceClosed : C.conductance > 0
  activationMechanismClosed : C.activationMechanism ≠ ""
  inactivationMechanismClosed : C.inactivationMechanism ≠ ""

def CalciumChannelClosed (C : CalciumChannelPackage) : Prop :=
  C.gatingOpenProbability ≥ 0 ∧ C.gatingOpenProbability ≤ 1 ∧
  C.conductance > 0 ∧ C.activationMechanism ≠ "" ∧ C.inactivationMechanism ≠ ""

theorem calcium_channel_closed_from_evidence
    (C : CalciumChannelPackage) (E : CalciumChannelEvidence C) :
    CalciumChannelClosed C := by
  exact And.intro E.gatingOpenProbabilityClosed
    (And.intro E.conductanceClosed
      (And.intro E.activationMechanismClosed E.inactivationMechanismClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse