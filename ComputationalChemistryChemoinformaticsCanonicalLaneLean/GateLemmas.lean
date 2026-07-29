import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryChemoinformaticsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse