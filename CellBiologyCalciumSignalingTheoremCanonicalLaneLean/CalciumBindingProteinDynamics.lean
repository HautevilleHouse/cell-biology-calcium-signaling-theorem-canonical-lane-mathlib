import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure BindingSite where
  protein : Type
  affinity : Float
  cooperativity : Prop
  occupancy : Prop

def bindingSiteClosed (B : BindingSite) : Prop :=
  B.cooperativity ∧ B.occupancy

theorem binding_site_closed_from_evidence (B : BindingSite) :
    bindingSiteClosed B := by
  exact And.intro B.cooperativity B.occupancy

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse