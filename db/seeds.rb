# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Spaceship.destroy_all
User.destroy_all

user1 = User.create!(email: "test@test.com", password: "123456", username: "DarkVador")
user2 = User.create!(email: "test1@test.com", password: "456789", username: "JarJarBinks")
user3 = User.create!(email: "test2@test.com", password: "987654", username: "DarkSidious")

users = [user1, user2, user3]

10.times do
  spaceship = Spaceship.new(
    name: Faker::Movies::StarWars.vehicle,
    description: "#{Faker::Movies::StarWars.quote}",
    price: rand(1_000_000..1_000_000_000),
  )
  spaceship.user = users.sample
  spaceship.save!
end
