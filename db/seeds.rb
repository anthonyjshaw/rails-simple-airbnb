# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flat_name = Faker::Hipster.sentence
desc = Faker::Hipster.paragraph
address = Faker::Address.street_address
price = Faker::Number.decimal(l_digits: 2)
guests = Faker::Number.number(digits: 2)

10.times do
  flat = Flat.new(name: flat_name, address: address, description: desc, price_per_night: price, number_of_guests: guests)
  flat.save if flat.valid?
end
