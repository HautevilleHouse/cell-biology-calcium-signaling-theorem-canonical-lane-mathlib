import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure OscillationParameter where
  period : Float
  amplitude : Float
  phase : Float
  frequency : Float

def oscillationClosed (O : OscillationParameter) : Prop :=
  O.period > 0 ∧ O.amplitude > 0

theorem oscillation_closed_from_params (O : OscillationParameter) :
    oscillationClosed O := by
  exact And.intro (by positivity) (by positivity)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse