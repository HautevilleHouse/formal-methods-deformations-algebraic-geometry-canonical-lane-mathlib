import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure HilbertSchemeDeformationPackage where
  baseScheme : Type u
  flatFamily : Type v
  hilbertPolynomial : Type w
  globalExistence : Prop
  universalClosedness : Prop
  infinitesimalLiftingComplete : Prop

structure HilbertSchemeDeformationEvidence (H : HilbertSchemeDeformationPackage) where
  globalExistenceClosed : H.globalExistence
  universalClosednessClosed : H.universalClosedness
  infinitesimalLiftingCompleteClosed : H.infinitesimalLiftingComplete

def HilbertSchemeDeformationClosed (H : HilbertSchemeDeformationPackage) : Prop :=
  H.globalExistence ∧ H.universalClosedness ∧ H.infinitesimalLiftingComplete

theorem hilbert_scheme_deformation_closed_from_evidence (H : HilbertSchemeDeformationPackage) (E : HilbertSchemeDeformationEvidence H) :
    HilbertSchemeDeformationClosed H := by
  exact And.intro E.globalExistenceClosed
    (And.intro E.universalClosednessClosed E.infinitesimalLiftingCompleteClosed)

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse