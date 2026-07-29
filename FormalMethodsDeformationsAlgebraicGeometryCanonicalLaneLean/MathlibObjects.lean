import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FormalMethodsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  schemeStructure : Prop

structure FormalMethodsAdmittedObject where
  space : FormalMethodsSpace
  projective : Prop
  smooth : Prop
  canonicalModel : Type
  modelTopology : TopologicalSpace canonicalModel
  deformationEquivalence : Prop
  conclusion : deformationEquivalence

structure FormalMethodsEndgameState where
  object : FormalMethodsAdmittedObject

def FormalMethodsWitnessClosed (O : FormalMethodsAdmittedObject) : Prop :=
  O.deformationEquivalence

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
