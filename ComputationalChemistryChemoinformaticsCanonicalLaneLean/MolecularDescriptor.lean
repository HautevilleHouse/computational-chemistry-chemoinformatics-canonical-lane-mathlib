import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Matrix.Basic

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure MolecularDescriptor where
  name : String
  dimension : Nat
  compute : Vector (Float) -> Float
deriving Repr

def molDescriptors : List MolecularDescriptor :=
  [ { name := "MolecularWeight", dimension := 1, compute := fun v => v[0] },
    { name := "LogP", dimension := 1, compute := fun v => v[0] },
    { name := "HBD", dimension := 1, compute := fun v => v[0] },
    { name := "HBA", dimension := 1, compute := fun v => v[0] } ]

theorem descriptor_count_positive : molDescriptors.length > 0 := by
  decide

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse