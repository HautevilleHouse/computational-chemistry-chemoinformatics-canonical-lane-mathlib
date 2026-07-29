import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Matrix.Basic

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure MoleculeGraph where
  atoms : List (String × Nat)
  bonds : List (Nat × Nat × String)

def computeAdjacencyMatrix (g : MoleculeGraph) : Matrix Nat Nat Float :=
  let n := g.atoms.length
  Matrix.of fun i j =>
    if i = j then 0.0 else
      if g.bonds.any (fun b => (b.1 = i ∧ b.2 = j) ∨ (b.1 = j ∧ b.2 = i)) then 1.0 else 0.0

theorem adjacency_symmetric (g : MoleculeGraph) :
    (computeAdjacencyMatrix g)ᵀ = computeAdjacencyMatrix g := by
  ext i j
  dsimp [computeAdjacencyMatrix, Matrix.transpose]
  have hsymm : (fun i j => ...) i j = (fun i j => ...) j i := by
    simp
  exact hsymm

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse