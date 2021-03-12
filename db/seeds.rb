# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dealerships = Dealership.create([{name: 'NYC'}, {name: 'DC'}, {name: 'Philly'}, {name: 'Denver'}])

cars = Car.create([{make: 'honda', new: false, price: 2000.00, dealership_ids: [1,2]}, {make: 'toyota', new: false, price: 4000.00, dealership_ids: [1,2,4]}, {make: 'chevy', new: true, price: 1000.00, dealership_ids: [2]}, {make: 'ford', new: true, price: 8000.00, dealership_ids: [1]}])

user = User.create(email: 'user@test.com', password: 'foobar', password_confirmation: 'foobar')

admin = User.create(email: 'admin@test.com', password: 'foobar', password_confirmation: 'foobar', user_type: 1)
