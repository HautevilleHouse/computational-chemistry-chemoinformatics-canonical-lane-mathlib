import ComputationalChemistryChemoinformaticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure MolecularDescriptor where
  name : String
  value : Float
  defined : Bool

definitionalMolecularDescriptors : List MolecularDescriptor :=
  [{ name := "logP", value := 2.3, defined := true },
   { name := "molecularWeight", value := 180.0, defined := true },
   { name := "HBondDonors", value := 2.0, defined := true },
   { name := "HBondAcceptors", value := 4.0, defined := true }]

theorem descriptor_count_positive : definitionalMolecularDescriptors.length > 0 := by
  decide

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse