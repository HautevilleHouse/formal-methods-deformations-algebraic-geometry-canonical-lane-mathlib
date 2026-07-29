import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure SchlessingerConditionH1 where
  coproductPreservesFiber : Prop
  surjectivity : Prop
  coproductPreservesFiberTerm : coproductPreservesFiber
  surjectivityTerm : surjectivity

structure SchlessingerConditionH2 where
  tangentSpaceFiniteDimensional : Prop
  finiteDimensionalTerm : tangentSpaceFiniteDimensional

structure SchlessingerConditionsPackage where
  h1 : SchlessingerConditionH1
  h2 : SchlessingerConditionH2
  h1Condition : Prop
  h2Condition : Prop

structure SchlessingerConditionsEvidence (S : SchlessingerConditionsPackage) where
  h1ConditionClosed : S.h1Condition
  h2ConditionClosed : S.h2Condition

def SchlessingerConditionsClosed (S : SchlessingerConditionsPackage) : Prop :=
  S.h1Condition ∧ S.h2Condition

theorem schlessinger_conditions_closed_from_evidence (S : SchlessingerConditionsPackage) (E : SchlessingerConditionsEvidence S) :
    SchlessingerConditionsClosed S := by
  exact And.intro E.h1ConditionClosed E.h2ConditionClosed

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse