class CreateHoloboHolograms < ActiveRecord::Migration[7.0]
  def change
    create_table :holobo_holograms do |t|
      t.string :title
      t.string :description
      t.references :holobo_user, null: false, foreign_key: true
      t.string :video
      t.string :background
      t.string :depth_img
      t.string :marker_pattern
      t.string :qr_code

      t.timestamps
    end
  end
end
