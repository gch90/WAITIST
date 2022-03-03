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
User.create!(user_role: 0, email: "g@g.g", password: "qwerty", first_name: "Georges", last_name: "Chami", address: "5333 Av. Casgrain Apt 101", description: "new waiter", phone: "555-514-1234")
User.create!(user_role: 0, email: "s@s.s", password: "qwerty", first_name: "Sedrak", last_name: "Nadzharyan", address: "5333 Av. Casgrain Apt 102", description: "new waiter", phone: "555-514-1234")
User.create!(user_role: 0, email: "m@m.m", password: "qwerty", first_name: "Martyn", last_name: "McGowan", address: "5333 Av. Casgrain Apt 103", description: "new waiter", phone: "555-514-1234")
User.create!(user_role: 0, email: "r@r.r", password: "qwerty", first_name: "Raphael", last_name: "Cohen", address: "5333 Av. Casgrain Apt 104", description: "new waiter", phone: "555-514-1234")
# restaurants owners
p "creating restos"

# creating more seeds for the restaurant owners
User.create!(user_role: 1, email: "1@1.r", password: "qwerty", restaurant_name: "Trattoria Bellamore", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "White-tablecloth Italian BYOB serving classic meat, seafood & pasta dishes in a quaint space.", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "2@2.r", password: "qwerty", restaurant_name: "Le Mitoyen", address: "652 Rue de la Place Publique, Laval", restaurant_type: "Canadian", summary: "Area-sourced Québec tasting menus starring game & decadent desserts in a genteel country house.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "3@3.r", password: "qwerty", restaurant_name: "Sterlings Steakhouse", address: "165 Prom. Du Centropolis, Laval", restaurant_type: "American", summary: "Aged USDA prime steaks, fresh fish & a private wine cellar are offered in a sophisticated setting.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "4@4.r", password: "qwerty", restaurant_name: "Le Vieux Four de Laval", address: "St-Vincent-de-Paul, 5070 Bd Lévesque E, Laval", restaurant_type: "Italian", summary: "Sprawling family eatery for wood-fired, thin-crust pizzas, plus pastas & Italian classics.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "5@5.r", password: "qwerty", restaurant_name: "Restaurant Amato", address: "192 Bd Sainte-Rose, Laval", restaurant_type: "Italian", summary: "Set in an 1895 house, this refined white-tablecloth restaurant serves traditional Italian cuisine.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "6@6.r", password: "qwerty", restaurant_name: "La Serenata Restaurant", address: "53 Brunswick Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Fixture offering Italian wines & traditional dishes with a serenading accordion player on weekends.", rate: 19, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "7@7.r", password: "qwerty", restaurant_name: "Enoteca Monza Pizzeria Moderna", address: "3800 Boul Saint-Jean, Dollard-des-Ormeaux, Montreal", restaurant_type: "Italian", summary: "Polished Italian specialist for wood-fired panini & pizza, plus classic dishes & wines by the glass.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "8@8.r", password: "qwerty", restaurant_name: "Del Friscos", address: "3237 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Hefty portions of familiar pastas & grilled meats (plus wood-oven pizzas) in an inviting room.", rate: 17, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "9@9.r", password: "qwerty", restaurant_name: "Madisons Restaurant & Bar", address: "11590 Salaberry Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Canadian", summary: "cozy place. nice service. delicious food ...", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "10@10.r", password: "qwerty", restaurant_name: "Pastamore", address: "M-3343 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Good portions, great atmosphere, great service at a great price", rate: 14, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "11@11.r", password: "qwerty", restaurant_name: "Renoir Restaurant", address: "1155 Serbrook, Montreal", restaurant_type: "French", summary: "Eclectic-New French recipes offered in a high-end hotel restaurant with a terrace.", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "12@12.r", password: "qwerty", restaurant_name: "Estiatorio Milos", address: "5357 Park Ave, Montreal", restaurant_type: "Greek", summary: "Stylish Greek taverna with fresh seafood & a popular fixed-price lunch in a whitewashed setting.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "13@13.r", password: "qwerty", restaurant_name: "Baton Rouge", address: "5385 Rue des Jockeys, Montreal", restaurant_type: "Canadian", summary: "Bâton Rouge Steakhouse & Bar is a Canadian restaurant chain", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234")
User.create!(user_role: 1, email: "14@14.r", password: "qwerty", restaurant_name: "Bis", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "Classic Italian cuisine, with gluten-free pastas & vegetarian choices, in a homey & elegant space.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234")

# application seeds
p "creating applications"
Application.create!(waiter_id:1, restaurant_id:1, start_date:Date.new(2022,3,3), end_date:Date.new(2022,3,7), rating:4, creator_id: 1)
Application.create!(waiter_id:1, restaurant_id:4, start_date:Date.new(2022,3,12), end_date:Date.new(2022,3,16),creator_id: 1, rating:4)
Application.create!(waiter_id:2, restaurant_id:4, start_date:Date.new(2022,3,8), end_date:Date.new(2022,3,15), creator_id:1, rating:3)
Application.create!(waiter_id:2, restaurant_id:5, start_date:Date.new(2022,3,16), end_date:Date.new(2022,3,22),creator_id:5, rating:3)
Application.create!(waiter_id:3, restaurant_id:5, start_date:Date.new(2022,3,3), end_date:Date.new(2022,3,7),creator_id:5, rating:5)
Application.create!(waiter_id:3, restaurant_id:6, start_date:Date.new(2022,3,23), end_date:Date.new(2022,3,29),creator_id:6, rating:5)
Application.create!(waiter_id:4, restaurant_id:6, start_date:Date.new(2022,3,8), end_date:Date.new(2022,3,15),creator_id:6, rating:4)
Application.create!(waiter_id:4, restaurant_id:6, start_date:Date.new(2022,3,17), end_date:Date.new(2022,3,23),creator_id:6, rating:4)
p "applications created"
