import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure BaseDeformationPackage where
  baseScheme : Type u
  baseTopology : TopologicalSpace baseScheme
  deformationRing : Type v
  formalSmoothness : Prop
  infinitesimalLift : Prop
  obstructionTheory : Prop

structure BaseDeformationEvidence (D : BaseDeformationPackage) where
  formalSmoothnessClosed : D.formalSmoothness
  infinitesimalLiftClosed : D.infinitesimalLift
  obstructionTheoryClosed : D.obstructionTheory

def BaseDeformationClosed (D : BaseDeformationPackage) : Prop :=
  D.formalSmoothness ∧ D.infinitesimalLift ∧ D.obstructionTheory

theorem base_deformation_closed_from_evidence (D : BaseDeformationPackage) (E : BaseDeformationEvidence D) :
    BaseDeformationClosed D := by
  exact And.intro E.formalSmoothnessClosed (And.intro E.infinitesimalLiftClosed E.obstructionTheoryClosed)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
