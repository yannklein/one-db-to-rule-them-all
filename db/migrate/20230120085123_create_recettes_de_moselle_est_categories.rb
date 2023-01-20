class CreateRecettesDeMoselleEstCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :recettes_de_mos_categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
