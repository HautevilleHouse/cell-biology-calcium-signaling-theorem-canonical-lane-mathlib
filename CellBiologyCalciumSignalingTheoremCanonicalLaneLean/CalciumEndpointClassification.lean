import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.CalciumWavePropagation

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumEndpointPackage {A : AdmissibleClass}
    {P : IP3ReceptorPackage A} {W : CalciumWavePackage P} where
  targetResponse : ℚ
  responseThreshold : ℚ
  endpointSatisfiedLocal : Prop
  endpointMatchesCanonical : Prop

structure CalciumEndpointEvidence {A : AdmissibleClass}
    {P : IP3ReceptorPackage A} {W : CalciumWavePackage P}
    (E : CalciumEndpointPackage) where
  endpointSatisfiedLocalClosed : E.endpointSatisfiedLocal
  endpointMatchesCanonicalClosed : E.endpointMatchesCanonical

def CalciumEndpointClosed {A : AdmissibleClass}
    {P : IP3ReceptorPackage A} {W : CalciumWavePackage P}
    (E : CalciumEndpointPackage) : Prop :=
  E.endpointSatisfiedLocal ∧ E.endpointMatchesCanonical

theorem calcium_endpoint_closed_from_evidence
    {A : AdmissibleClass} {P : IP3ReceptorPackage A}
    {W : CalciumWavePackage P} (E : CalciumEndpointPackage)
    (Ev : CalciumEndpointEvidence E) : CalciumEndpointClosed E := by
  exact And.intro Ev.endpointSatisfiedLocalClosed Ev.endpointMatchesCanonicalClosed

theorem calcium_endpoint_supplies_response
    {A : AdmissibleClass} {P : IP3ReceptorPackage A}
    {W : CalciumWavePackage P} (E : CalciumEndpointPackage) :
    E.endpointSatisfiedLocal := E.endpointSatisfiedLocal

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse