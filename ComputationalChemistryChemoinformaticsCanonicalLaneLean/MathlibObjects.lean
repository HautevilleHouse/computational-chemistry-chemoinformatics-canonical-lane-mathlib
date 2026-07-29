import ComputationalChemistryChemoinformaticsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev MoleculeGraph := List (Nat × Nat)
abbrev DescriptorVector := List Float

structure SolverAlgorithm where
  predict : DescriptorVector -> Bool

structure ChemicalSpace where
  molecules : Set MoleculeGraph
  descriptors : MoleculeGraph -> DescriptorVector

structure ChemoinformaticsAdmittedObject where
  chemicalSpace : ChemicalSpace
  projectedLanguage : Set DescriptorVector
  solver : SolverAlgorithm

def Decides (M : SolverAlgorithm) (L : Set DescriptorVector) : Prop :=
  forall x : DescriptorVector, M.predict x = true ↔ x ∈ L

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse