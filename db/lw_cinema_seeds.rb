require_relative "lw_cinema_data"

def lw_cinema_seeding
  puts "Creating LW Cinema categories"
  categories = [
    LwCinemaProjectCategory.create(name: "Aggregator", description: "App aggregating data from other website/API to yield a certain goal"),
    LwCinemaProjectCategory.create(name: "Game", description: "Games or leisure apps"),
    LwCinemaProjectCategory.create(name: "N-in-one", description: "App doing the function of multiple existing apps in one place"),
    LwCinemaProjectCategory.create(name: "Pro tool", description: "App improving or simplifying a business process"),
    LwCinemaProjectCategory.create(name: "Real Life assistant", description: "App simplifying an everyday task"),
    LwCinemaProjectCategory.create(name: "Teaching app", description: "App teaching a skill"),
    LwCinemaProjectCategory.create(name: "Community manager", description: "App improving/managing human interaction in a community"),
    LwCinemaProjectCategory.create(name: "Marketplace", description: "App that put sellers/buyers, providers/users, renters/rentees,... in contact")
  ]

  puts "Creating LW Cinema movies"
  LwCinemaData::MOVIES.each do |movie|
    movie[:lw_cinema_project_category_id] = categories[movie[:lw_cinema_project_category_id] - 1].id
    LwCinemaMovie.create(movie)
  end
end
