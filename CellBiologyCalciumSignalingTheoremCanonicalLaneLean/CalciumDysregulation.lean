import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumDysregulationPackage {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C}
    {D : CalciumDecodingPackage C P} where
  erStress : Prop
  mitochondrialDysfunction : Prop
  oxidativeStress : Prop
  apoptosisInduction : Prop
  neurodegenerativeDisease : Prop
  cardiacArrhythmia : Prop

structure CalciumDysregulationEvidence {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C}
    {D : CalciumDecodingPackage C P}
    (R : CalciumDysregulationPackage C P D) where
  erStressClosed : R.erStress
  mitochondrialDysfunctionClosed : R.mitochondrialDysfunction
  oxidativeStressClosed : R.oxidativeStress
  apoptosisInductionClosed : R.apoptosisInduction
  neurodegenerativeDiseaseClosed : R.neurodegenerativeDisease
  cardiacArrhythmiaClosed : R.cardiacArrhythmia

def CalciumDysregulationClosed {C : CalciumDynamicsPackage}
    {P : CalciumSignalingPathwaysPackage C}
    {D : CalciumDecodingPackage C P}
    (R : CalciumDysregulationPackage C P D) : Prop :=
  R.erStress ∧ R.mitochondrialDysfunction ∧ R.oxidativeStress ∧
  R.apoptosisInduction ∧ R.neurodegenerativeDisease ∧ R.cardiacArrhythmia

theorem calcium_dysregulation_closed_from_evidence
    {C : CalciumDynamicsPackage} {P : CalciumSignalingPathwaysPackage C}
    {D : CalciumDecodingPackage C P}
    (R : CalciumDysregulationPackage C P D)
    (E : CalciumDysregulationEvidence R) : CalciumDysregulationClosed R := by
  exact And.intro E.erStressClosed
    (And.intro E.mitochondrialDysfunctionClosed
      (And.intro E.oxidativeStressClosed
        (And.intro E.apoptosisInductionClosed
          (And.intro E.neurodegenerativeDiseaseClosed
            E.cardiacArrhythmiaClosed))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse