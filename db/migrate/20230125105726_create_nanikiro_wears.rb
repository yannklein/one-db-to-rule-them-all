class CreateNanikiroWears < ActiveRecord::Migration[7.0]
  def change
    create_table :nanikiro_wears do |t|
      t.string :color
      t.references :nanikiro_closet, null: false, foreign_key: true
      t.integer :wear_type
      t.integer :season

      t.timestamps
    end
  end
end
