import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.SchemeStructure

/-!
# Cohomology Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure CohomologyPackage (S : SchemeStructurePackage) where
  cohomologyGroups : Type u
  vanishingTheorem : Prop
  serreDuality : Prop
  riemannRoch : Prop

structure CohomologyEvidence {S : SchemeStructurePackage} (C : CohomologyPackage S) where
  vanishingTheoremClosed : C.vanishingTheorem
  serreDualityClosed : C.serreDuality
  riemannRochClosed : C.riemannRoch

def CohomologyClosed {S : SchemeStructurePackage} (C : CohomologyPackage S) : Prop :=
  C.vanishingTheorem ∧ C.serreDuality ∧ C.riemannRoch

theorem cohomology_closed_from_evidence {S : SchemeStructurePackage} (C : CohomologyPackage S) (E : CohomologyEvidence C) :
    CohomologyClosed C := by
  exact And.intro E.vanishingTheoremClosed (And.intro E.serreDualityClosed E.riemannRochClosed)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
