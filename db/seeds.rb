# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brian = User.create(first_name: "brian", last_name: "boisvert", email: "bboisvert@gmail.com", password: "secret", bio: "this is the bio", cat_1: 'Home & Living', cat_2: 'Bedding', cat_3: 'Paper')
elisa = User.create(first_name: "elisa", last_name: "vaccaro", email: "evaccaro@gmail.com", password: "secret2", bio: "this is the bio", cat_1: 'Paper', cat_2: 'Bedding', cat_3: 'Accessories')
winter = User.create(first_name: "winter", last_name: "lamon", email: "wlamon@gmail.com", password: "secret3", bio: "this is the bio", cat_1: 'Books', cat_2: 'Home & Living', cat_3: 'Prints')
tim = User.create(first_name: "tim", last_name: "campbell", email: "tcampbell@gmail.com", password: "secret4", bio: "this is the bio", cat_1: 'Paper', cat_2: 'Books', cat_3: 'Drinkware')

first_event = Event.create(title: "first", date: "07/07/17", spending_limit: 50, location: "nyc", occasion: "christmas")
second_event = Event.create(title: "second", date: "07/10/18", spending_limit: 25, location: "nj", occasion: "kwanzaa")
third_event = Event.create(title: "third", date: "08/09/19", spending_limit: 30, location: "brooklyn", occasion: "channukkah")
fourth_event = Event.create(title: "fourth", date: "10/07/19", spending_limit: 40, location: "queens", occasion: "ramadan")

gift1 = Gift.create(name: "mittens", price: 20)
gift2 = Gift.create(name: "scarf", price: 30)
gift3 = Gift.create(name: "hat", price: 50)
gift4 = Gift.create(name: "gloves", price: 10)



userevent1 = UserEvent.create(event_id: first_event.id, user_id: tim.id)
userevent2 = UserEvent.create(event_id: second_event.id, user_id: brian.id)
userevent3 = UserEvent.create(event_id: third_event.id, user_id: elisa.id)
userevent4 = UserEvent.create(event_id: fourth_event.id, user_id: winter.id)
userevent5 = UserEvent.create(event_id: first_event.id, user_id: brian.id)
userevent6 = UserEvent.create(event_id: first_event.id, user_id: winter.id)
userevent7 = UserEvent.create(event_id: first_event.id, user_id: elisa.id)
