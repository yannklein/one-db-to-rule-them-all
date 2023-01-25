class AddCateRefToLwCinemaMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :lw_cinema_movies, :category
    add_reference :lw_cinema_movies, :lw_cinema_project_category, foreign_key: true
  end
end
