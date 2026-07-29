import ComputationalChemistryChemoinformaticsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalChemistryChemoinformaticsCanonicalLaneLean

structure ActivityModel where
  modelName : String
  accuracy : Float
  validated : Bool

definitionalModels : List ActivityModel :=
  [{ modelName := "RandomForest", accuracy := 0.85, validated := true },
   { modelName := "NeuralNetwork", accuracy := 0.90, validated := true }]

theorem all_models_validated : List.all definitionalModels (λ m => m.validated) := by
  decide

end ComputationalChemistryChemoinformaticsCanonicalLaneLean
end HautevilleHouse