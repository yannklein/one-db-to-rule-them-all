# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = WatchWithStyleMovie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def watch_with_style_seeding

  WatchWithStyleBookmark.destroy_all
  WatchWithStyleMovie.destroy_all
  WatchWithStyleList.destroy_all


  wonder = WatchWithStyleMovie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
  WatchWithStyleMovie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
  WatchWithStyleMovie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
  ocean = WatchWithStyleMovie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

  hero = WatchWithStyleList.create(name: "Super Hero 🦸")
  WatchWithStyleList.create(name: "Drama 😿")
  WatchWithStyleList.create(name: "Drama 😿")


  10.times do
    WatchWithStyleList.create(name: Faker::Coffee.blend_name)
  end

  WatchWithStyleBookmark.create(watch_with_style_list: hero, watch_with_style_movie: wonder, comment: "Love Wonder Woman <3")
  WatchWithStyleBookmark.create(watch_with_style_list: hero, watch_with_style_movie: ocean, comment: "Normal life heroes!")
end