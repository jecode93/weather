# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
l = Location.create(name: "New York City")
l.recordings.create(temp: 32, status: "cloudy")
l.recordings.create(temp: 34, status: "rainy")
l.recordings.create(temp: 30, status: "rainy")
l.recordings.create(temp: 28, status: "cloudy")
l.recordings.create(temp: 22, status: "sunny")
