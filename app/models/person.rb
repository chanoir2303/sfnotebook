# frozen_string_literal: true

# Person has many networks and emails and belongs to a User.
# It has a search bar using multisearchable method against selected fields.
class Person < ApplicationRecord
  include PgSearch::Model

  has_many :networks
  has_many :emails

  belongs_to :user

  multisearchable against: %i[
  first_name
  middle_name
  last_name
  user_name
  currently_working_as
  currently_working_at
  email
  twitter
  instagram
  facebook
  whatsapp
  tiktok
  snapchat
  discord
  pinterest
  apple
  google
  microsoft
  mastodon
  twitch
  kick
  adobe
  bereal
]

  def email
    emails.pluck(:email)
  end

  def twitter
    networks.pluck(:twitter)
  end

  def instagram
    networks.pluck(:instagram)
  end

  def facebook
    networks.pluck(:facebook)
  end

  def whatsapp
    networks.pluck(:whatsapp)
  end

  def tiktok
    networks.pluck(:tiktok)
  end

  def snapchat
    networks.pluck(:snapchat)
  end

  def discord
    networks.pluck(:discord)
  end

  def pinterest
    networks.pluck(:pinterest)
  end

  def apple
    networks.pluck(:apple)
  end

  def google
    networks.pluck(:google)
  end

  def microsoft
    networks.pluck(:microsoft)
  end

  def mastodon
    networks.pluck(:mastodon)
  end

  def twitch
    networks.pluck(:twitter)
  end

  def kick
    networks.pluck(:kick)
  end

  def adobe
    networks.pluck(:adobe)
  end

  def bereal
    networks.pluck(:bereal)
  end
end
