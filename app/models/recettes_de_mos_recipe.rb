class RecettesDeMosRecipe < ApplicationRecord
  belongs_to :recettes_de_mos_country
  belongs_to :recettes_de_mos_category
  belongs_to :user
  has_one_attached :photo
end
