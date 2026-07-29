import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumChannel where
  poreType : Type
  voltageGated : Prop
  ligandGated : Prop
  caInfluxRate : Float
  channelState : Prop

def calciumChannelClosed (C : CalciumChannel) : Prop :=
  C.voltageGated ∨ C.ligandGated

theorem calcium_channel_closed_from_properties (C : CalciumChannel) :
    calciumChannelClosed C := by
  simpa [calciumChannelClosed] using Or.inl C.voltageGated

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse