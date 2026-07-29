import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure QSPRModel where
  descriptors : List String
  targetProperty : String
  coefficients : Vector Float
  intercept : Float

def predict (model : QSPRModel) (input : Vector Float) : Float :=
  model.intercept + (model.coefficients.dot input)

theorem prediction_linear (model : QSPRModel) (x y : Vector Float) :
    predict model (x + y) = predict model x + predict model y - model.intercept := by
  simp [predict, Vector.dot_add, add_assoc]

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse