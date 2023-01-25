require_relative 'watch_with_style_seeds'
require_relative 'recettes_de_mos_seeds'
require_relative 'lw_cinema_seeds'
require_relative 'nanikiro_seeds'

# Destroy former seeds
puts "Destroy all seeds..."
RecettesDeMosRecipe.destroy_all
RecettesDeMosCountry.destroy_all
RecettesDeMosCategory.destroy_all

WatchWithStyleBookmark.destroy_all
WatchWithStyleMovie.destroy_all
WatchWithStyleList.destroy_all

LwCinemaMovie.destroy_all
LwCinemaProjectCategory.destroy_all

NanikiroWear.destroy_all
NanikiroCloset.destroy_all

User.destroy_all
puts "destroyed!"

# # Seeding for Watch With Style app
watch_with_style_seeding

# # Seeding for Recettes de Moselle app
recettes_de_mos_seeding

# Seeding for Le Wagon Cinema
lw_cinema_seeding

# Seeding for Nanikiro
nanikiro_seeding