# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([{
                email: Faker::Internet.email,
              }])

10.times do
  Person.create!([{
                   user_id: 1,
                   first_name: Faker::Name.first_name,
                   middle_name: Faker::Name.middle_name,
                   last_name: Faker::Name.last_name,
                   user_name: Faker::Internet.username,
                   nationality: Faker::Nation.nationality,
                   birth_date: Faker::Date.between(from: '1980-01-01', to: '2005-01-01'),
                   currently_working_as: Faker::Job.title,
                   currently_working_at: Faker::Address.city,
                   currently_living_in: Faker::Address.city,
                   is_privately_wanted: Faker::Boolean.boolean(true_ratio: 0.5),
                   is_publicly_wanted: Faker::Boolean.boolean(true_ratio: 0.5),
                   is_dangerous: Faker::Boolean.boolean(true_ratio: 0.5),
                   gender: %w[Male Female Other].sample,
                   last_seen_date: Faker::Date.between(from: '2023-06-25', to: '2023-07-08'),
                   last_seen_place: Faker::Address.city
                 }])
end

50.times do
  Email.create!([{
                   person_id: Faker::Number.between(from: 1, to: 10),
                   email: Faker::Internet.email
                 }])
end

50.times do
  Network.create!([{
                     person_id: Faker::Number.between(from: 1, to: 10),
                     twitter: Faker::Games::WorldOfWarcraft.hero,
                     instagram: Faker::Movies::HarryPotter.character,
                     facebook: Faker::Games::Pokemon.name,
                     whatsapp: Faker::PhoneNumber.cell_phone,
                     tiktok: Faker::Games::HeroesOfTheStorm.hero,
                     snapchat: Faker::JapaneseMedia::Naruto.character,
                     discord: Faker::JapaneseMedia::StudioGhibli.character,
                     pinterest: Faker::JapaneseMedia::SwordArtOnline.game_name,
                     apple: Faker::Internet.email,
                     google: Faker::Internet.email,
                     microsoft: Faker::Internet.email,
                     mastodon: Faker::Movies::StarWars.planet,
                     twitch: Faker::Movies::LordOfTheRings.character,
                     kick: Faker::Creature::Cat.name,
                     adobe: Faker::Sports::Basketball.player,
                     bereal: Faker::FunnyName.name
                   }])
end

50.times do
  Comment.create!([{
                     person_id: Faker::Number.between(from: 1, to: 10),
                     body: Faker::Movies::HarryPotter.quote
                   }])
end
