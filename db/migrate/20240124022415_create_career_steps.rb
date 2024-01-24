class CreateCareerSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :career_steps do |t|
      t.string :title
      t.string :description
      t.integer :step_number
      t.string :video

      t.timestamps
    end
  end
end
