import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumSignalingEndpointPackage {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} {S : CalciumStoreFluxPackage G F R} {W : CalciumWavePropagationPackage G F R S} where
  targetCellType : Type u
  targetCellTopology : TopologicalSpace targetCellType
  calciumSpikePatternObserved : Prop
  physiologicalResponse : Prop
  endpointMatchesCalciumSignalingStatement : Prop

structure CalciumSignalingEndpointEvidence {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} {S : CalciumStoreFluxPackage G F R} {W : CalciumWavePropagationPackage G F R S} (E : CalciumSignalingEndpointPackage G F R S W) where
  calciumSpikePatternObservedClosed : E.calciumSpikePatternObserved
  physiologicalResponseClosed : E.physiologicalResponse
  endpointMatchesCalciumSignalingStatementClosed : E.endpointMatchesCalciumSignalingStatement

def CalciumSignalingEndpointClosed {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} {S : CalciumStoreFluxPackage G F R} {W : CalciumWavePropagationPackage G F R S} (E : CalciumSignalingEndpointPackage G F R S W) : Prop :=
  E.calciumSpikePatternObserved ∧ E.physiologicalResponse ∧ E.endpointMatchesCalciumSignalingStatement

theorem calcium_signaling_endpoint_closed_from_evidence
    {G : CytosolicCalciumPackage} {F : CalciumWavePDEPackage G} {R : IP3ReceptorDynamicsPackage G F} {S : CalciumStoreFluxPackage G F R} {W : CalciumWavePropagationPackage G F R S}
    (Epkg : CalciumSignalingEndpointPackage G F R S W) (E : CalciumSignalingEndpointEvidence Epkg) :
    CalciumSignalingEndpointClosed Epkg := by
  exact And.intro E.calciumSpikePatternObservedClosed
    (And.intro E.physiologicalResponseClosed E.endpointMatchesCalciumSignalingStatementClosed)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse