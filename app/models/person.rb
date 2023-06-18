# frozen_string_literal: true

# app/models/person.rb
class Person < ApplicationRecord
  has_many :networks
end
