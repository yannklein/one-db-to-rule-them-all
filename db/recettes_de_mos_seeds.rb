require 'faker'
require "open-uri"

def recettes_de_mos_seeding
  # Create users
  puts "User creation..."
  file = URI.open('https://avatars2.githubusercontent.com/u/26819547?s=400&u=ae79d8825ad1127723641cbf32a9a7e2ec221e7f&v=4')
  yann = User.new(first_name: 'Yann', last_name: 'Klein', password: '123456', email: 'yann@gmail.com', location:"Théding")
  yann.photo.attach(io: file, filename: 'yann.jpg', content_type: 'image/jpg')
  yann.save

  3.times do |id|
    file = URI.open('https://i.pravatar.cc/300')
    user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , password: '123456', email: "user#{id}@gmail.com", location:["Sarreguemines", "Forbach", "Bitche"].sample)
    user.photo.attach(io: file, filename: "avatar#{id}.jpg", content_type: 'image/jpg')
    user.save
  end

  # Create countries
  puts "RecettesDeMosCountry creation..."
  RecettesDeMosCountry.create!(name: 'Vallée de la Sarre', description: 'La vallée de la Sarre est un important bassin d’emplois regroupant les zones industrielles de Sarreguemines, Hambach et Sarralbe.')
  bassin_houiller = RecettesDeMosCountry.create!(name: 'Le bassin Houiller', description: 'L\'ancien bassin houiller se concentre essentiellement dans la dépression du Warndt, une forme de semi-boutonnière regardant vers le Land de Sarre.')
  RecettesDeMosCountry.create!(name: 'Pays de Nied', description: 'Le Pays de Nied est le plateau lorrain allant de Bouzonville à Morhange, entre la Nied au sud et le Warndt au nord. ')
  RecettesDeMosCountry.create!(name: 'Pays des Lacs', description: 'Le Pays des Lacs entre l’ancien bassin houiller et le Pays de Bitche très vallonné, conjugue un développement entre élevage, forêts et étangs. ')
  RecettesDeMosCountry.create!(name: 'Pays de Bitche', description: 'Le Pays de Bitche est formé d’un isthme au nord-est du département. Sa partie orientale très boisée a une vocation forestière et touristique tandis que la partie occidentale conserve un paysage agricole')
  RecettesDeMosCountry.create!(name: 'Vosges du Nord', description: 'Le Parc naturel régional des Vosges du Nord se situe à cheval sur le département de la Moselle et le Bas-Rhin.')
  RecettesDeMosCountry.create!(name: 'Pays du Saulnois', description: 'Le Saulnois, ou pays du sel (Salzgau en allemand), est une région naturelle rurale du sud de la Moselle dont une petite partie - au sens territorial - se situe en Meurthe-et-Moselle.')

  # Create category
  puts "RecettesDeMosCategory creation..."
  RecettesDeMosCategory.create!(name: 'Entrée', description: '')
  RecettesDeMosCategory.create!(name: 'Apéritif', description: '')
  plat_principal = RecettesDeMosCategory.create!(name: 'Plat principal', description: '')
  RecettesDeMosCategory.create!(name: 'Dessert', description: '')
  RecettesDeMosCategory.create!(name: 'Boisson', description: '')

  # Create recipes
  puts "RecettesDeMosRecipe creation..."
  file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.ctfassets.net%2F3s5io6mnxfqz%2F1NkSmY3QsqKr7DQ2cleBbT%2F0f514614ffd98ac6a39eefe2e6ff85a2%2FAdobeStock_179730200.jpeg&f=1&nofb=1')
  recipe = RecettesDeMosRecipe.new(
    name: 'Knepp et pomme de terres à la crème',
    description: 'La recette de Knepp de ma mamie, un gout dont je me souviendrai toujours.',
    recettes_de_mos_country: bassin_houiller,
    recettes_de_mos_category: plat_principal,
    user: yann,
    ingredient: [ 'Farine: 400g',
                  'Oeufs: 2',
                  'Eau: 1/2 litre',
                  'Poivre',
                  'Sel',
                  'Lardons: 250g',
                  'Crème fraîche épaisse: 250g',
                  'Persil',
                  'Oignon: 1'
                ],
    prep_time: 5,
    cook_time: 20,
    prep_step: [
                "Prendre un saladier, y verser la farine, ajouter les oeufs puis le sel et le poivre. Ajouter l'eau petit à petit jusqu'à ce que la pâte soit élastique.",
                "Faire bouillir votre eau (salée) dans une grande casserole.",
                "A ébullition, former de petits kneppe avec 2 petites cuillères (de la taille que l'on veut) et les plonger dans l'eau bouillante.",
                "ils sont cuits dès lros qu'ils remontent tous à la surface (ce qui prend plus ou moins 5 minutes, selon leur taille). Les mettre de côté.",
                "Pour la sauce, couper l'oignon en petits dés, puis le faire revenir dans un petit peu de matière grasse. Ajouter les oignons, puis la crème, puis laisser chauffer la sauce afin quelle devienne un peu épaisse."
              ],
    guests_amount: 2
  )
  recipe.photo.attach(io: file, filename: 'recipe.jpg', content_type: 'image/jpg')
  recipe.save

  file = URI.open('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fstatic.750g.com%2Fimages%2F622-auto%2F5dcf2b12d963c2ae23bd03f71571e2cb%2Fgalette-de-pommes-de-terre-facile.jpeg&f=1&nofb=1')
  recipe = RecettesDeMosRecipe.new(
    name: 'Krumpakischle',
    description: 'Une recette simple mais bonne que m\'appris ma mère. Rien de meilleur que de remplacer un peu de pomme de terres avec des courgettes.',
    recettes_de_mos_country: bassin_houiller,
    recettes_de_mos_category: plat_principal,
    user: User.last,
    ingredient: ['Pommes de terre: 7',
                  'Oeufs: 1',
                  'Poivre',
                  'Sel',
                  'Farine: 1 cuillère à soupe',
                  'Oignon: 3',
                  'Huile'
                ],
    prep_time: 25,
    cook_time: 10,
    prep_step: [
                "Éplucher les pommes de terre et l'oignon et les râper finement. Il faut retirer l'excédent d'eau.",
                "Ajouter la farine, l’œuf, un peu de sel et de poivre. Bien mélanger l'ensemble.",
                "Dans une poêle, porter à ébullition un peu d'huile puis y déposer 4 cuillères à soupe de la préparation.",
                "Faire bien dorer les galettes d'un côté, les retourner et laisser dorer sur l'autre face. Les sortir.",
                "Recommencer jusqu'à épuisement de la pâte.",
                "Disposer les galettes sur un plat de service. Les servir bien chaudes avec une sauce aux champignons."
              ],
    guests_amount: 4
  )
  recipe.photo.attach(io: file, filename: 'recipe.jpg', content_type: 'image/jpg')
  recipe.save
  puts "Seeded!"
end