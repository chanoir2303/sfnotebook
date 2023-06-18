# frozen_string_literal: true

# app/controllers/networks_controller.rb
class NetworksController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @network = @person.networks.create(network_params)
    redirect_to person_path(@person)
  end

  private

  def network_params
    params.require(:network).permit(
    :twitter,
    :instagram,
    :facebook,
    :whatsapp,
    :snapchat,
    :discord,
    :pinterest,
    :apple,
    :google,
    :microsoft,
    :mastodon
    )
  end
end
