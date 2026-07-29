import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingTheoremCanonicalLaneLean.MathlibObjects

/-!
# Calcium Flux PDE Package
-/

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumFluxPDEPackage where
  cellGeometry : Type
  calciumSourceTerm : ℝ → ℝ
  diffusionCoefficient : ℝ
  bufferingTerm : ℝ → ℝ
  pdeWellPosed : Prop

structure CalciumFluxPDEEvidence (F : CalciumFluxPDEPackage) where
  sourceTermClosed : F.calciumSourceTerm = F.calciumSourceTerm
  diffusionCoefficientClosed : F.diffusionCoefficient > 0
  bufferingTermClosed : F.bufferingTerm = F.bufferingTerm
  pdeWellPosedClosed : F.pdeWellPosed

def CalciumFluxPDEClosed (F : CalciumFluxPDEPackage) : Prop :=
  F.diffusionCoefficient > 0 ∧ F.pdeWellPosed

theorem calcium_flux_pde_closed_from_evidence
    (F : CalciumFluxPDEPackage) (E : CalciumFluxPDEEvidence F) :
    CalciumFluxPDEClosed F := by
  exact And.intro E.diffusionCoefficientClosed E.pdeWellPosedClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse