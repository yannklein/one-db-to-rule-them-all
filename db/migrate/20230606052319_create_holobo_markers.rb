class CreateHoloboMarkers < ActiveRecord::Migration[7.0]
  def change
    create_table :holobo_markers do |t|
      t.string :qrcode
      t.string :pattern

      t.timestamps
    end
  end
end
