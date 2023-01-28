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

user1 = User.new(email: "test@test.com", password: "123456", username: "DarkVador")
user2 = User.new(email: "test1@test.com", password: "456789", username: "JarJarBinks")
user3 = User.new(email: "test2@test.com", password: "987654", username: "DarkSidious")

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


spaceship1 = Spaceship.new(
  name: "Millennium Falcon",
  description: "Don’t panic—we didn’t forget the fastest hunk of junk in the galaxy! I’d say this is the most iconic
    starship in all of Star Wars. At the center of the entire Original Trilogy (and it makes a look-and-you’ll-miss-it
    cameo in the Prequels, too!), the Falcon rightfully became one of the standout icons of the Sequel Trilogy, too.",
  price: rand(1_000_000..1_000_000_000),
  address: "5 Av. Anatole France, 75007 Paris"
)

spaceship2 = Spaceship.new(
  name: "Super Star Destroyer",
  description: "You absolutely remember Darth Vader’s flagship, Executor, from The Empire Strikes Back and Return of
    the Jedi. The ship that hunted Luke Skywalker and the Rebellion was the same one that later crashed into the Death
    Star II’s surface during the Battle of Endor. It’s quite poetic that it’s a Rebel A-wing—one of the fleet’s smaller
    fighters—that ultimately deals the killing blow.",
  price: rand(1_000_000..1_000_000_000),
  address: "Agra, Inde"
)

spaceship3 = Spaceship.new(
  name: "Jedi Starfighter",
  description: "The Aethersprite-class light interceptor, more commonly
    known as the Jedi starfighter and popularized by Anakin and Obi-Wan. With their bright colors and
    talkative astromech droids, these ships contributed to the characters of the Jedi and looked pretty cool while
    they were doing it, especially twisting around in the beautiful Battle of Coruscant at the beginning of Revenge
    of the Sith. The Aethersprites are agile.",
  price: rand(1_000_000..1_000_000_000),
  address: "Mont Fuji, Japon"
)

spaceship4 = Spaceship.new(
  name: "N-1 Naboo Starfighter",
  description: " The bright yellow, needle-tipped Naboo fighters serve the same role as the X-Wings,
    as the front line fighters of the Naboo forces. They were used by the local Naboo Royal Security Forces
    but were more than capable of taking out a Trade Federation droid control ship..",
  price: rand(1_000_000..1_000_000_000),
  address: "Petermann Territoire du Nord 0872, Australie"
)

spaceship5 = Spaceship.new(
  name: "X-wing",
  description: "Since the starship battles in A New Hope were modeled after real-world dogfights, X-wings fit the role
    of the quick, darting fighter planes that fought in them. Their maneuverability and the split wings that match
    the X in their name make them one of the coolest starship designs in Star Wars, utilized by the heroes of both
    the Original Trilogy and The Force Awakens. Poe Dameron’s black-and-orange T-70 is the evolution of the classic
    T-65, with the same sharp ferocity. The X-wing is the ship of heroes, and it looks the part.",
  price: 100,
  address: "08680, Pérou"
)

spaceship6 = Spaceship.new(
  name: "USS ENTERPRISE",
  description: " The U.S.S. Enterprise not only performs, but outperforms in most situations.
    It regularly operates well beyond safe speed limits, some versions have the ability to split in two independent
    parts, and it can deal with extreme environments (like burning up in Earth's atmosphere or lurking under the ocean.)
    Most advanced versions can even cloak. ",
  price: 100,
  address: "Hawaï 96778"
)

spaceships = [spaceship1, spaceship2, spaceship3, spaceship4, spaceship5, spaceship6]

spaceships.each do |spaceship|
  spaceship.user = users.sample
  spaceship.save!
end
