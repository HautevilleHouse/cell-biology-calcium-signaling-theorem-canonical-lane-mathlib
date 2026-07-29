import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalingPathwaysPackage {C : CalciumDynamicsPackage} where
  ip3ReceptorActivation : Prop
  ryanodineReceptorActivation : Prop
  calciumInducedCalciumRelease : Prop
  storeOperatedCalciumEntry : Prop
  mitochondrialCalciumUptake : Prop
  nuclearCalciumSignaling : Prop

structure CalciumSignalingPathwaysEvidence {C : CalciumDynamicsPackage}
    (P : CalciumSignalingPathwaysPackage C) where
  ip3ReceptorActivationClosed : P.ip3ReceptorActivation
  ryanodineReceptorActivationClosed : P.ryanodineReceptorActivation
  calciumInducedCalciumReleaseClosed : P.calciumInducedCalciumRelease
  storeOperatedCalciumEntryClosed : P.storeOperatedCalciumEntry
  mitochondrialCalciumUptakeClosed : P.mitochondrialCalciumUptake
  nuclearCalciumSignalingClosed : P.nuclearCalciumSignaling

def CalciumSignalingPathwaysClosed {C : CalciumDynamicsPackage}
    (P : CalciumSignalingPathwaysPackage C) : Prop :=
  P.ip3ReceptorActivation ∧ P.ryanodineReceptorActivation ∧
  P.calciumInducedCalciumRelease ∧ P.storeOperatedCalciumEntry ∧
  P.mitochondrialCalciumUptake ∧ P.nuclearCalciumSignaling

theorem calcium_signaling_pathways_closed_from_evidence
    {C : CalciumDynamicsPackage} (P : CalciumSignalingPathwaysPackage C)
    (E : CalciumSignalingPathwaysEvidence P) : CalciumSignalingPathwaysClosed P := by
  exact And.intro E.ip3ReceptorActivationClosed
    (And.intro E.ryanodineReceptorActivationClosed
      (And.intro E.calciumInducedCalciumReleaseClosed
        (And.intro E.storeOperatedCalciumEntryClosed
          (And.intro E.mitochondrialCalciumUptakeClosed
            E.nuclearCalciumSignalingClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse