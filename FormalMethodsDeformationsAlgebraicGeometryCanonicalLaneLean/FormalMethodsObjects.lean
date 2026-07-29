import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.CategoryTheory.Monad.Basic

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure FormalMethodsDeformationsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  scheme : AlgebraicGeometry.Scheme
  deformationParameterSpace : AlgebraicGeometry.Scheme

default
structure FormalMethodsDeformationsAdmittedObject where
  space : FormalMethodsDeformationsSpace
  formalObject : Prop
  deformableFamily : Prop
  universalProperty : Prop
  conclusion : universalProperty

structure FormalMethodsDeformationsEndgameState where
  object : FormalMethodsDeformationsAdmittedObject

def FormalMethodsDeformationsWitnessClosed (O : FormalMethodsDeformationsAdmittedObject) : Prop :=
  O.universalProperty

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse