import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure ObstructionPackage where
  tangentSpace : Type u
  obstructionSpace : Type v
  obstructionMap : tangentSpace → obstructionSpace
  vanishingCondition : Prop

def ObstructionClosed (O : ObstructionPackage) : Prop :=
  O.vanishingCondition

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
