# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    

# db/seeds.rb
puts "Cleaning database..."

puts "Creating restaurants..."
le_Mandarin = { name: "Le Mandarin", address: "rue de la Paix", category: "chinese" }
le_corbeau =  { name: "Le Corbeau", address: "Avenue Montaigne", category: "italian" }
la_ficelle =  { name: "La Ficelle", address: "Bd Victor Hugo", category: "japonese" }
a_la_bonne_franquette =  { name: "A la bonne franquette", address: "Time Square", category: "french" }
chez_toto =  { name: "Chez Toto", address: "Time Square", category: "french" }

[le_Mandarin, le_corbeau, la_ficelle, a_la_bonne_franquette, chez_toto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
