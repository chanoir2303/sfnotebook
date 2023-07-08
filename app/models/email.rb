# frozen_string_literal: true

# Email belongs to a Person.
class Email < ApplicationRecord
  belongs_to :person
end
