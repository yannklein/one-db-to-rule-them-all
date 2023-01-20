class AddInfoToRecettesDeMoselleEstRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recettes_de_mos_recipes, :ingredient, :string, array: true, default: []
    add_column :recettes_de_mos_recipes, :prep_time, :integer
    add_column :recettes_de_mos_recipes, :cook_time, :integer
    add_column :recettes_de_mos_recipes, :prep_step, :string, array: true, default: []
  end
end
