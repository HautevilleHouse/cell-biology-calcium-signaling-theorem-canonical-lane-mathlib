import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure IP3ReceptorPackage (A : AdmissibleClass) where
  ip3Concentration : ℚ
  caActivation : ℚ
  inactivationByCa : ℚ
  openProbability : ℚ
  dynamicsModelClosed : Prop

structure IP3ReceptorEvidence {A : AdmissibleClass} (P : IP3ReceptorPackage A) where
  dynamicsModelClosedTerm : P.dynamicsModelClosed

def IP3ReceptorClosed {A : AdmissibleClass} (P : IP3ReceptorPackage A) : Prop :=
  P.dynamicsModelClosed

theorem ip3_receptor_closed_from_evidence
    {A : AdmissibleClass} (P : IP3ReceptorPackage A)
    (E : IP3ReceptorEvidence P) : IP3ReceptorClosed P := by
  exact E.dynamicsModelClosedTerm

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse