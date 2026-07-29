import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FormalMethodsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
