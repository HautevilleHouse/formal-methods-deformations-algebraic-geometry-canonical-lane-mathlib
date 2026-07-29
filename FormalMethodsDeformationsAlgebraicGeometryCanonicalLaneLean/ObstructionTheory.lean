import FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean.DeformationTheory

/-!
# Obstruction Theory Package
-/

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure ObstructionTheoryPackage {S : SchemeStructurePackage} {C : CohomologyPackage S} (D : DeformationTheoryPackage C) where
  obstructionSpace : Type u
  obstructionMap : Type v
  vanishingCondition : Prop
  existenceLifting : Prop

structure ObstructionTheoryEvidence {S : SchemeStructurePackage} {C : CohomologyPackage S} {D : DeformationTheoryPackage C} (O : ObstructionTheoryPackage D) where
  vanishingConditionClosed : O.vanishingCondition
  existenceLiftingClosed : O.existenceLifting

def ObstructionTheoryClosed {S : SchemeStructurePackage} {C : CohomologyPackage S} {D : DeformationTheoryPackage C} (O : ObstructionTheoryPackage D) : Prop :=
  O.vanishingCondition ∧ O.existenceLifting

theorem obstruction_theory_closed_from_evidence {S : SchemeStructurePackage} {C : CohomologyPackage S} {D : DeformationTheoryPackage C} (O : ObstructionTheoryPackage D) (E : ObstructionTheoryEvidence O) :
    ObstructionTheoryClosed O := by
  exact And.intro E.vanishingConditionClosed E.existenceLiftingClosed

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
