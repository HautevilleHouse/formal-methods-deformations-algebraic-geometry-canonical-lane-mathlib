import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure RepresentationPackage where
  moduli : Type u
  functor : Type v → Type w
  representability : Prop
  universalProperty : Prop

def RepresentationClosed (R : RepresentationPackage) : Prop :=
  R.representability ∧ R.universalProperty

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
