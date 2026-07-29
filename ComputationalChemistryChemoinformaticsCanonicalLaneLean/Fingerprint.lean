import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure Fingerprint where
  bits : List Bool
  size : Nat
  hashFunction : String

def tanimotoSimilarity (fp1 fp2 : Fingerprint) : Float :=
  let andCount := (List.zip fp1.bits fp2.bits).count (fun (a,b) => a ∧ b)
  let orCount := (List.zip fp1.bits fp2.bits).count (fun (a,b) => a ∨ b)
  if orCount = 0 then 0.0 else (andCount.toFloat / orCount.toFloat)

theorem tanimoto_self_similarity_one (fp : Fingerprint) :
    tanimotoSimilarity fp fp = 1.0 := by
  unfold tanimotoSimilarity
  have hand : (List.zip fp.bits fp.bits).all (fun (a,b) => a = b) := by
    intro ab; cases' ab with a b; simp
  sorry

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse