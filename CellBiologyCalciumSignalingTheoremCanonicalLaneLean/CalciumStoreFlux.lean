import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumStoreFluxPackage {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} where
  SERCAuptake : Prop
  ERleak : Prop
  IP3inducedRelease : Prop
  ryanodineReceptorContribution : Prop
  storeCapacityConstraint : Prop

structure CalciumStoreFluxEvidence {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} (S : CalciumStoreFluxPackage G F R) where
  SERCAuptakeClosed : S.SERCAuptake
  ERleakClosed : S.ERleak
  IP3inducedReleaseClosed : S.IP3inducedRelease
  ryanodineReceptorContributionClosed : S.ryanodineReceptorContribution
  storeCapacityConstraintClosed : S.storeCapacityConstraint

def CalciumStoreFluxClosed {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} (S : CalciumStoreFluxPackage G F R) : Prop :=
  S.SERCAuptake ∧ S.ERleak ∧ S.IP3inducedRelease ∧ S.ryanodineReceptorContribution ∧ S.storeCapacityConstraint

theorem calcium_store_flux_closed_from_evidence
    {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F}
    (S : CalciumStoreFluxPackage G F R) (E : CalciumStoreFluxEvidence S) :
    CalciumStoreFluxClosed S := by
  exact And.intro E.SERCAuptakeClosed
    (And.intro E.ERleakClosed
      (And.intro E.IP3inducedReleaseClosed
        (And.intro E.ryanodineReceptorContributionClosed E.storeCapacityConstraintClosed)))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse