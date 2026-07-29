import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.IP3ReceptorDynamics

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumWavePackage {A : AdmissibleClass}
    (P : IP3ReceptorPackage A) where
  diffusionCoefficient : ℚ
  releaseRate : ℚ
  waveSpeed : ℚ
  waveInitiates : Prop
  wavePropagates : Prop

structure CalciumWaveEvidence {A : AdmissibleClass}
    {P : IP3ReceptorPackage A} (W : CalciumWavePackage P) where
  waveInitiatesClosed : W.waveInitiates
  wavePropagatesClosed : W.wavePropagates

def CalciumWaveClosed {A : AdmissibleClass}
    {P : IP3ReceptorPackage A} (W : CalciumWavePackage P) : Prop :=
  W.waveInitiates ∧ W.wavePropagates

theorem calcium_wave_closed_from_evidence
    {A : AdmissibleClass} {P : IP3ReceptorPackage A}
    (W : CalciumWavePackage P) (E : CalciumWaveEvidence W) :
    CalciumWaveClosed W := by
  exact And.intro E.waveInitiatesClosed E.wavePropagatesClosed

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse