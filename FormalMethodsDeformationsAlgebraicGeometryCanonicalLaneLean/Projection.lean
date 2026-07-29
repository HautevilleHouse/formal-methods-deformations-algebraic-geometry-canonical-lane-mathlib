import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def formalMethodsProjection : Projection FormalMethodsEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem formal_methods_projection_idempotent (x : FormalMethodsEndgameState) :
    formalMethodsProjection.toFun (formalMethodsProjection.toFun x) = formalMethodsProjection.toFun x := by
  exact formalMethodsProjection.idempotent x

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
