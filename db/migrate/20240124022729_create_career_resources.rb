class CreateCareerResources < ActiveRecord::Migration[7.0]
  def change
    create_table :career_resources do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :career_step, null: false, foreign_key: true
      t.string :rest_type

      t.timestamps
    end
  end
end
