# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "g@g.g", password: "qwerty", first_name: "Georges", last_name: "Chami", address: "5333 Av. Casgrain Apt 101", description: "new waiter")
User.create(email: "s@s.s", password: "qwerty", first_name: "Sedrak", last_name: "Nadzharyan", address: "5333 Av. Casgrain Apt 102", description: "new waiter")
User.create(email: "m@m.m", password: "qwerty", first_name: "Martyn", last_name: "McGowan", address: "5333 Av. Casgrain Apt 103", description: "new waiter")
User.create(email: "r@r.r", password: "qwerty", first_name: "Raphael", last_name: "Cohen", address: "5333 Av. Casgrain Apt 104", description: "new waiter")

User.create(user_role: 1, email: "g1@g.g", password: "qwerty", restaurant_name: "Renoir Restaurant", address: "1155 Serbrook", description: "Eclectic-New French recipes offered in a high-end hotel restaurant with a terrace.", rate: 4.5)
User.create(user_role: 1, email: "s1@s.s", password: "qwerty", restaurant_name: "Estiatorio Milos", address: "5357 Park Ave ", description: "Stylish Greek taverna with fresh seafood & a popular fixed-price lunch in a whitewashed setting.", rate: 4.6)
User.create(user_role: 1, email: "m1@m.m", password: "qwerty", restaurant_name: "Baton Rouge", address: "5385 Rue des Jockeys", description: "Bâton Rouge Steakhouse & Bar is a Canadian restaurant chain", rate: 4.2)
User.create(user_role: 1, email: "r1@r.r", password: "qwerty", restaurant_name: "Bis", address: "1229 Rue de la Montagne", description: "Classic Italian cuisine, with gluten-free pastas & vegetarian choices, in a homey & elegant space.", rate: 3.9)
