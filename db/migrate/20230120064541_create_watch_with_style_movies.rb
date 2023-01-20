class CreateWatchWithStyleMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :watch_with_style_movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.string :rating

      t.timestamps
    end
  end
end
