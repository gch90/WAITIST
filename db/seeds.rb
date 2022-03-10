# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# users
p "start seed"
Application.delete_all
p "deleted applications"
Message.delete_all
p "deleted messages"
Chatroom.delete_all
p "deleted chatrooms"
User.delete_all
p "deleted users"
p "creating users"
waiters = []
waiters << User.create!(user_role: 0, email: "g@g.g", password: "qwerty", first_name: "Georges", last_name: "Chami", address: "gohier st, Montreal", description: "Dedicated waiter with six years of exemplary service in the food service industry. Committed to providing helpful, fast, and accurate service to patrons. Demonstrate active listening and communication skills to ensure patrons are satisfied and happy. Experience in various settings, including family restaurants, bars, cafeterias, banquets, and room service. Comfortable serving patrons of various age ranges and backgrounds. Determined team player striving to deliver the highest quality service alongside food service staff.", phone: "555-514-1234", nickname: "George")
waiters <<  User.create!(user_role: 0, email: "s@s.s", password: "qwerty", first_name: "Sedrak", last_name: "Nadzharyan", address: "rue dale, Laval", description: "Personable waiter with more than 4 years of restaurant experience providing table service at busy dining establishments in the Anchorage business district. Achieved a 99.5% guest satisfaction score or above in each of the past 24 months. Seeking to leverage excellent order recall, friendly service, and the ability to handle multiple tables and groups to become the new waitress at Fabricio’s Fine Foods.", phone: "555-514-1234", nickname: "Sedrak")
waiters <<  User.create!(user_role: 0, email: "m@m.m", password: "qwerty", first_name: "Martyn", last_name: "McGowan", address: "Oxford Avenue, Montreal", description: "Efficient waiter with 4+ years of restaurant experience in high-volume, upscale dining establishments in downtown Minneapolis. Maintained a 96% guest rating in the past 3 years. Seeking to use high-level guest service skills, excellent food order recall, and the ability to serve multiple tables at once to become a valued waiter at The Clever Caracal Restaurant.", phone: "555-514-1234", nickname: "Martyn")
waiters <<  User.create!(user_role: 0, email: "r@r.r", password: "qwerty", first_name: "Raphael", last_name: "Cohen", address: "chemin Guelph, Montreal", description: "Waiter highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Raphael")
waiters <<  User.create!(user_role: 0, email: "w1@w.w", password: "qwerty", first_name: "Marie-Gabrielle", last_name: "Ayoub", address: "Casgrain Av, Montreal", description: "Waiteress highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "MG")
waiters <<  User.create!(user_role: 0, email: "w2@w.w", password: "qwerty", first_name: "Stephane", last_name: "Lafontaine", address: "Casgrain Av, Montreal", description: "Waiter highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Stephane")
waiters <<  User.create!(user_role: 0, email: "w3@w.w", password: "qwerty", first_name: "Esteban", last_name: "Palacio", address: "4e Rue, Laval", description: "Waiter highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Esteban")
waiters <<  User.create!(user_role: 0, email: "w4@w.w", password: "qwerty", first_name: "Ines", last_name: "Alvergne", address: "Rue Lake, Dollard-des-Ormeaux", description: "Waiteress highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Ines")
waiters <<  User.create!(user_role: 0, email: "w5@w.w", password: "qwerty", first_name: "Enya", last_name: "Leger", address: "Rue Saint-Denis, Montreal", description: "Waiteress highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Enya")
waiters <<  User.create!(user_role: 0, email: "w6@w.w", password: "qwerty", first_name: "Victor", last_name: "Bianchi", address: "Rue Sainte-Catherine Ouest, Montreal", description: "Waiter highly effective at anticipating and accommodating customer needs. Friendly, punctual and enthusiastic team player. Excellent international people experience, dealing with complaints, strong sales skills, cross functional working.", phone: "555-514-1234", nickname: "Victor")

# restaurants owners
waiters.each do |wait|
  wait.avatar.attach(io: File.open("app/assets/images/waiters/#{wait.first_name.downcase}.jpg"), filename: "#{wait.first_name.downcase}.jpg", content_type: 'image/jpg')
  wait.cv.attach(io: File.open('app/assets/images/CVGeorge1.jpg'), filename: 'CVGeorge1.jpg', content_type: 'image/jpg')
  wait.save!
end
# my_restos[0].avatar.attach(io: File.open('app/assets/images/waiters/georges.jpg'), filename: 'georges.jpg', content_type: 'image/jpg')
# my_restos[0].save!
# waiter_two.avatar.attach(io: File.open('app/assets/images/waiters/sedrak.jpg'), filename: 'sedrak.jpg', content_type: 'image/jpg')
# waiter_two.save!
# my_restos[2].avatar.attach(io: File.open('app/assets/images/waiters/martyn.jpg'), filename: 'martyn.jpg', content_type: 'image/jpg')
# my_restos[2].save!
# my_restos[3].avatar.attach(io: File.open('app/assets/images/waiters/raphael.jpg'), filename: 'raphael.jpg', content_type: 'image/jpg')
# my_restos[3].save!

# my_restos[0].cv.attach(io: File.open('app/assets/images/CVGeorge1.jpg'), filename: 'CVGeorge1.jpg', content_type: 'image/jpg')
# my_restos[0].save!
p "creating restos"

# creating more seeds for the restaurant owners
my_restos = []
my_restos << User.create!(user_role: 1, email: "1@1.r", password: "qwerty", restaurant_name: "Trattoria Bellamore", nickname: "Trattoria", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "We are currently looking for a nice colleague for a part time with us in ristorante or in shipping. We provide industry leading training and support for those who join our team.", rate: 15, description: "Fresh, savoury, home-made, food served just like grandma’s Sunday meals: with a modern twist. Our authentic Italian home-style cooking can be enjoyed on any occasion. Whether you are surrounded by friends, family, or your significant other, Bellamore’s warm, comfortable, and welcoming environment will set the mood for any special evening. As our name signifies beautiful love, we believe there is no love more beautiful than the one which is felt when eating a delicious meal with cherished company. We hope you enjoy our selection of dishes. Please do not hesitate if there are any special requests, our chef will be happy to oblige.Now make a toast to a wonderful evening, take a sip of that great wine and Buon appetito!", phone: "555-514-1234", website: "https://trattoriabellamore.com/")
my_restos << User.create!(user_role: 1, email: "2@2.r", password: "qwerty", restaurant_name: "Le Mitoyen", nickname: "Mitoyen", address: "652 Rue de la Place Publique, Laval", restaurant_type: "Canadian", summary: "Join our team!! Very busy, fun and exciting environment. Experience would be considered an asset but we are willing to teach people with great attitudes.", rate: 16, description: "Some restaurants live off their reputation. Others take it seriously. Le Mitoyen is one of them. It has been one of the best restaurants in Quebec for over 40 years. Le Mitoyen is a refined stopover, both in its cuisine and in its country house decor. All this without pretension. An obligatory stop in the circuit of good restaurants! When many play it safe, Chef Bastien launches into a wise fantasy, but dazzlingly precise. Lamb from the Townships, Angus beef, piglet from the Lower Laurentians satisfy a loyal clientele. Others are tempted by suggestions of fish and seafood depending on the arrivals. The service is welcoming, it is done with great seriousness. The wine list offers a selection of great discoveries and favors private import products.", phone: "555-514-1234" , website: "https://restaurantlemitoyen.com/" )
my_restos << User.create!(user_role: 1, email: "3@3.r", password: "qwerty", restaurant_name: "Sterlings Steakhouse", nickname: "Sterlings", address: "165 Prom. Du Centropolis, Laval", restaurant_type: "American", summary: "Now Hiring Highly motivated, bilingual servers ,for upscale steakhouse", rate: 16, description: "When it comes to steak, fish and seafood, Sterlings Steakhouse is the place to be. Ranked among the top three steakhouses in the region, Sterlings Steakhouse offers casual dining in an elegant and relaxing atmosphere. Featuring the finest cuts of meat and fresh fish selected daily, then grilled over real charcoal to bring out the natural flavors. A true gourmet experience awaits you! The private cellar is a wine lover’s delight. Exceptional service makes Sterlings Steakhouse a great choice for any occasion. Sterlings Steakhouse only offers USDA prime beef, aged 30 to 35 days and hand carved daily. All our steaks are grilled to perfection on a real open wood charcoal pit, to sear in the juices and insure taste and tenderness.", phone: "555-514-1234", website: "http://www.sterlingsrestaurant.com/")
my_restos << User.create!(user_role: 1, email: "4@4.r", password: "qwerty", restaurant_name: "Le Vieux Four de Laval", nickname: "LVFL", address: "St-Vincent-de-Paul, 5070 Bd Lévesque E, Laval", restaurant_type: "Italian", summary: "Our busy restaurant is looking for a friendly and competent waiter/waitress to make sure our diners have a memorable experience. Since the quality of our service is crucial to success, the ideal candidate should possess clear communication skills, patience and attentiveness.", rate: 18, description: "Le Vieux Four is an excellent restaurant in Laval, more in the style of an Italian cafeteria. The antipasti make excellent appetizers full of Italian flavours, and come hot or cold, best served with an aperitif or with the meal. If making pasta at home, all the needed ingredients are available here as well. But when eating at Il Miglio, choose from three appetizers, three pasta and a few dishes with sauces, including lasagna, meatballs and stuffed pasta. These are all perfectly cooked and the delicious sauces sweep you off your feet.", phone: "555-514-1234", website: "http://www.levieuxfour.net/")
my_restos << User.create!(user_role: 1, email: "5@5.r", password: "qwerty", restaurant_name: "Restaurant Amato", address: "192 Bd Sainte-Rose, Laval", restaurant_type: "Italian", summary: "Looking for a new waiter/waitress. Our servers are friendly people who are passionate about gourmet products. They offer outstanding service and share their enthusiasm about food with all of our customers.", rate: 18, description: "We are located in the very heart of old Sainte-Rose in Laval, in an ancestral house built in 1895. We renovated and expanded in 2004 and we opened the Amato restaurant in December of the same year. We are very proud of our little piece of paradise – especially our terrace. It is recognized as one of the most beautiful terraces in Laval, and even in Quebec. In addition to feeling amazed in a garden with all the stunning flowers, the terrace includes a fountain, a gazebo as well as a section with curtains and auxiliary heating. With a warm decor and authentic Italian cuisine, our restaurant is very intimate with only 10 tables inside and a capacity of around 35 people outside.", phone: "+1 450-624-1206", website: "https://restaurantamato.com/")
my_restos << User.create!(user_role: 1, email: "6@6.r", password: "qwerty", restaurant_name: "Joe's Panini", nickname: "Joe's", address: "1404 Drummond Street, Montreal", restaurant_type: "Italian", summary: "Currently looking for new staff for our client! We are looking for people who excel in customer service and who enjoy working in a team.", rate: 18, description: "Located in the heart of downtown Montreal, Joe's Panini has been a staple in Montreal for over 30 years. Whether it's for breakfast, lunch breaks or late night snacks, the doors of Joe's Panini are open 24 hours a day, 7 days a week. Loved by people from all over the city, the restaurant was voted by the Gazette as the # 1 place serving the best paninis on the island! Come taste one of our 25 famous classic sandwiches as well as our salad varieties to understand why the Montrealers have given us this beautiful title.", phone: "555-514-1234", website: "https://joespanini.com/")

p "creating  other restos"

other_restos = []
other_restos << User.create!(user_role: 1, email: "7@7.re", password: "qwerty", restaurant_name: "Enoteca Monza Pizzeria Moderna", address: "3800 Boul Saint-Jean, Dollard-des-Ormeaux, Montreal", restaurant_type: "Italian", summary: "Polished Italian specialist for wood-fired panini & pizza, plus classic dishes & wines by the glass.", rate: 18, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "8@8.re", password: "qwerty", restaurant_name: "Del Friscos", address: "3237 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Hefty portions of familiar pastas & grilled meats (plus wood-oven pizzas) in an inviting room.", rate: 17, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "9@9.re", password: "qwerty", restaurant_name: "Madisons Restaurant & Bar", address: "11590 Salaberry Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Canadian", summary: "cozy place. nice service. delicious food ...", rate: 15, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "10@10.re", password: "qwerty", restaurant_name: "Pastamore", address: "M-3343 Sources Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Good portions, great atmosphere, great service at a great price", rate: 14, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "11@11.re", password: "qwerty", restaurant_name: "Renoir Restaurant", address: "1155 Serbrook, Montreal", restaurant_type: "French", summary: "Eclectic-New French recipes offered in a high-end hotel restaurant with a terrace.", rate: 15, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "12@12.re", password: "qwerty", restaurant_name: "Estiatorio Milos", address: "5357 Park Ave, Montreal", restaurant_type: "Greek", summary: "Stylish Greek taverna with fresh seafood & a popular fixed-price lunch in a whitewashed setting.", rate: 16, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "13@13.re", password: "qwerty", restaurant_name: "Baton Rouge", address: "5385 Rue des Jockeys, Montreal", restaurant_type: "Canadian", summary: "Bâton Rouge Steakhouse & Bar is a Canadian restaurant chain", rate: 18, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "14@14.re", password: "qwerty", restaurant_name: "Bis", address: "1229 Rue de la Montagne, Montreal", restaurant_type: "Italian", summary: "Classic Italian cuisine, with gluten-free pastas & vegetarian choices, in a homey & elegant space.", rate: 16, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "16@16.re", password: "qwerty", restaurant_name: "Gaja Restaurant", address: "177 Rue Bernard O, Montréal", restaurant_type: "Korean", summary: "Korean family recipes, with bulgogi & bibimbop, in a welcoming corner venue with quirky accents.", rate: 15, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "17@17.re", password: "qwerty", restaurant_name: "Petit Seoul", address: "5245 Boulevard St Laurent, Montreal", restaurant_type: "Korean", summary: "Warm, stylish outpost offering homey Korean fare such as spicy noodles, BBQ & beef tartare.", rate: 16, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "18@18.re", password: "qwerty", restaurant_name: "Omma", address: "51 Rue Ontario O, Montréal", restaurant_type: "Korean", summary: "Relaxed yet refined dining room where classic Korean cooking is featured with beer & soju.", rate: 17, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)
other_restos << User.create!(user_role: 1, email: "19@19.re", password: "qwerty", restaurant_name: "La Serenata Restaurant", address: "53 Brunswick Blvd, Dollard-Des Ormeaux, Montreal", restaurant_type: "Italian", summary: "Fixture offering Italian wines & traditional dishes with a serenading accordion player on weekends.", rate: 19, description: Faker::Restaurant.description, phone: Faker::Config.locale = 'en-CA', website: Faker::Internet.url)

nums = (5..17).to_a
other_restos.each do |user|
  5.times do
    num = nums.sample
    user.photos.attach(io: File.open("app/assets/images/rand_restos/resto#{num}.jpg"), filename: "resto#{num}.jpg", content_type: 'image/jpg')
    user.save!
  end
end

# Creating random restos
p "Creating random restos"
resto_types = %w[italian french korean greek american canadian]
all_restos = (7..37).to_a
all_restos.map do |i|
  resto = User.create!(user_role: 1, email: "#{i}@#{i}.r", password: "qwerty", restaurant_name: Faker::Restaurant.name , address: Faker::Address.full_address, restaurant_type: resto_types.sample , summary: Faker::Restaurant.description, rate: (14..24).to_a.sample, description: Faker::Restaurant.description, phone: Faker::PhoneNumber.cell_phone, website: Faker::Internet.url)
  5.times do
    num = (5..17).to_a.sample
    resto.photos.attach(io: File.open("app/assets/images/rand_restos/resto#{num}.jpg"), filename: "resto#{num}.jpg", content_type: 'image/jpg')
    resto.save!
  end
end

my_restos.each_with_index do |user, resto_num|
  5.times do |i|
    p i
    user.photos.attach(io: File.open("app/assets/images/my_restos/resto_#{resto_num+1}_#{i+1}.jpg"), filename: "resto#{resto_num+1}_#{i+1}.jpg", content_type: 'image/jpg')
    user.save!
  end
end

p "creating applications"

waiter_comments = ["It was great working there!", "Highly recommend", "I will come back to work here again"]
resto_comments = ["It was great working with you!", "Highly recommend to work with", "Great personality", "Very efficient !", "Come back anytime !"]
applications = []

applications << Application.create!(waiter: waiters[0], restaurant: my_restos[0], creator: waiters[0], status: 1, start_time: Date.new(2022,2,28), end_time: Date.new(2022,3,2), rating: 4 )
Application.create!(waiter: waiters[0], restaurant: my_restos[0], creator: my_restos[0], status: 1, start_time: Date.new(2022,3,2), end_time: Date.new(2022,3,4), rating: 5)
applications << Application.create!(waiter: waiters[1], restaurant: my_restos[0], creator: waiters[1], status: 1, start_time: Date.new(2022,3,7), end_time: Date.new(2022,3,9),rating: 5 )
applications << Application.create!(waiter: waiters[1], restaurant: my_restos[1], creator: my_restos[1], start_time: Date.new(2022,4,8), end_time: Date.new(2022,4,8), rating: 4)
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[0], creator: waiters[2], start_time: Date.new(2022,4,11), end_time: Date.new(2022,4,15), rating: 4)
applications << Application.create!(waiter: waiters[3], restaurant: my_restos[0], creator: waiters[3], status: 1, start_time: Date.new(2022,2,21), end_time: Date.new(2022,2,25), rating: 4)
applications << Application.create!(waiter: waiters[0], restaurant: my_restos[2], creator: waiters[0], status: 1, start_time: Date.new(2022,2,28), end_time: Date.new(2022,3,4), rating: 4 )
applications << Application.create!(waiter: waiters[1], restaurant: my_restos[3], creator: my_restos[3], start_time: Date.new(2022,3,21), end_time: Date.new(2022,3,25), rating: 5)
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[4], creator: waiters[3], start_time: Date.new(2022,3,28), end_time: Date.new(2022,4,1),rating: 5 )
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[5], creator: my_restos[5], start_time: Date.new(2022,4,8), end_time: Date.new(2022,4,8), rating: 4 )
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[2], creator: my_restos[2], start_time: Date.new(2022,4,11), end_time: Date.new(2022,4,15), rating: 4 )
applications << Application.create!(waiter: waiters[0], restaurant: my_restos[4], creator: my_restos[4], status: 1, start_time: Date.new(2022,2,21), end_time: Date.new(2022,2,25), rating: 4 )
applications << Application.create!(waiter: waiters[1], restaurant: my_restos[1], creator: waiters[1], status: 1, start_time: Date.new(2022,2,21), end_time: Date.new(2022,2,25), rating: 4 )
applications << Application.create!(waiter: waiters[5], restaurant: my_restos[0], creator: waiters[5], status: 0, start_time: Date.new(2022,3,14), end_time: Date.new(2022,3,17), rating: 4 )
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[3], creator: waiters[2], status: 1, start_time: Date.new(2022,2,21), end_time: Date.new(2022,2,22), rating: 4 )
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[4], creator: waiters[2], status: 1, start_time: Date.new(2022,2,22), end_time: Date.new(2022,2,25), rating: 4 )
applications << Application.create!(waiter: waiters[2], restaurant: my_restos[5], creator: waiters[2], status: 1, start_time: Date.new(2022,2,28), end_time: Date.new(2022,2,30), rating: 4 )

