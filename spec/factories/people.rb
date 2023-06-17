FactoryBot.define do
  factory :person do
    first_name { "MyString" }
    middle_name { "MyString" }
    last_name { "MyString" }
    user_name { "MyString" }
    nationality { "MyString" }
    birth_date { "MyString" }
    currently_working_as { "MyString" }
    currently_working_at { "MyString" }
    currently_living_in { "MyString" }
    is_privately_wanted { false }
    is_publicly_wanted { false }
    is_dangerous { false }
    gender { "MyString" }
    last_seen_date { "MyString" }
    last_seen_place { "MyString" }
  end
end
