# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


horse = Horse.new(breed: "American Painted Horse", build: "pony", color:"White, brown spots", image_url:"https://breeds.okstate.edu/horses/site-files/images/paint-2.jpg", price: 25000)
horse.save
horse = Horse.new(breed: "Arabian", build: "light", color:"Chestnut", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReVcmYEFWmjdjgHDqu_utN1eCmFGyPv_YryA&s", price: 750000)
horse.save
horse = Horse.new(breed: "Clydesdale", build: "heavy", color:"Chestnut, white legs", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlq4CTkmTMj0FXtF7DDnj16BS_zrBk2yfnKg&s", price: 100000)
horse.save
