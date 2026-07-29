import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure TangentCohomologyPackage where
  t1Space : Type u
  t2Space : Type v
  obstructionTheory : Prop
  versalDeformationExists : Prop
  t1FiniteDimensional : Prop
  t2FiniteDimensional : Prop

structure TangentCohomologyEvidence (T : TangentCohomologyPackage) where
  obstructionTheoryClosed : T.obstructionTheory
  versalDeformationExistsClosed : T.versalDeformationExists
  t1FiniteDimensionalClosed : T.t1FiniteDimensional
  t2FiniteDimensionalClosed : T.t2FiniteDimensional

def TangentCohomologyClosed (T : TangentCohomologyPackage) : Prop :=
  T.obstructionTheory ∧ T.versalDeformationExists ∧ T.t1FiniteDimensional ∧ T.t2FiniteDimensional

theorem tangent_cohomology_closed_from_evidence (T : TangentCohomologyPackage) (E : TangentCohomologyEvidence T) :
    TangentCohomologyClosed T := by
  exact And.intro E.obstructionTheoryClosed
    (And.intro E.versalDeformationExistsClosed
      (And.intro E.t1FiniteDimensionalClosed E.t2FiniteDimensionalClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse