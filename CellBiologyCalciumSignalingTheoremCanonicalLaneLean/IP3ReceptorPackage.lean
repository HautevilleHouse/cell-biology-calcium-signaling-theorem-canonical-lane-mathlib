import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure IP3ReceptorPackage where
  ip3Binding : Prop
  calciumActivation : Prop
  calciumInactivation : Prop
  openProbability : Prop
  conductance : Prop

structure IP3ReceptorEvidence (R : IP3ReceptorPackage) where
  ip3BindingClosed : R.ip3Binding
  calciumActivationClosed : R.calciumActivation
  calciumInactivationClosed : R.calciumInactivation
  openProbabilityClosed : R.openProbability
  conductanceClosed : R.conductance

def IP3ReceptorClosed (R : IP3ReceptorPackage) : Prop :=
  R.ip3Binding ∧ R.calciumActivation ∧ R.calciumInactivation ∧
  R.openProbability ∧ R.conductance

theorem ip3_receptor_closed_from_evidence (R : IP3ReceptorPackage) (E : IP3ReceptorEvidence R) :
    IP3ReceptorClosed R := by
  exact And.intro E.ip3BindingClosed
    (And.intro E.calciumActivationClosed
      (And.intro E.calciumInactivationClosed
        (And.intro E.openProbabilityClosed E.conductanceClosed)))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse