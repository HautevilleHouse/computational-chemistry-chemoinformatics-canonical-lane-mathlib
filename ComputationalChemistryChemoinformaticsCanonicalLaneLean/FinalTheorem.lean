import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryChemoinformaticsCanonicalLaneLean.BridgeLemmas
import ComputationalChemistryChemoinformaticsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

def ConstrainedChemoinformaticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemoinformatics_closure (A : AdmissibleClass) :
    ConstrainedChemoinformaticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse