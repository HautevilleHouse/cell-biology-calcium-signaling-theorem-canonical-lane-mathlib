import CellBiologyCalciumSignalingTheoremCanonicalLaneLean.StochasticGating

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingTheoremCanonicalLaneLean

structure ReactionDiffusionPackage {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3}
    {S : StochasticGatingPackage C IP3 D} where
  spatialDomain : Type
  diffusionEquation : ℝ → ℝ → ℝ
  reactionTerm : ℝ → ℝ → ℝ
  boundaryCondition : Prop
  initialCondition : ℝ → ℝ
  wavePropagation : Prop

structure ReactionDiffusionEvidence {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3}
    {S : StochasticGatingPackage C IP3 D}
    (R : ReactionDiffusionPackage C IP3 D S) where
  diffusionEquationClosed : R.diffusionEquation 0 0 = 0
  boundaryConditionClosed : R.boundaryCondition
  wavePropagationClosed : R.wavePropagation

def ReactionDiffusionClosed {C : CalciumChannelPackage}
    {IP3 : IP3ReceptorPackage C} {D : CalciumDynamicsPackage C IP3}
    {S : StochasticGatingPackage C IP3 D}
    (R : ReactionDiffusionPackage C IP3 D S) : Prop :=
  R.diffusionEquation 0 0 = 0 ∧ R.boundaryCondition ∧ R.wavePropagation

theorem reaction_diffusion_closed_from_evidence
    {C : CalciumChannelPackage} {IP3 : IP3ReceptorPackage C}
    {D : CalciumDynamicsPackage C IP3} {S : StochasticGatingPackage C IP3 D}
    (R : ReactionDiffusionPackage C IP3 D S) (E : ReactionDiffusionEvidence R) :
    ReactionDiffusionClosed R := by
  exact And.intro E.diffusionEquationClosed
    (And.intro E.boundaryConditionClosed E.wavePropagationClosed)

end CellBiologyCalciumSignalingTheoremCanonicalLaneLean
end HautevilleHouse