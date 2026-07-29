import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumWavePDE
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumChannelClosure
import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.StoreOperatedCalciumClosure

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def ConstrainedCalciumSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calcium_signaling_endgame (A : AdmissibleClass) :
    ConstrainedCalciumSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse