# frozen_string_literal: true

# Network belongs to a Person.
class Network < ApplicationRecord
  belongs_to :person
end
