# frozen_string_literal: true

# app/models/person.rb
class Person < ApplicationRecord
  include PgSearch::Model

  has_many :networks
  has_many :emails

  belongs_to :user

  multisearchable against: %i[first_name middle_name last_name user_name currently_working_as currently_working_at]
end
