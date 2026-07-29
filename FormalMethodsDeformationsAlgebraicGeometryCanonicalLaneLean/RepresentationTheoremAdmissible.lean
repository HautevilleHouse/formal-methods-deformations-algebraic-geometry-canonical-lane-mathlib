import Formaldeform.UniversalPropertyBridge

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure RepresentationTheoremPackage {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} where
  hullExists : Prop
  hullMinimal : Prop
  tangentSpaceIdentified : Prop
  obstructionVanishes : Prop

structure RepresentationTheoremEvidence {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} (R : RepresentationTheoremPackage) where
  hullExistsClosed : R.hullExists
  hullMinimalClosed : R.hullMinimal
  tangentSpaceIdentifiedClosed : R.tangentSpaceIdentified
  obstructionVanishesClosed : R.obstructionVanishes

def RepresentationTheoremClosed {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} (R : RepresentationTheoremPackage) : Prop :=
  R.hullExists ∧ R.hullMinimal ∧ R.tangentSpaceIdentified ∧ R.obstructionVanishes

theorem representation_theorem_closed_from_evidence {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} (R : RepresentationTheoremPackage) (E : RepresentationTheoremEvidence R) :
    RepresentationTheoremClosed R := by
  exact And.intro E.hullExistsClosed (And.intro E.hullMinimalClosed (And.intro E.tangentSpaceIdentifiedClosed E.obstructionVanishesClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
