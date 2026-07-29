import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def ConstrainedCalciumSignalingClosure (A : CalciumSignalingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calcium_signaling_endgame (A : CalciumSignalingAdmissibleClass) :
    ConstrainedCalciumSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse