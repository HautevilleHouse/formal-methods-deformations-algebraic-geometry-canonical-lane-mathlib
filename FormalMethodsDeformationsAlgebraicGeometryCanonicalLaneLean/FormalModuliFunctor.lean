import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean

structure FormallySmoothCondition where
  liftExists : Prop
  liftUniqueness : Prop
  liftExistsTerm : liftExists
  liftUniquenessTerm : liftUniqueness

structure FormalModuliFunctorPackage where
  baseRing : Type u
  artinianAlgebras : List Type v
  liftingProblems : Prop
  prorepresentability : Prop
  hullExistence : Prop
  universalProperty : Prop

structure FormalModuliFunctorEvidence (F : FormalModuliFunctorPackage) where
  liftingProblemsClosed : F.liftingProblems
  prorepresentabilityClosed : F.prorepresentability
  hullExistenceClosed : F.hullExistence
  universalPropertyClosed : F.universalProperty

def FormalModuliFunctorClosed (F : FormalModuliFunctorPackage) : Prop :=
  F.liftingProblems ∧ F.prorepresentability ∧ F.hullExistence ∧ F.universalProperty

theorem formal_moduli_functor_closed_from_evidence (F : FormalModuliFunctorPackage) (E : FormalModuliFunctorEvidence F) :
    FormalModuliFunctorClosed F := by
  exact And.intro E.liftingProblemsClosed
    (And.intro E.prorepresentabilityClosed
      (And.intro E.hullExistenceClosed E.universalPropertyClosed))

end FormalMethodsDeformationsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse