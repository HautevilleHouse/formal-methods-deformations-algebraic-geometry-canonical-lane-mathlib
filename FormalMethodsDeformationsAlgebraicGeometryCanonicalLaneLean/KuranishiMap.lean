import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure KuranishiMap (A : AdmissibleClass) where
  complexAnalyticSpace : Type u
  mapToDeformationBase : Type v
  kuranishiEquationHolds : Prop
  completenessCondition : Prop
  versalityCondition : Prop
  complexAnalyticSpaceDefined : complexAnalyticSpace
  mapToDeformationBaseDefined : mapToDeformationBase
  kuranishiEquationHoldsClosed : kuranishiEquationHolds
  completenessConditionClosed : completenessCondition
  versalityConditionClosed : versalityCondition

structure KuranishiEvidence (K : KuranishiMap) where
  kuranishiEquationHoldsClosed : K.kuranishiEquationHolds
  completenessConditionClosed : K.completenessCondition
  versalityConditionClosed : K.versalityCondition

def KuranishiClosed (K : KuranishiMap) : Prop :=
  K.kuranishiEquationHolds ∧ K.completenessCondition ∧ K.versalityCondition

theorem kuranishi_closed_from_evidence (K : KuranishiMap) (E : KuranishiEvidence K) : KuranishiClosed K := by
  exact And.intro E.kuranishiEquationHoldsClosed (And.intro E.completenessConditionClosed E.versalityConditionClosed)

end HautevilleHouse.FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean