class CreateRecettesDeMoselleEstCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :recettes_de_mos_countries do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
