# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB from restaurants"
Restaurant.delete_all

puts "Creating 5 random restaurants"
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: Restaurant::CATEGORIES.sample
    # rating: rand(5)
  )
  puts "Created #{restaurant}"
  puts "Name: #{restaurant.name}"
  puts "Address: #{restaurant.address}"
  puts "Phone Number: #{restaurant.phone_number}"
  puts "Category: #{restaurant.category}"
  puts ''
end
