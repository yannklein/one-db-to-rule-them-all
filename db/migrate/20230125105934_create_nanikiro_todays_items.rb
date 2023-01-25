class CreateNanikiroTodaysItems < ActiveRecord::Migration[7.0]
  def change
    create_table :nanikiro_todays_items do |t|
      t.date :weared_on
      t.references :nanikiro_wear, null: false, foreign_key: true
      t.references :nanikiro_closet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
