import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.CohomologyPackage

/-!
# Scheme Structure Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure SchemeStructurePackage where
  underlyingScheme : Type u
  structureSheaf : Type v
  affineCover : Prop
  separated : Prop
  properness : Prop

structure SchemeStructureEvidence (S : SchemeStructurePackage) where
  affineCoverClosed : S.affineCover
  separatedClosed : S.separated
  propernessClosed : S.properness

def SchemeStructureClosed (S : SchemeStructurePackage) : Prop :=
  S.affineCover ∧ S.separated ∧ S.properness

theorem scheme_structure_closed_from_evidence (S : SchemeStructurePackage) (E : SchemeStructureEvidence S) :
    SchemeStructureClosed S := by
  exact And.intro E.affineCoverClosed (And.intro E.separatedClosed E.propernessClosed)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
