class AddCareerStepToCareerUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :career_users, :career_step, null: false, foreign_key: true
  end
end
