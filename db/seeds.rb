# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

puts "Cleaning DataBase"

Booking.destroy_all
Car.destroy_all
User.destroy_all
puts "Creating Cars"
user = User.create!(email: "test@test.com", password: "123456")

car_1 = Car.new(price_per_day: 77.50, model: "rs3", brand: "Audi", seats: 5, color: "Green", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_1.user = user
car_1.save!
car_2= Car.new(price_per_day: 121.75, model: "i8", brand: "BMW", seats: 2, color: "Grey", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_2.user = user
car_2.save!
car_3 = Car.new(price_per_day: 100.00, model: "X5", brand: "BMW", seats: 5, color: "Black", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_3.user = user
car_3.save!
car_4 = Car.new(price_per_day: 99.99, model: "r8", brand: "Audi", seats: 2, color: "Grey", automatic: true, bluetooth: true, fuel_type: "Diesel")
car_4.user = user
car_4.save!
car_5 = Car.new(price_per_day: 250.50, model: "Urus", brand: "Lamborghini", seats: 5, color: "Purple", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_5.user = user
car_5.save!
car_6 = Car.new(price_per_day: 250.50, model: "Aventador", brand: "Lamborghini", seats: 2, color: "Yellow", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_6.user = user
car_6.save
car_7 = Car.new(price_per_day: 175.10, model: "AMG", brand: "Mercedes", seats: 5, color: " Matte Black", automatic: true, bluetooth: true, fuel_type: "Diesel")
car_7.user = user
car_7.save
car_8 = Car.new(price_per_day: 225.25, model: "488", brand: "Ferrari", seats: 2, color: "Pink", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_8.user = user
car_8.save
car_9 = Car.new(price_per_day: 225.25, model: "mc20", brand: "Maserati", seats: 2, color: "Blue", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_9.user = user
car_9.save
car_10 = Car.new(price_per_day: 225.25, model: "Benz G-Wagon", brand: "Mercedes", seats: 4, color: "Black", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_10.user = user
car_10.save

puts "Finished"

#   end
