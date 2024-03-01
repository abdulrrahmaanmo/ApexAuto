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
Location.destroy_all
Car.destroy_all
User.destroy_all
puts "Creating Cars"
user = User.create!(email: "test@test.com", password: "123456")

file1 = URI.open("https://modelkars.com/wp-content/uploads/GT414-AUDI-RS3-SEDAN-green-gts-models-55.webp")
file1p = URI.open("https://hips.hearstapps.com/hmg-prod/images/2024-audi-rs3-102-64a59d6780ff7.jpg?crop=0.872xw:0.799xh;0.0656xw,0.189xh&resize=980:*")
file1pp = URI.open("https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/88-audi-rs3-2021-official-reveal-saloon-interior.jpg?itok=dlfIUG8K")

file2 = URI.open("https://img.driv.ly/11014/cc1280_032_B97.jpg")
file2p = URI.open("https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/2-bmw-i8-coupe-2018-uk-fd-hero-rear.jpg")
file2pp = URI.open("https://car-images.bauersecure.com/wp-images/1646/zbmw-078.jpg")

file3 = URI.open("https://img.freepik.com/premium-photo/car-isolated-white-background-bmw-x5-white-car-blank-clean-white-background-tu-white-black_655090-606277.jpg")
file3p = URI.open("https://www.wardsauto.com/sites/wardsauto.com/files/BMW%20X5%20rear%20quarter%20white_0.jpg")
file3pp = URI.open("https://i.pinimg.com/originals/73/db/37/73db3776e930bd372550227d34540630.jpg")

file4 = URI.open("https://images.hgmsites.net/lrg/2011-audi-r8-2-door-coupe-5-2l-man-quattro-angular-front-exterior-view_100320777_l.jpg")
file4p = URI.open("https://media.autoexpress.co.uk/image/private/s--elEXBEmj--/v1673352138/evo/2023/01/Audi%20R8%20RWD%20Performance%20eCoty%20images-4.jpg")
file4pp = URI.open("https://i.pinimg.com/736x/3b/de/b4/3bdeb4829f2b8c11f049605fa37b77ab.jpg")

file5 = URI.open("https://images.dealer.com/ddc/vehicles/2021/Lamborghini/Urus/SUV/color/Bianco%20Monocerus-T9T9-234,234,226-640-en_US.jpg")
file5p = URI.open("https://media.evo.co.uk/image/private/s--gVFpk2YS--/v1606220408/evo/2020/11/Lamborghini%20Urus%20review%20new-6.jpg")
file5pp = URI.open("https://parkers-images.bauersecure.com/wp-images/286/675x450/lamborghini-urus-04.jpg")

file6 = URI.open("https://images.dcperformance.co.uk/cars/gallardo.jpg")
file6p = URI.open("https://car-images.bauersecure.com/wp-images/1733/zlambo-004.jpg")
file6pp = URI.open("https://gvelondon.com/wp-content/uploads/2023/11/5X3A1570-scaled-1.jpg")

file7 = URI.open("https://i.pinimg.com/originals/ac/c4/c8/acc4c85822a571b562b6b4070da8c2c6.png")
file7p = URI.open("https://car-images.bauersecure.com/wp-images/4084/amggt_black_086.jpg")
file7pp = URI.open("https://car-images.bauersecure.com/wp-images/4653/mercedessl_102.jpg")

file8 = URI.open("https://i.pinimg.com/736x/e7/2d/5e/e72d5ed51994f0c2ade2eed491ba8d33.jpg")
file8p = URI.open("https://live.staticflickr.com/457/18123004660_3074b06020_b.jpg")
file8pp = URI.open("https://hips.hearstapps.com/autoweek/assets/s3fs-public/3lor8595.jpg")

file9 = URI.open("https://edgecast-img.yahoo.net/mysterio/api/354BBE66ED50A0FD4EEA8D8B7DEB6BD21921346818771DFD9058704FE2C10DDC/autoblog/resizefill_w304_h228;quality_80;format_webp;cc_31536000;/https://img.vast.com/320x240/-4538908185166060269")
file9p = URI.open("https://newsletter.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/3-maserati-mc20-2021-fd-hero-rear.jpg")
file9pp = URI.open("https://www.automotiveinteriorsworld.com/wp-content/uploads/2021/05/Maserati-MC20-2.jpg")

file10 = URI.open("https://s1.1zoom.me/big0/504/Brabus_G-Class_Mercedes-Benz_G63_800_W463_2020_580581_1280x854.jpg")
file10p = URI.open("https://luxx.miami/wp-content/uploads/2022/03/i-wkhqdps-xl.jpg")
file10pp = URI.open("https://parkers-images.bauersecure.com/wp-images/268/main-interior/930x620/18c0346_077.jpg")

car_1 = Car.new(price_per_day: 125.00, model: "rs3", brand: "Audi", seats: 5, color: "Green", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_1.user = user
 car_1.photos.attach(io: file1, filename: "rs3Small.jpeg", content_type: "image/jpeg")
car_1.photos.attach(io: file1p, filename: "2nd photo", content_type: "image/jpeg")
car_1.photos.attach(io: file1pp, filename: "2nd photo", content_type: "image/jpeg")
car_1.save!

car_2 = Car.new(price_per_day: 121.75, model: "i8", brand: "BMW", seats: 2, color: "Grey", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_2.user = user
car_2.photos.attach(io: file2, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.photos.attach(io: file2p, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.photos.attach(io: file2pp, filename: "i8greySmall.jpeg", content_type: "image/jpeg")
car_2.save!

car_3 = Car.new(price_per_day: 100.00, model: "X5", brand: "BMW", seats: 5, color: "White", automatic: false, bluetooth: true, fuel_type: "Petrol")
car_3.user = user
car_3.photos.attach(io: file3, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.photos.attach(io: file3p, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.photos.attach(io: file3pp, filename: "x5black.jpeg", content_type: "image/jpeg")
car_3.save!

car_4 = Car.new(price_per_day: 99.99, model: "r8", brand: "Audi", seats: 2, color: "Blue", automatic: true, bluetooth: true, fuel_type: "Diesel")
car_4.user = user
car_4.photos.attach(io: file4, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.photos.attach(io: file4p, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.photos.attach(io: file4pp, filename: "r8greySmall.jpeg", content_type: "image/jpeg")
car_4.save!

car_5 = Car.new(price_per_day: 250.00, model: "Urus", brand: "Lamborghini", seats: 5, color: "White", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_5.user = user
car_5.photos.attach(io: file5, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.photos.attach(io: file5p, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.photos.attach(io: file5pp, filename: "purpleurusSmall.jpeg", content_type: "image/jpeg")
car_5.save!

car_6 = Car.new(price_per_day: 250.00, model: "Aventador", brand: "Lamborghini", seats: 2, color: "Yellow", automatic: true, bluetooth: true, fuel_type: "Petrol")
car_6.user = user
car_6.photos.attach(io: file6, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.photos.attach(io: file6p, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.photos.attach(io: file6pp, filename: "yellowaventadorSmall.jpeg", content_type: "image/jpeg")
car_6.save

car_7 = Car.new(price_per_day: 175.00, model: "AMG", brand: "Mercedes", seats: 5, color: "Silver", automatic: true, bluetooth: true, fuel_type: "Diesel")
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

car_10 = Car.new(price_per_day: 225.25, model: "G-Wagon", brand: "Mercedes", seats: 4, color: "Black", automatic: true, bluetooth: true, fuel_type: "Petrol")
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
