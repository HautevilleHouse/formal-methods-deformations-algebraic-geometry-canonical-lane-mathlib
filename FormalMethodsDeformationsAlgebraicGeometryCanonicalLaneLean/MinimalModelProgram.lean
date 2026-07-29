import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.RepresentationTheorem

/-!
# Minimal Model Program Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure MinimalModelProgramPackage {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} (R : RepresentationTheoremPackage O) where
  rationalCurves : Prop
  flipExistence : Prop
  termination : Prop
  abundance : Prop

structure MinimalModelProgramEvidence {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} {R : RepresentationTheoremPackage O}
    (M : MinimalModelProgramPackage R) where
  rationalCurvesClosed : M.rationalCurves
  flipExistenceClosed : M.flipExistence
  terminationClosed : M.termination
  abundanceClosed : M.abundance

def MinimalModelProgramClosed {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} {R : RepresentationTheoremPackage O}
    (M : MinimalModelProgramPackage R) : Prop :=
  M.rationalCurves ∧ M.flipExistence ∧ M.termination ∧ M.abundance

theorem minimal_model_program_closed_from_evidence {S : SchemeStructurePackage} {C : CohomologyPackage S}
    {D : DeformationTheoryPackage C} {O : ObstructionTheoryPackage D} {R : RepresentationTheoremPackage O}
    (M : MinimalModelProgramPackage R) (E : MinimalModelProgramEvidence M) :
    MinimalModelProgramClosed M := by
  exact And.intro E.rationalCurvesClosed
    (And.intro E.flipExistenceClosed (And.intro E.terminationClosed E.abundanceClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
