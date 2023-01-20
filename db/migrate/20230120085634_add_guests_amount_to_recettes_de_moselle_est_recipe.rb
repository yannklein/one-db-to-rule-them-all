class AddGuestsAmountToRecettesDeMoselleEstRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recettes_de_mos_recipes, :guests_amount, :integer
  end
end
