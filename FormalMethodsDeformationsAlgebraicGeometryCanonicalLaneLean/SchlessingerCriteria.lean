import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure SchlessingerCriteria (A : AdmissibleClass) where
  firstCondition : Prop
  secondCondition : Prop
  thirdCondition : Prop
  hullExists : Prop
  hullExplicit : Type u
  firstConditionClosed : firstCondition
  secondConditionClosed : secondCondition
  thirdConditionClosed : thirdCondition
  hullExistsClosed : hullExists
  hullExplicitDefined : hullExplicit

structure SchlessingerEvidence (S : SchlessingerCriteria) where
  firstConditionClosed : S.firstCondition
  secondConditionClosed : S.secondCondition
  thirdConditionClosed : S.thirdCondition
  hullExistsClosed : S.hullExists

def SchlessingerClosed (S : SchlessingerCriteria) : Prop :=
  S.firstCondition ∧ S.secondCondition ∧ S.thirdCondition ∧ S.hullExists

theorem schlessinger_closed_from_evidence (S : SchlessingerCriteria) (E : SchlessingerEvidence S) : SchlessingerClosed S := by
  exact And.intro E.firstConditionClosed (And.intro E.secondConditionClosed (And.intro E.thirdConditionClosed E.hullExistsClosed))

end HautevilleHouse.FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean