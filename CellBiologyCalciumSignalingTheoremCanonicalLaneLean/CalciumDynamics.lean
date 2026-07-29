import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumDynamicsPackage where
  membraneReceptor : Prop
  ip3Production : Prop
  erRelease : Prop
  calciumInflux : Prop
  calciumBuffering : Prop
  calciumExtrusion : Prop
  restingConcentration : Prop

structure CalciumDynamicsEvidence (C : CalciumDynamicsPackage) where
  membraneReceptorClosed : C.membraneReceptor
  ip3ProductionClosed : C.ip3Production
  erReleaseClosed : C.erRelease
  calciumInfluxClosed : C.calciumInflux
  calciumBufferingClosed : C.calciumBuffering
  calciumExtrusionClosed : C.calciumExtrusion
  restingConcentrationClosed : C.restingConcentration

def CalciumDynamicsClosed (C : CalciumDynamicsPackage) : Prop :=
  C.membraneReceptor ∧ C.ip3Production ∧ C.erRelease ∧
  C.calciumInflux ∧ C.calciumBuffering ∧ C.calciumExtrusion ∧
  C.restingConcentration

theorem calcium_dynamics_closed_from_evidence (C : CalciumDynamicsPackage)
    (E : CalciumDynamicsEvidence C) : CalciumDynamicsClosed C := by
  exact And.intro E.membraneReceptorClosed
    (And.intro E.ip3ProductionClosed
      (And.intro E.erReleaseClosed
        (And.intro E.calciumInfluxClosed
          (And.intro E.calciumBufferingClosed
            (And.intro E.calciumExtrusionClosed E.restingConcentrationClosed)))))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse