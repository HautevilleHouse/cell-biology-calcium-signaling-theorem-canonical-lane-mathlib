import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumChannelPackage where
  channelType : Type u
  openProbability : Prop
  voltageDependence : Prop
  calciumDependence : Prop
  conductance : Prop

def CalciumChannelClosed (C : CalciumChannelPackage) : Prop :=
  C.openProbability ∧ C.voltageDependence ∧ C.calciumDependence ∧ C.conductance

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse