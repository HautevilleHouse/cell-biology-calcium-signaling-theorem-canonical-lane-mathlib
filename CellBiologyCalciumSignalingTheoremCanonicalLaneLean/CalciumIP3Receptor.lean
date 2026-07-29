import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumIP3Receptor where
  ip3Binding : Prop
  calciumActivation : Prop
  calciumInhibition : Prop
  openState : Prop
  closedState : Prop
  bellShapeClosed : Prop

structure CalciumIP3ReceptorEvidence (C : CalciumIP3Receptor) where
  ip3BindingClosed : C.ip3Binding
  calciumActivationClosed : C.calciumActivation
  calciumInhibitionClosed : C.calciumInhibition
  openStateClosed : C.openState
  closedStateClosed : C.closedState
  bellShapeClosedClosed : C.bellShapeClosed

def CalciumIP3ReceptorClosed (C : CalciumIP3Receptor) : Prop :=
  C.ip3Binding ∧ C.calciumActivation ∧ C.calciumInhibition ∧
  C.openState ∧ C.closedState ∧ C.bellShapeClosed

theorem calcium_ip3_receptor_closed_from_evidence (C : CalciumIP3Receptor) (E : CalciumIP3ReceptorEvidence C) :
    CalciumIP3ReceptorClosed C := by
  exact And.intro E.ip3BindingClosed
    (And.intro E.calciumActivationClosed
      (And.intro E.calciumInhibitionClosed
        (And.intro E.openStateClosed
          (And.intro E.closedStateClosed E.bellShapeClosedClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse