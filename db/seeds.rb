# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
require "open-uri"

puts "Cleaning DataBase"

Booking.destroy_all
Car.destroy_all
User.destroy_all
puts "Creating Cars"
user = User.create!(email: "test@test.com", password: "123456")
file1 = URI.open("https://modelkars.com/wp-content/uploads/GT414-AUDI-RS3-SEDAN-green-gts-models-55.webp")
file1p = URI.open("https://hips.hearstapps.com/hmg-prod/images/2024-audi-rs3-102-64a59d6780ff7.jpg?crop=0.872xw:0.799xh;0.0656xw,0.189xh&resize=980:*")
file1pp = URI.open("https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/88-audi-rs3-2021-official-reveal-saloon-interior.jpg?itok=dlfIUG8K")

file2 = URI.open("https://p7.hiclipart.com/preview/108/816/868/2017-bmw-i8-2016-bmw-i8-car-2015-bmw-i8-bmw.jpg")
file2p = URI.open("https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/2-bmw-i8-coupe-2018-uk-fd-hero-rear.jpg")
file2pp = URI.open("https://car-images.bauersecure.com/wp-images/1646/zbmw-078.jpg")

file3 = URI.open("https://i.pinimg.com/736x/e2/48/b0/e248b03b5280b4af6148f47acc1f32a4.jpg")
file3p = URI.open("https://hips.hearstapps.com/hmg-prod/images/2022-bmw-x5-black-vermilion-edition-103-1625852653.jpg?crop=1.00xw:0.918xh;0,0.0383xh&resize=980:*")
file3pp = URI.open("https://i.pinimg.com/originals/73/db/37/73db3776e930bd372550227d34540630.jpg")



file4 = URI.open("https://i.pinimg.com/originals/3c/65/e4/3c65e4cffa9ea30773735a969cdf87d0.png")
file4p = URI.open("https://images.caricos.com/a/audi/2019_audi_r8/images/2560x1440/2019_audi_r8_48_2560x1440.jpg")
file4pp = URI.open("https://i.pinimg.com/736x/3b/de/b4/3bdeb4829f2b8c11f049605fa37b77ab.jpg")

file5 = URI.open("https://www.extravagantforeigns.com/wp-content/uploads/2023/05/9-IMG_1105-removebg-preview.png")
file5p = URI.open("https://hips.hearstapps.com/hmg-prod/images/2023-lamborghini-urus-performante-142-1665754343.jpg?crop=0.671xw:1.00xh;0.282xw,0&resize=1200:*")
file5pp = URI.open("https://www.extravagantforeigns.com/wp-content/uploads/2023/05/9-IMG_1105-removebg-preview.png")

file6 = URI.open("https://banner2.cleanpng.com/20180602/byf/kisspng-lamborghini-aventador-lamborghini-gallardo-2015-la-5b1257e4425af4.0087448115279288042718.jpg")

file7 = URI.open("https://i.pinimg.com/originals/ac/c4/c8/acc4c85822a571b562b6b4070da8c2c6.png")
file8 = URI.open("https://i.pinimg.com/originals/53/25/72/532572dd9912c378cc31e048ff42cb04.png")
file9 = URI.open("https://edgecast-img.yahoo.net/mysterio/api/354BBE66ED50A0FD4EEA8D8B7DEB6BD21921346818771DFD9058704FE2C10DDC/autoblog/resizefill_w304_h228;quality_80;format_webp;cc_31536000;/https://img.vast.com/320x240/-4538908185166060269")
file10 = URI.open("https://s1.1zoom.me/big0/504/Brabus_G-Class_Mercedes-Benz_G63_800_W463_2020_580581_1280x854.jpg")

car_1 = Car.new(price_per_day: 77.50, model: "rs3", brand: "Audi", seats: 5, color: "Green", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_1.user = user
car_1.photos.attach(io: file1, filename: "rs3Small.jpeg", content_type: "image/jpeg")
car_1.photos.attach(io: file1p, filename: "2nd photo", content_type: "image/jpeg")
car_1.photos.attach(io: file1pp, filename: "2nd photo", content_type: "image/jpeg")
car_1.save!

car_2= Car.new(price_per_day: 121.75, model: "i8", brand: "BMW", seats: 2, color: "Grey", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_2.user = user
car_2.photos.attach(io: file2, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.photos.attach(io: file2p, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.photos.attach(io: file2pp, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.save!

car_3 = Car.new(price_per_day: 100.00, model: "X5", brand: "BMW", seats: 5, color: "Black", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_3.user = user
car_3.photos.attach(io: file3, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.photos.attach(io: file3p, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.photos.attach(io: file3pp, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.save!

car_4 = Car.new(price_per_day: 99.99, model: "r8", brand: "Audi", seats: 2, color: "Grey", automatic: true, bluetooth: true, fuel_type: "Diesel")
car_4.user = user
car_4.photos.attach(io: file4, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.photos.attach(io: file4p, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.photos.attach(io: file4pp, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.save!

car_5 = Car.new(price_per_day: 250.50, model: "Urus", brand: "Lamborghini", seats: 5, color: "Purple", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_5.user = user
car_5.photos.attach(io: file5, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.photos.attach(io: file5p, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.photos.attach(io: file5pp, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.save!

car_6 = Car.new(price_per_day: 250.50, model: "Aventador", brand: "Lamborghini", seats: 2, color: "Yellow", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_6.user = user
car_6.photos.attach(io: file6, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.photos.attach(io: file6p, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.photos.attach(io: file6pp, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.save

car_7 = Car.new(price_per_day: 175.10, model: "AMG", brand: "Mercedes", seats: 5, color: "Silver", automatic: true, bluetooth: true, fuel_type: "Diesel")
car_7.user = user
car_7.photos.attach(io: file7, filename: "silveramgSmall.jpeg", content_type: "image/jpeg")
car_7.photos.attach(io: file7p, filename: "silveramgSmall.jpeg", content_type: "image/jpeg")
car_7.photos.attach(io: file7pp, filename: "silveramgSmall.jpeg", content_type: "image/jpeg")
car_7.save

car_8 = Car.new(price_per_day: 225.25, model: "488", brand: "Ferrari", seats: 2, color: "Red", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_8.user = user
car_8.photos.attach(io: file8, filename: "pink488Small.jpeg", content_type: "image/jpeg")
car_8.photos.attach(io: file8p, filename: "pink488Small.jpeg", content_type: "image/jpeg")
car_8.photos.attach(io: file8pp, filename: "pink488Small.jpeg", content_type: "image/jpeg")
car_8.save

car_9 = Car.new(price_per_day: 225.25, model: "mc20", brand: "Maserati", seats: 2, color: "Blue", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_9.user = user
car_9.photos.attach(io: file9, filename: "bluemc20Small.jpeg", content_type: "image/jpeg")
car_9.photos.attach(io: file9pp, filename: "bluemc20Small.jpeg", content_type: "image/jpeg")
car_9.photos.attach(io: file9p, filename: "bluemc20Small.jpeg", content_type: "image/jpeg")
car_9.save

car_10 = Car.new(price_per_day: 225.25, model: "Benz G-Wagon", brand: "Mercedes", seats: 4, color: "Black", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_10.user = user
car_10.photos.attach(io: file10, filename: "gwagblackSmall.jpeg", content_type: "image/jpeg")
car_10.photos.attach(io: file10p, filename: "gwagblackSmall.jpeg", content_type: "image/jpeg")
car_10.photos.attach(io: file10pp, filename: "gwagblackSmall.jpeg", content_type: "image/jpeg")
car_10.save

Location.create(address: "Brixton")
Location.create(address: "Shoreditch")
Location.create(address: "Woodford Green")
Location.create(address: "Seven Sisters")

puts "Finished"

#   end
