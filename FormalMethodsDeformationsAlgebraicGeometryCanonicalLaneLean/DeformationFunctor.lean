import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure DeformationFunctor (A : AdmissibleClass) where
  baseRing : Type u
  artinianLocalTarget : Type v
  functorFromArtinAlgebras : Type w
  smoothnessCondition : Prop
  prorepresentabilityCondition : Prop
  tangentSpaceIsomorphic : Prop
  functorFromArtinAlgebrasDefined : functorFromArtinAlgebras
  smoothnessConditionClosed : smoothnessCondition
  prorepresentabilityConditionClosed : prorepresentabilityCondition
  tangentSpaceIsomorphicClosed : tangentSpaceIsomorphic

structure DeformationEvidence (F : DeformationFunctor) where
  smoothnessConditionClosed : F.smoothnessCondition
  prorepresentabilityConditionClosed : F.prorepresentabilityCondition
  tangentSpaceIsomorphicClosed : F.tangentSpaceIsomorphic

def DeformationClosed (F : DeformationFunctor) : Prop :=
  F.smoothnessCondition ∧ F.prorepresentabilityCondition ∧ F.tangentSpaceIsomorphic

theorem deformation_closed_from_evidence (F : DeformationFunctor) (E : DeformationEvidence F) : DeformationClosed F := by
  exact And.intro E.smoothnessConditionClosed (And.intro E.prorepresentabilityConditionClosed E.tangentSpaceIsomorphicClosed)

end HautevilleHouse.FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean