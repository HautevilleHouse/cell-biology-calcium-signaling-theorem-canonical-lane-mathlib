import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CRACChannel where
  sensorProtein : Type
  poreSubunit : Type
  calciumCurrent : Float
  activationMechanism : Prop

def cracChannelClosed (C : CRACChannel) : Prop :=
  C.activationMechanism

theorem crac_channel_closed_from_activation (C : CRACChannel) :
    cracChannelClosed C := by
  exact C.activationMechanism

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse