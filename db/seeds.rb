# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

puts "Cleaning DataBase"
Car.destroy_all
puts "Creating Cars"

Car.create(price_per_day: 77.50, brand: "Audi", seats: 5, color: "White", automatic: false, bluetooth: true, fuel_type: "Petrol")
Car.create(price_per_day: 121.75, brand: "BMW", seats: 7, color: "Blue", automatic: true, bluetooth: true, fuel_type: "Petrol")
Car.create(price_per_day: 100.00, brand: "BMW", seats: 5, color: "Black", automatic: false, bluetooth: true, fuel_type: "Petrol")
Car.create(price_per_day: 99.99, brand: "Audi", seats: 5, color: "White", automatic: true, bluetooth: false, fuel_type: "Diesel")
Car.create(price_per_day: 250.50, brand: "Lamborghini", seats: 2, color: "Yellow", automatic: true, bluetooth: true, fuel_type: "Petrol")
Car.create(price_per_day: 175.10, brand: "Mercedes", seats: 5, color: "Black", automatic: true, bluetooth: true, fuel_type: "Diesel")
Car.create(price_per_day: 225.25, brand: "Ferrari", seats: 2, color: "Red", automatic: true, bluetooth: true, fuel_type: "Petrol")

puts "Finished"

#   end
