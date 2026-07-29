import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure CalciumWavePackage where
  waveSpeed : Prop
  waveAmplitude : Prop
  waveFrequency : Prop
  intercellularPropagation : Prop
  waveFrontCurvature : Prop

structure CalciumWaveEvidence (W : CalciumWavePackage) where
  waveSpeedClosed : W.waveSpeed
  waveAmplitudeClosed : W.waveAmplitude
  waveFrequencyClosed : W.waveFrequency
  intercellularPropagationClosed : W.intercellularPropagation
  waveFrontCurvatureClosed : W.waveFrontCurvature

def CalciumWaveClosed (W : CalciumWavePackage) : Prop :=
  W.waveSpeed ∧ W.waveAmplitude ∧ W.waveFrequency ∧
  W.intercellularPropagation ∧ W.waveFrontCurvature

theorem calcium_wave_closed_from_evidence (W : CalciumWavePackage) (E : CalciumWaveEvidence W) :
    CalciumWaveClosed W := by
  exact And.intro E.waveSpeedClosed
    (And.intro E.waveAmplitudeClosed
      (And.intro E.waveFrequencyClosed
        (And.intro E.intercellularPropagationClosed E.waveFrontCurvatureClosed)))

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse