import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : CalciumSignalingAdmissibleClass) : Prop :=
  let O := A.object
  O.oscillationObserved ∧ O.wavePdeConsistent

theorem bridge_from_admissible_class (A : CalciumSignalingAdmissibleClass) :
    bridgeClosed A := by
  let O := A.object
  exact O.conclusion

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse