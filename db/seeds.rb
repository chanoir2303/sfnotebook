user = User.create!(email: Faker::Internet.email)

20.times do
  Person.create!(
    user_id: user.id,
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
  )
end

Email.create!([
                {
                  person_id: 1,
                  email: Faker::Internet.email
                },
                {
                  person_id: 2,
                  email: Faker::Internet.email
                },
                {
                  person_id: 3,
                  email: Faker::Internet.email
                },
                {
                  person_id: 4,
                  email: Faker::Internet.email
                },
                {
                  person_id: 5,
                  email: Faker::Internet.email
                },
                {
                  person_id: 6,
                  email: Faker::Internet.email
                },
                {
                  person_id: 7,
                  email: Faker::Internet.email
                },
                {
                  person_id: 8,
                  email: Faker::Internet.email
                },
                {
                  person_id: 9,
                  email: Faker::Internet.email
                },
                {
                  person_id: 10,
                  email: Faker::Internet.email
                },
                {
                  person_id: 11,
                  email: Faker::Internet.email
                },
                {
                  person_id: 12,
                  email: Faker::Internet.email
                },
                {
                  person_id: 13,
                  email: Faker::Internet.email
                },
                {
                  person_id: 14,
                  email: Faker::Internet.email
                },
                {
                  person_id: 15,
                  email: Faker::Internet.email
                },
                {
                  person_id: 16,
                  email: Faker::Internet.email
                },
                {
                  person_id: 17,
                  email: Faker::Internet.email
                },
                {
                  person_id: 18,
                  email: Faker::Internet.email
                },
                {
                  person_id: 19,
                  email: Faker::Internet.email
                },
                {
                  person_id: 20,
                  email: Faker::Internet.email
                },
              ])

Network.create!([
                  {
                    person_id: 1,
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
                  },
                  {
                    person_id: 2,
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
                  },
                  {
                    person_id: 3,
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
                  },
                  {
                    person_id: 4,
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
                  },
                  {
                    person_id: 5,
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
                  },
                  {
                    person_id: 6,
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
                  },
                  {
                    person_id: 7,
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
                  },
                  {
                    person_id: 8,
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
                  },
                  {
                    person_id: 9,
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
                  },
                  {
                    person_id: 10,
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
                  },
                  {
                    person_id: 11,
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
                  },
                  {
                    person_id: 12,
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
                  },
                  {
                    person_id: 13,
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
                  },
                  {
                    person_id: 14,
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
                  },
                  {
                    person_id: 15,
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
                  },
                  {
                    person_id: 16,
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
                  },
                  {
                    person_id: 17,
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
                  },
                  {
                    person_id: 18,
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
                  },
                  {
                    person_id: 19,
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
                  },
                  {
                    person_id: 20,
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
                  },
                ])

Comment.create!([
                  {
                    person_id: 1,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 2,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 3,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 4,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 5,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 6,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 7,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 8,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 9,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 10,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 11,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 12,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 13,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 14,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 15,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 16,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 17,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 18,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 19,
                    body: Faker::Movies::HarryPotter.quote
                  },
                  {
                    person_id: 20,
                    body: Faker::Movies::HarryPotter.quote
                  },
                ])
