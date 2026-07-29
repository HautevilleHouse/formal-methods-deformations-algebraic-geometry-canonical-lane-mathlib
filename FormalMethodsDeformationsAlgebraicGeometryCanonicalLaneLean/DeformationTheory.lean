import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.CohomologyPackage

/-!
# Deformation Theory Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure DeformationTheoryPackage {S : SchemeStructurePackage} (C : CohomologyPackage S) where
  deformationFunctor : Type u
  tangentSpace : Type v
  versalDeformation : Prop
  universality : Prop

structure DeformationTheoryEvidence {S : SchemeStructurePackage} {C : CohomologyPackage S} (D : DeformationTheoryPackage C) where
  versalDeformationClosed : D.versalDeformation
  universalityClosed : D.universality

def DeformationTheoryClosed {S : SchemeStructurePackage} {C : CohomologyPackage S} (D : DeformationTheoryPackage C) : Prop :=
  D.versalDeformation ∧ D.universality

theorem deformation_theory_closed_from_evidence {S : SchemeStructurePackage} {C : CohomologyPackage S} (D : DeformationTheoryPackage C) (E : DeformationTheoryEvidence D) :
    DeformationTheoryClosed D := by
  exact And.intro E.versalDeformationClosed E.universalityClosed

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
