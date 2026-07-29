import Formaldeform.StructureDecompositionClosure

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

def ConstrainedDeformationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_deformations_endgame (A : AdmissibleClass) :
    ConstrainedDeformationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
