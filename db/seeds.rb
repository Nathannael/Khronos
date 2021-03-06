# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(email: "admin@example.org", password: "123123123")

20.times do
  Artist.create(name: Faker::Music.band).tap do |artist|
    artist.albums.create(name: Faker::Music.album, release_date: Faker::Date.forward(2.weeks), cover: Faker::Placeholdit.image("400x400", 'jpg', :random))
  end
end
