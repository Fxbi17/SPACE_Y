# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

user1 = User.create!(email: "test@test.com", password: "123456", username: "DarkVador")
user2 = User.create!(email: "test1@test.com", password: "456789", username: "JarJarBinks")
user3 = User.create!(email: "test2@test.com", password: "987654", username: "DarkSidious")

users = [user1, user2, user3]

# 10.times do
#   spaceship = Spaceship.new(
#     name: Faker::Movies::StarWars.vehicle,
#     description: "#{Faker::Movies::StarWars.quote}",
#     price: rand(1_000_000..1_000_000_000),
#   )
#   spaceship.user = users.sample
#   spaceship.save!
# end

spaceship = Spaceship.new(
  name: "X-wing",
  description: "Since the starship battles in A New Hope were modeled after real-world dogfights, X-wings fit the role
  of the quick, darting fighter planes that fought in them. Their maneuverability and the split wings that match the X
  in their name make them one of the coolest starship designs in Star Wars, utilized by the heroes of both the Original
  Trilogy and The Force Awakens. Poe Dameron’s black-and-orange T-70 is the evolution of the classic T-65, with the same
  sharp ferocity. The X-wing is the ship of heroes, and it looks the part.",
  price: 100,
  address: "Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate 3512201, Égypte"
)

spaceship.user = users.sample
spaceship.save!

# spaceship = Spaceship.create!(
#   name: "Millennium Falcon",
#   description: "Don’t panic—we didn’t forget the fastest hunk of junk in the galaxy! I’d say this is the most iconic
#   starship in all of Star Wars. At the center of the entire Original Trilogy (and it makes a look-and-you’ll-miss-it
#   cameo in the Prequels, too!), the Falcon rightfully became one of the standout icons of the Sequel Trilogy, too.",
#   price: rand(1_000_000..1_000_000_000),
#   address: "Babylone, 14140 Val-de-Vie, Irak"
# )

# spaceship = Spaceship.create!(
#   name: "Super Star Destroyer",
#   description: "You absolutely remember Darth Vader’s flagship, Executor, from The Empire Strikes Back and Return of
#   the Jedi. The ship that hunted Luke Skywalker and the Rebellion was the same one that later crashed into the Death
#   Star II’s surface during the Battle of Endor. It’s quite poetic that it’s a Rebel A-wing—one of the fleet’s smaller
#   fighters—that ultimately deals the killing blow.",
#   price: rand(1_000_000..1_000_000_000),
#   address: "Taj Mahal, Agra, Uttar Pradesh, Inde"
# )

# spaceship = Spaceship.create!(
#   name: "Snoke’s Supremacy Flagship",
#   description: "With Supreme Leader Snoke’s desire to out-Empire the Empire came an intimidating starship: the Supremacy
#   made its debut in The Last Jedi and became one of the largest vessels ever put in a Star Wars movie. Its winglike
#   shape sets it apart from the Star Destroyer dagger shape, while the black paint and narrow profile create a similar
#   aura of menace. According to canon lore, the flagship contained R&D labs and factories to build smaller vehicles and
#   weapons as well as docking bays for the fleet and living quarters for troops. The Supremacy’s finest moment might
#   have been its destruction when Admiral Holdo’s hyperspace jump created a visually striking rip through the flagship.",
#   price: rand(1_000_000..1_000_000_000),
#   address: "Machu Picchu, 08680, Pérou"
# )

# spaceships = [spaceship1, spaceship2, spaceship3, spaceship4]
