import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingTheoremCanonicalLaneLean.IP3ReceptorDynamics

/-!
# Calcium Release Units Package
-/

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumReleaseUnitsPackage {F : CalciumFluxPDEPackage}
    {B : BufferDiffusionPackage F} {I : IP3ReceptorDynamicsPackage F B} where
  clusterGeometry : Type
  releaseUnitDensity : ℝ
  stochasticGating : Prop
  spatialOrganization : Prop
  releaseUnitClosed : Prop

structure CalciumReleaseUnitsEvidence {F : CalciumFluxPDEPackage}
    {B : BufferDiffusionPackage F} {I : IP3ReceptorDynamicsPackage F B}
    (C : CalciumReleaseUnitsPackage F B I) where
  clusterGeometryClosed : C.clusterGeometry = C.clusterGeometry
  releaseUnitDensityClosed : C.releaseUnitDensity > 0
  stochasticGatingClosed : C.stochasticGating
  spatialOrganizationClosed : C.spatialOrganization
  releaseUnitClosedClosed : C.releaseUnitClosed

def CalciumReleaseUnitsClosed {F : CalciumFluxPDEPackage}
    {B : BufferDiffusionPackage F} {I : IP3ReceptorDynamicsPackage F B}
    (C : CalciumReleaseUnitsPackage F B I) : Prop :=
  C.releaseUnitDensity > 0 ∧ C.stochasticGating ∧ C.spatialOrganization ∧ C.releaseUnitClosed

theorem calcium_release_units_closed_from_evidence
    {F : CalciumFluxPDEPackage} {B : BufferDiffusionPackage F}
    {I : IP3ReceptorDynamicsPackage F B}
    (C : CalciumReleaseUnitsPackage F B I)
    (E : CalciumReleaseUnitsEvidence C) : CalciumReleaseUnitsClosed C := by
  exact And.intro E.releaseUnitDensityClosed
    (And.intro E.stochasticGatingClosed
      (And.intro E.spatialOrganizationClosed E.releaseUnitClosedClosed))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse