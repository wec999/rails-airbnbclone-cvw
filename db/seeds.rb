# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Valerie Schraauwers", email: "valerie@valerie.com", password: "password")
User.create(name: "Chelsea Stortz", email: "chelsea@chelsea.com", password: "password")
User.create(name: "William Calderon", email: "william@william.com", password: "password")

images = []

f = Flat.new(user_id: 1, name: "Mountain View Flat", address: "Manaus", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue aliquam ornare. Aliquam feugiat magna et elit congue, a egestas urna tincidunt. Nam enim ex, condimentum sit amet maximus eu, vulputate et dui. Proin bibendum lacus ac risus maximus dictum. Aenean malesuada, enim ac feugiat elementum, nibh ex finibus ipsum.",
price: 40, latitude: -4, longitude: -70)
f.remote_photo_url =  "https://a0.muscache.com/im/pictures/21611933/43f6de69_original.jpg?aki_policy=xx_large"
f.save

f = Flat.new(user_id: 2, name: "Jungle View Flat", address: "Leticia", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue aliquam ornare. Aliquam feugiat magna et elit congue, a egestas urna tincidunt. Nam enim ex, condimentum sit amet maximus eu, vulputate et dui. Proin bibendum lacus ac risus maximus dictum. Aenean malesuada, enim ac feugiat elementum, nibh ex finibus ipsum.",
price: 40, latitude: -4, longitude: -69)
f.remote_photo_url =  "https://a0.muscache.com/im/pictures/85695860/6bc94bff_original.jpg?aki_policy=xx_large"
f.save

f = Flat.new(user_id: 3, name: "Leopard View Flat", address: "Leticia", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue aliquam ornare. Aliquam feugiat magna et elit congue, a egestas urna tincidunt. Nam enim ex, condimentum sit amet maximus eu, vulputate et dui. Proin bibendum lacus ac risus maximus dictum. Aenean malesuada, enim ac feugiat elementum, nibh ex finibus ipsum.",
price: 40, latitude: -4, longitude: -68)
f.remote_photo_url =  "https://a0.muscache.com/im/pictures/85693430/58132949_original.jpg?aki_policy=x_large"
f.save

Booking.create(start_date: "2018-06-01", end_date: "2018-06-08", total_price: 150, status: "pending", user_id: 1, flat_id: 2)
Booking.create(start_date: "2018-04-01", end_date: "2019-04-01", total_price: 1000000, status: "pending", user_id:1, flat_id: 3)
