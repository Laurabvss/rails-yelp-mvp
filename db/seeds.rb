# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 0611156273 }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 0611156273, }
chez_mai = { name: "Chez mai", address: "Bali", phone_number: 0611156273, }
arnoult_pizza = { name: "Arnould pizza", address: "Corée du Sud", phone_number: 0611156273, }
paul_prot = { name: "Paul prot", address: "Annecy", phone_number: 0611156273, }

[dishoom, pizza_east, chez_mai, arnoult_pizza, paul_prot].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
