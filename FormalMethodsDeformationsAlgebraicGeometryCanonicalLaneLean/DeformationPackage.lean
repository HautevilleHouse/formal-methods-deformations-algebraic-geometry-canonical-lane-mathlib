import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure DeformationPackage where
  base : Type u
  fiber : Type v
  family : Type w
  smooth : Prop
  versality : Prop
  closednessUnderBaseChange : Prop

def DeformationClosed (D : DeformationPackage) : Prop :=
  D.smooth ∧ D.versality ∧ D.closednessUnderBaseChange

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
