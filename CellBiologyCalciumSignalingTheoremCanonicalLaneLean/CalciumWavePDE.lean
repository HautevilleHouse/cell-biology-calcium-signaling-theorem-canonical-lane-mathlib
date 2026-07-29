import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumWavePDEPackage where
  membranePotential : Type u
  intracellularCalcium : Type v
  diffusionCoefficient : Prop
  releaseTerm : Prop
  uptakeTerm : Prop
  bufferingTerm : Prop

def calciumWavePDEInitialCondition (C : CalciumWavePDEPackage) : Prop :=
  C.diffusionCoefficient ∧ C.releaseTerm ∧ C.uptakeTerm ∧ C.bufferingTerm

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse