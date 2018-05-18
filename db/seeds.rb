# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "john@gmail.com", password: "password")
User.create(email: "carol@gmail.com", password: "password")
User.create(email: "bill@gmail.com", password: "password")
User.create(email: "val@gmail.com", password: "password")
User.create(email: "bla@bla.com", password: "blabla")
User.create(email: "la@la.com", password: "lalala")
User.create(email: "ba@ba.com", password: "bababa")
User.create(email: "val@val.com", password: "valerie")

Flat.create(user_id: 1, name: "Mountain View Flat", location: "this address", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 1, name: "Ocean View Flat", location: "another address", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "overlooking the pacific ocean", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 2, name: "Mountain View Flat 2", location:"address", photo: "photo 3", description: "overlooking ocean with mountain backdrop", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 3, name: "Downtown flat", location: "downtown address", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "beautiful flat - ideal location- central downtown", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 4, name: "Brand New Apartment", location: "new address", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "brand new apartment, ideal location", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 4, name: "Trendy Flat", location: "downtown address", photo: "another photo", description: "another apartment", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 1, name: "Cool flat", location: "this address", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "text", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 4, name: "Awesome flat", location: "this address3", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "text3", price: 50, latitude: 40, longitude: 2)
Flat.create(user_id: 4, name: "Very cool flat", location: "this address3", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "text3", price: 50, latitude: 40, longitude: 2)




Booking.create(start_date: "2018-06-01", end_date: "2018-06-08", total_price: 150, status: "pending", user_id: 1, flat_id: 13)
Booking.create(start_date: "2018-04-01", end_date: "2019-04-01", total_price: 1000000, status: "pending", user_id:1, flat_id: 25)