applications.each do |application|
  if application.approved? && Date.today > application.end_time
  application.waiter_rating = rand(7..10)
  application.waiter_comment = waiter_comments.sample
  application.restaurant_rating = rand(7..10)
  application.restaurant_comment = resto_comments.sample
  application.save!
  end
end

p "applications created"

p "Seeding Success...  P-A-R-T-Y   T-I-M-E"

Chatroom.create!(waiter: waiters[2], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[0], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[0], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[0], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[2], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[2], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[3], restaurant: my_restos[0])
# Chatroom.create!(waiter: waiters[3], restaurant: my_restos[0])








# nums = (5..17).to_a
# all_restos.each do |user|
#   5.times do
#     num = nums.sample
#     user.photos.attach(io: File.open("app/assets/images/rand_restos/resto#{num}.jpg"), filename: "resto#{num}.jpg", content_type: 'image/jpg')
#     user.save!
#   end
# end


# resto_one.photos.attach(io: File.open('app/assets/images/resto1.jpg'), filename: 'resto1.jpg', content_type: 'image/jpg')
# resto_one.save!
# resto_two.photos.attach(io: File.open('app/assets/images/resto2.jpg'), filename: 'resto2.jpg', content_type: 'image/jpg')
# resto_two.save!
# resto_three.photos.attach(io: File.open('app/assets/images/resto3.jpg'), filename: 'resto3.jpg', content_type: 'image/jpg')
# resto_three.save!
# resto_four.photos.attach(io: File.open('app/assets/images/resto4.jpg'), filename: 'resto4.jpg', content_type: 'image/jpg')
# resto_four.save!

# application seeds
