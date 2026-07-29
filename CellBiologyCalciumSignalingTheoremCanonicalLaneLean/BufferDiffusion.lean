import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumFluxPDE

/-!
# Buffer Diffusion Package
-/

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure BufferDiffusionPackage {F : CalciumFluxPDEPackage} where
  bufferSpecies : Type
  bindingRate : ℝ
  unbindingRate : ℝ
  totalBufferConcentration : ℝ
  fastBufferApproximation : Prop

structure BufferDiffusionEvidence {F : CalciumFluxPDEPackage}
    (B : BufferDiffusionPackage F) where
  bindingRateClosed : B.bindingRate > 0
  unbindingRateClosed : B.unbindingRate > 0
  totalBufferConcentrationClosed : B.totalBufferConcentration > 0
  fastBufferApproximationClosed : B.fastBufferApproximation

def BufferDiffusionClosed {F : CalciumFluxPDEPackage}
    (B : BufferDiffusionPackage F) : Prop :=
  B.bindingRate > 0 ∧ B.unbindingRate > 0 ∧ B.totalBufferConcentration > 0 ∧ B.fastBufferApproximation

theorem buffer_diffusion_closed_from_evidence
    {F : CalciumFluxPDEPackage} (B : BufferDiffusionPackage F)
    (E : BufferDiffusionEvidence B) : BufferDiffusionClosed B := by
  exact And.intro E.bindingRateClosed
    (And.intro E.unbindingRateClosed
      (And.intro E.totalBufferConcentrationClosed E.fastBufferApproximationClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse