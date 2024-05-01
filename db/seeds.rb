# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
categories = ["chinese", "italian", "japanese", "french", "belgian"]

# Create 5 restaurants with different attributes
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants_attributes = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "123-456-7890", category: "indian" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "234-567-8901", category: "italian" },
  { name: "Sushi Bar", address: "123 Main St, Tokyo", phone_number: "345-678-9012", category: "japanese" },
  { name: "La Brasserie", address: "456 Rue de Rivoli, Paris", phone_number: "456-789-0123", category: "french" },
  { name: "Belgian Bistro", address: "789 Grand Place, Brussels", phone_number: "567-890-1234", category: "belgian" }
]

restaurants_attributes.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
