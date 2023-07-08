# frozen_string_literal: true

# Comment belongs to a Person.
class Comment < ApplicationRecord
  belongs_to :person
end
