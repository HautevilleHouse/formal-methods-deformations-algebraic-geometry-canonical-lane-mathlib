import Formaldeform.BaseDeformationPackage

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure UniversalPropertyPackage {D : BaseDeformationPackage} (B : BaseDeformationEvidence D) where
  liftingProperty : Prop
  versalDeformation : Prop
  relativeRepresentability : Prop
  formalEtaleness : Prop
  liftingPropertyClosed : liftingProperty
  versalDeformationClosed : versalDeformation
  relativeRepresentabilityClosed : relativeRepresentability
  formalEtalenessClosed : formalEtaleness

def UniversalPropertyClosed {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} (U : UniversalPropertyPackage B) : Prop :=
  U.liftingProperty ∧ U.versalDeformation ∧ U.relativeRepresentability ∧ U.formalEtaleness

theorem universal_property_closed_from_evidence {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} (U : UniversalPropertyPackage B) :
    UniversalPropertyClosed U := by
  exact And.intro U.liftingPropertyClosed (And.intro U.versalDeformationClosed (And.intro U.relativeRepresentabilityClosed U.formalEtalenessClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
