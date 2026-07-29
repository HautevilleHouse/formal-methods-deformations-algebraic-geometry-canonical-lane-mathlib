import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.ObstructionTheory

/-!
# Representation Theorem Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure RepresentationTheoremPackage {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} (O : ObstructionTheoryPackage D) where
  representabilityCondition : Prop
  fineModuliSpace : Prop
  coarseModuliSpace : Prop

structure RepresentationTheoremEvidence {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} (R : RepresentationTheoremPackage O) where
  representabilityConditionClosed : R.representabilityCondition
  fineModuliSpaceClosed : R.fineModuliSpace
  coarseModuliSpaceClosed : R.coarseModuliSpace

def RepresentationTheoremClosed {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} (R : RepresentationTheoremPackage O) : Prop :=
  R.representabilityCondition ∧ R.fineModuliSpace ∧ R.coarseModuliSpace

theorem representation_theorem_closed_from_evidence {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} (R : RepresentationTheoremPackage O)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.representabilityConditionClosed (And.intro E.fineModuliSpaceClosed E.coarseModuliSpaceClosed)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
