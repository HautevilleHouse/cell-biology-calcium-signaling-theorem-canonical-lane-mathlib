import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure StoreOperatedCalciumPackage where
  storeDepletion : Prop
  stromalInteractionMolecule : Type u
  calciumReleaseActivatedCalcium : Prop
  calciumInflux : Prop

def StoreOperatedCalciumClosed (S : StoreOperatedCalciumPackage) : Prop :=
  S.storeDepletion ∧ S.calciumReleaseActivatedCalcium ∧ S.calciumInflux

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse