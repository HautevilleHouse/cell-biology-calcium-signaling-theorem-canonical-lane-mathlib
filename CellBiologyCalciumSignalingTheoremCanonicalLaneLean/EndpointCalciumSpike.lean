import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure EndpointCalciumSpike where
  peakConcentration : ℝ
  duration : ℝ
  frequency : ℝ
  peakConcentrationPositive : peakConcentration > 0
  durationPositive : duration > 0
  frequencyPositive : frequency > 0

structure EndpointCalciumSpikeEvidence (E : EndpointCalciumSpike) where
  peakConcentrationPositiveClosed : E.peakConcentrationPositive
  durationPositiveClosed : E.durationPositive
  frequencyPositiveClosed : E.frequencyPositive

def EndpointCalciumSpikeClosed (E : EndpointCalciumSpike) : Prop :=
  E.peakConcentrationPositive ∧ E.durationPositive ∧ E.frequencyPositive

theorem endpoint_calcium_spike_closed_from_evidence (E : EndpointCalciumSpike) (Ev : EndpointCalciumSpikeEvidence E) : EndpointCalciumSpikeClosed E :=
  And.intro Ev.peakConcentrationPositiveClosed (And.intro Ev.durationPositiveClosed Ev.frequencyPositiveClosed)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse