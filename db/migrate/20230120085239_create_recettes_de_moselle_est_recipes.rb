class CreateRecettesDeMoselleEstRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recettes_de_mos_recipes do |t|
      t.string :name
      t.string :description
      t.references :recettes_de_mos_country, null: false, foreign_key: true
      t.references :recettes_de_mos_category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
