import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure InfinitesimalLifting (A : AdmissibleClass) where
  squareZeroExtension : Type u
  liftingExists : Prop
  liftedStructureSheaf : Type v
  obstructionClassMapping : Type w
  squareZeroExtensionDefined : squareZeroExtension
  liftingExistsClosed : liftingExists
  liftedStructureSheafDefined : liftedStructureSheaf
  obstructionClassMappingDefined : obstructionClassMapping

structure InfinitesimalLiftingEvidence (L : InfinitesimalLifting) where
  liftingExistsClosed : L.liftingExists
  obstructionVanishesOnKodairaSpencer : Prop

def InfinitesimalLiftingClosed (L : InfinitesimalLifting) : Prop :=
  L.liftingExists

theorem infinitesimal_lifting_closed_from_evidence (L : InfinitesimalLifting) (E : InfinitesimalLiftingEvidence L) : InfinitesimalLiftingClosed L := by
  exact E.liftingExistsClosed

end HautevilleHouse.FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean