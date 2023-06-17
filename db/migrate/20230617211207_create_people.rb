# frozen_string_literal: true

# db/migrate/20230617211207_create_people.rb
class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :user_name
      t.string :nationality
      t.string :birth_date
      t.string :currently_working_as
      t.string :currently_working_at
      t.string :currently_living_in
      t.boolean :is_privately_wanted
      t.boolean :is_publicly_wanted
      t.boolean :is_dangerous
      t.string :gender
      t.string :last_seen_date
      t.string :last_seen_place

      t.timestamps
    end
  end
end
