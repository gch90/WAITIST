# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# users
p "start seed"
Application.delete_all
User.delete_all
p "deleted"
p "creating users"
User.create!(email: "g@g.g", password: "qwerty", first_name: "Georges", last_name: "Chami", address: "5333 Av. Casgrain Apt 101", description: "new waiter")
User.create!(email: "s@s.s", password: "qwerty", first_name: "Sedrak", last_name: "Nadzharyan", address: "5333 Av. Casgrain Apt 102", description: "new waiter")
User.create!(email: "m@m.m", password: "qwerty", first_name: "Martyn", last_name: "McGowan", address: "5333 Av. Casgrain Apt 103", description: "new waiter")
User.create!(email: "r@r.r", password: "qwerty", first_name: "Raphael", last_name: "Cohen", address: "5333 Av. Casgrain Apt 104", description: "new waiter")
# restaurants owners
p "creating restos"
User.create!(user_role: 1, email: "g1@g.g", password: "qwerty", restaurant_name: "Renoir Restaurant", address: "1155 Serbrook, Montreal", description: "Eclectic-New French recipes offered in a high-end hotel restaurant with a terrace.", rate: 15)
User.create!(user_role: 1, email: "s1@s.s", password: "qwerty", restaurant_name: "Estiatorio Milos", address: "5357 Park Ave, Montreal", description: "Stylish Greek taverna with fresh seafood & a popular fixed-price lunch in a whitewashed setting.", rate: 16)
User.create!(user_role: 1, email: "m1@m.m", password: "qwerty", restaurant_name: "Baton Rouge", address: "5385 Rue des Jockeys, Montreal", description: "Bâton Rouge Steakhouse & Bar is a Canadian restaurant chain", rate: 18)
User.create!(user_role: 1, email: "r1@r.r", password: "qwerty", restaurant_name: "Bis", address: "1229 Rue de la Montagne, Montreal", description: "Classic Italian cuisine, with gluten-free pastas & vegetarian choices, in a homey & elegant space.", rate: 16)

# creating more seeds for the restaurant owners
User.create!(user_role: 1, email: "1@1.1", password: "qwerty", restaurant_name: "Trattoria Bellamore", address: "1229 Rue de la Montagne, Montreal", description: "White-tablecloth Italian BYOB serving classic meat, seafood & pasta dishes in a quaint space.", rate: 15)
User.create!(user_role: 1, email: "2@2.2", password: "qwerty", restaurant_name: "Le Mitoyen", address: "652 Rue de la Place Publique, Laval", description: "Area-sourced Québec tasting menus starring game & decadent desserts in a genteel country house.", rate: 16)
User.create!(user_role: 1, email: "3@3.3", password: "qwerty", restaurant_name: "Sterlings Steakhouse", address: "165 Prom. Du Centropolis, Laval", description: "Aged USDA prime steaks, fresh fish & a private wine cellar are offered in a sophisticated setting.", rate: 16)
User.create!(user_role: 1, email: "4@4.4", password: "qwerty", restaurant_name: "Le Vieux Four de Laval", address: "St-Vincent-de-Paul, 5070 Bd Lévesque E, Laval", description: "Sprawling family eatery for wood-fired, thin-crust pizzas, plus pastas & Italian classics.", rate: 18)
User.create!(user_role: 1, email: "5@5.5", password: "qwerty", restaurant_name: "Restaurant Amato", address: "192 Bd Sainte-Rose, Laval", description: "Set in an 1895 house, this refined white-tablecloth restaurant serves traditional Italian cuisine.", rate: 18)
User.create!(user_role: 1, email: "6@6.6", password: "qwerty", restaurant_name: "La Serenata Restaurant", address: "53 Brunswick Blvd, Dollard-Des Ormeaux", description: "Fixture offering Italian wines & traditional dishes with a serenading accordion player on weekends.", rate: 19)
User.create!(user_role: 1, email: "7@7.7", password: "qwerty", restaurant_name: "Enoteca Monza Pizzeria Moderna", address: "3800 Boul Saint-Jean, Dollard-des-Ormeaux", description: "Polished Italian specialist for wood-fired panini & pizza, plus classic dishes & wines by the glass.", rate: 18)
User.create!(user_role: 1, email: "8@8.8", password: "qwerty", restaurant_name: "Del Friscos", address: "3237 Sources Blvd, Dollard-Des Ormeaux,", description: "Hefty portions of familiar pastas & grilled meats (plus wood-oven pizzas) in an inviting room.", rate: 17)
User.create!(user_role: 1, email: "9@9.9", password: "qwerty", restaurant_name: "Madisons Restaurant & Bar", address: "11590 Salaberry Blvd, Dollard-Des Ormeaux", description: "cozy place. nice service. delicious food ...", rate: 15)
User.create!(user_role: 1, email: "10@0.0", password: "qwerty", restaurant_name: "Pastamore", address: "M-3343 Sources Blvd, Dollard-Des Ormeaux", description: "Good portions, great atmosphere, great service at a great price", rate: 14)

# application seeds
p "creating application"
Application.create!(waiter_id:1, restaurant_id:1, start_date:Date.new(2022,3,3), end_date:Date.new(2022,3,7), rating:4, creator_id: 1)
# Application.create!(waiter_id:1, restaurant_id:2, start_date:Date.new(2022,3,12), end_date:Date.new(2022,3,16), rating:4)
# Application.create!(waiter_id:2, restaurant_id:1, start_date:Date.new(2022,3,8), end_date:Date.new(2022,3,15), rating:3)
# Application.create!(waiter_id:2, restaurant_id:3, start_date:Date.new(2022,3,16), end_date:Date.new(2022,3,22), rating:3)
# Application.create!(waiter_id:3, restaurant_id:4, start_date:Date.new(2022,3,3), end_date:Date.new(2022,3,7), rating:5)
# Application.create!(waiter_id:3, restaurant_id:3, start_date:Date.new(2022,3,23), end_date:Date.new(2022,3,29), rating:5)
# Application.create!(waiter_id:4, restaurant_id:4, start_date:Date.new(2022,3,8), end_date:Date.new(2022,3,15), rating:4)
# Application.create!(waiter_id:4, restaurant_id:2, start_date:Date.new(2022,3,17), end_date:Date.new(2022,3,23), rating:4)
