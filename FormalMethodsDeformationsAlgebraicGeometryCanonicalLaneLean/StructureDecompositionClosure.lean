import Formaldeform.RepresentationTheoremAdmissible

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure StructureDecompositionPackage {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} {R : RepresentationTheoremPackage} (RE : RepresentationTheoremEvidence R) where
  decompositionIntoBlocks : Prop
  blocksClassified : Prop
  gluingData : Prop
  descentCondition : Prop

structure StructureDecompositionEvidence {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} {R : RepresentationTheoremPackage} {RE : RepresentationTheoremEvidence R} (S : StructureDecompositionPackage RE) where
  decompositionIntoBlocksClosed : S.decompositionIntoBlocks
  blocksClassifiedClosed : S.blocksClassified
  gluingDataClosed : S.gluingData
  descentConditionClosed : S.descentCondition

def StructureDecompositionClosed {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} {R : RepresentationTheoremPackage} {RE : RepresentationTheoremEvidence R} (S : StructureDecompositionPackage RE) : Prop :=
  S.decompositionIntoBlocks ∧ S.blocksClassified ∧ S.gluingData ∧ S.descentCondition

theorem structure_decomposition_closed_from_evidence {D : BaseDeformationPackage} {B : BaseDeformationEvidence D} {U : UniversalPropertyPackage B} {R : RepresentationTheoremPackage} {RE : RepresentationTheoremEvidence R} (S : StructureDecompositionPackage RE) (E : StructureDecompositionEvidence S) :
    StructureDecompositionClosed S := by
  exact And.intro E.decompositionIntoBlocksClosed (And.intro E.blocksClassifiedClosed (And.intro E.gluingDataClosed E.descentConditionClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
