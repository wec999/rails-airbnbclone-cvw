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

Flat.create(user_id: 1, name: "Mountain View Flat", address: "Leticia", photo: "images/hut1.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.",
price: 50, latitude: -4, longitude: -70)

Flat.create(user_id: 1, name: "Mountain View Flat", address: "Manaus", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.",
price: 40, latitude: -4, longitude: -70)

Flat.create(user_id: 1, name: "Mountain View Flat", address: "Leticia", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "test", price: 30, latitude: -4, longitude: -70)

Flat.create(user_id: 1, name: "Mountain View Flat", address: "Manaus", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.",
price: 20, latitude: -4, longitude: -70)

Flat.create(user_id: 2, name: "Mountain View Flat", address: "Leticia", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.",
price: 10, latitude: -4, longitude: -70)

Flat.create(user_id: 3, name: "Mountain View Flat", address: "Manaus", photo: "image/upload/v1526616977/hyomzbfnzelev0v4tv56.jpg", description: "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi).
Trullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view.
It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.
You can even easily visit any of the sights in Apulia such as the caves of Castellana, the trulli of Alberobello, the baroque cities of Lecce and Martina Franca, the excavations of Egnazia, the zoosafari of Fasano, Castel del Monte with Frederick's castle, Grottaglie famous for its ceramics, Taranto, Brindisi and Lecce museums.",
price: 50, latitude: -4, longitude: -70)


Booking.create(start_date: "2018-06-01", end_date: "2018-06-08", total_price: 150, status: "pending", user_id: 1, flat_id: 13)
Booking.create(start_date: "2018-04-01", end_date: "2019-04-01", total_price: 1000000, status: "pending", user_id:1, flat_id: 25)
