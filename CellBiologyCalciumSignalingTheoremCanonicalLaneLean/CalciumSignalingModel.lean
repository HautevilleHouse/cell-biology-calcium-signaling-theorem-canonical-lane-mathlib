import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalingModel where
  cellType : Type
  calciumDynamics : Type
  ip3Pathway : Prop
  ryanodineReceptors : Prop
  buffering : Prop
  pumpLeakMechanisms : Prop

structure CalciumSignalingEvidence (M : CalciumSignalingModel) where
  ip3PathwayClosed : M.ip3Pathway
  ryanodineReceptorsClosed : M.ryanodineReceptors
  bufferingClosed : M.buffering
  pumpLeakMechanismsClosed : M.pumpLeakMechanisms

def CalciumSignalingModelClosed (M : CalciumSignalingModel) : Prop :=
  M.ip3Pathway ∧ M.ryanodineReceptors ∧ M.buffering ∧ M.pumpLeakMechanisms

theorem calcium_signaling_model_closed_from_evidence
    (M : CalciumSignalingModel) (E : CalciumSignalingEvidence M) :
    CalciumSignalingModelClosed M := by
  exact And.intro E.ip3PathwayClosed
    (And.intro E.ryanodineReceptorsClosed
      (And.intro E.bufferingClosed E.pumpLeakMechanismsClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse