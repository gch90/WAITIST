# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# users
p "start seed"
Application.delete_all
User.delete_all
p "deleted"
p "creating users"
waiter_one = User.create!(user_role: 0, email: "g@g.g", password: "qwerty", first_name: "Georges", last_name: "Chami", address: "gohier st, Montreal", description: "new waiter", phone: "555-514-1234", nickname: "George")
waiter_two = User.create!(user_role: 0, email: "s@s.s", password: "qwerty", first_name: "Sedrak", last_name: "Nadzharyan", address: "rue dale, Laval", description: "new waiter", phone: "555-514-1234", nickname: "Sedrak")
waiter_three = User.create!(user_role: 0, email: "m@m.m", password: "qwerty", first_name: "Martyn", last_name: "McGowan", address: "Oxford Avenue, Montreal", description: "new waiter", phone: "555-514-1234", nickname: "Martyn")
waiter_four = User.create!(user_role: 0, email: "r@r.r", password: "qwerty", first_name: "Raphael", last_name: "Cohen", address: "chemin Guelph, Montreal", description: "new waiter", phone: "555-514-1234", nickname: "Raphael")
# restaurants owners

waiter_one.avatar.attach(io: File.open('app/assets/images/georges.jpg'), filename: 'georges.jpg', content_type: 'image/jpg')
waiter_one.save!
waiter_two.avatar.attach(io: File.open('app/assets/images/sedrak.jpg'), filename: 'sedrak.jpg', content_type: 'image/jpg')
waiter_two.save!
waiter_three.avatar.attach(io: File.open('app/assets/images/martyn.jpg'), filename: 'martyn.jpg', content_type: 'image/jpg')
waiter_three.save!
waiter_four.avatar.attach(io: File.open('app/assets/images/raphael.jpg'), filename: 'raphael.jpg', content_type: 'image/jpg')
waiter_four.save!


p "creating restos"

# creating more seeds for the restaurant owners
all_restos = []
all_restos << User.create!(user_role: 1, email: "1@1.r", password: "qwerty", restaurant_name: "Trattoria Bellamore", nickname: "Trattoria", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "White-tablecloth Italian BYOB serving classic meat, seafood & pasta dishes in a quaint space.", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234", website: "https://trattoriabellamore.com/")
all_restos << User.create!(user_role: 1, email: "2@2.r", password: "qwerty", restaurant_name: "Le Mitoyen", nickname: "Mitoyen", address: "652 Rue de la Place Publique, Laval", restaurant_type: "Canadian", summary: "Area-sourced Québec tasting menus starring game & decadent desserts in a genteel country house.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234" , website: "https://restaurantlemitoyen.com/" )
all_restos << User.create!(user_role: 1, email: "3@3.r", password: "qwerty", restaurant_name: "Sterlings Steakhouse", nickname: "Sterlings", address: "165 Prom. Du Centropolis, Laval", restaurant_type: "American", summary: "Aged USDA prime steaks, fresh fish & a private wine cellar are offered in a sophisticated setting.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234", website: "http://www.sterlingsrestaurant.com/")
all_restos << User.create!(user_role: 1, email: "4@4.r", password: "qwerty", restaurant_name: "Le Vieux Four de Laval", nickname: "VFL", address: "St-Vincent-de-Paul, 5070 Bd Lévesque E, Laval", restaurant_type: "Italian", summary: "Sprawling family eatery for wood-fired, thin-crust pizzas, plus pastas & Italian classics.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234", website: "http://www.levieuxfour.net/")
all_restos << User.create!(user_role: 1, email: "5@5.r", password: "qwerty", restaurant_name: "Restaurant Amato", nickname: "Amato", address: "192 Bd Sainte-Rose, Laval", restaurant_type: "Italian", summary: "Set in an 1895 house, this refined white-tablecloth restaurant serves traditional Italian cuisine.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "6@6.r", password: "qwerty", restaurant_name: "La Serenata Restaurant", nickname: "Serenata", address: "53 Brunswick Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Fixture offering Italian wines & traditional dishes with a serenading accordion player on weekends.", rate: 19, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "7@7.r", password: "qwerty", restaurant_name: "Enoteca Monza Pizzeria Moderna", nickname: "EMPM", address: "3800 Boul Saint-Jean, Dollard-des-Ormeaux, Montreal", restaurant_type: "Italian", summary: "Polished Italian specialist for wood-fired panini & pizza, plus classic dishes & wines by the glass.", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "8@8.r", password: "qwerty", restaurant_name: "Del Friscos", nickname: "Friscos", address: "3237 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Hefty portions of familiar pastas & grilled meats (plus wood-oven pizzas) in an inviting room.", rate: 17, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "9@9.r", password: "qwerty", restaurant_name: "Madisons Restaurant & Bar", nickname: "Madisons", address: "11590 Salaberry Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Canadian", summary: "cozy place. nice service. delicious food ...", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "10@10.r", password: "qwerty", restaurant_name: "Pastamore", nickname: "Pastamore", address: "M-3343 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Good portions, great atmosphere, great service at a great price", rate: 14, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "11@11.r", password: "qwerty", restaurant_name: "Renoir Restaurant", nickname: "Renoir", address: "1155 Serbrook, Montreal", restaurant_type: "French", summary: "Eclectic-New French recipes offered in a high-end hotel restaurant with a terrace.", rate: 15, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "12@12.r", password: "qwerty", restaurant_name: "Estiatorio Milos", nickname: "Estiatorio", address: "5357 Park Ave, Montreal", restaurant_type: "Greek", summary: "Stylish Greek taverna with fresh seafood & a popular fixed-price lunch in a whitewashed setting.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "13@13.r", password: "qwerty", restaurant_name: "Baton Rouge", nickname: "BR", address: "5385 Rue des Jockeys, Montreal", restaurant_type: "Canadian", summary: "Bâton Rouge Steakhouse & Bar is a Canadian restaurant chain", rate: 18, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")
all_restos << User.create!(user_role: 1, email: "14@14.r", password: "qwerty", restaurant_name: "Bis", nickname: "Bis", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "Classic Italian cuisine, with gluten-free pastas & vegetarian choices, in a homey & elegant space.", rate: 16, description: "
Lorem ipsum", phone: "555-514-1234", website:"https://www.google.com/")

nums = (1..4).to_a
all_restos.each do |user|
  5.times do
    num = nums.sample
    user.photos.attach(io: File.open("app/assets/images/resto#{num}.jpg"), filename: "resto#{num}.jpg", content_type: 'image/jpg')
    user.save!
  end
end
# resto_one.photos.attach(io: File.open('app/assets/images/resto1.jpg'), filename: 'resto1.jpg', content_type: 'image/jpg')
# resto_one.save!
# resto_two.photos.attach(io: File.open('app/assets/images/resto2.jpg'), filename: 'resto2.jpg', content_type: 'image/jpg')
# resto_two.save!
# resto_three.photos.attach(io: File.open('app/assets/images/resto3.jpg'), filename: 'resto3.jpg', content_type: 'image/jpg')
# resto_three.save!
# resto_four.photos.attach(io: File.open('app/assets/images/resto4.jpg'), filename: 'resto4.jpg', content_type: 'image/jpg')
# resto_four.save!

# application seeds
p "creating applications"
Application.create!(waiter: waiter_one, restaurant: all_restos[0], start_date: Date.new(2022,3,3), end_date: Date.new(2022,3,7), rating: 4, creator: waiter_one)
Application.create!(waiter: waiter_one, restaurant: all_restos[0], start_date: Date.new(2022,3,12), end_date: Date.new(2022,3,16), rating: 4, creator: waiter_one)
Application.create!(waiter: waiter_two, restaurant: all_restos[1], start_date: Date.new(2022,3,8), end_date: Date.new(2022,3,15), rating: 3, creator: waiter_two)
Application.create!(waiter: waiter_two, restaurant: all_restos[1], start_date: Date.new(2022,3,16), end_date: Date.new(2022,3,22), rating: 3, creator: waiter_two)
Application.create!(waiter: waiter_three, restaurant: all_restos[2], start_date: Date.new(2022,3,3), end_date: Date.new(2022,3,7), rating: 5, creator: all_restos[2])
Application.create!(waiter: waiter_three, restaurant: all_restos[2], start_date: Date.new(2022,3,23), end_date: Date.new(2022,3,29),rating: 5, creator: waiter_three)
Application.create!(waiter: waiter_four, restaurant: all_restos[3], start_date: Date.new(2022,3,8), end_date: Date.new(2022,3,15), rating: 4, creator: all_restos[3])
Application.create!(waiter: waiter_four, restaurant: all_restos[3], start_date: Date.new(2022,3,17), end_date: Date.new(2022,3,23), rating: 4, creator: all_restos[3])
p "applications created"

p "creating test chatroom"
chat1 = Chatroom.new(name: 'test')
chat1.waiter = waiter_three
chat1.restaurant = all_restos.first
chat1.save!
