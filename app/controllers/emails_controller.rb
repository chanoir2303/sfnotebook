# frozen_string_literal: true

# app/controllers/emails_controller.rb
class EmailsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @email = @person.emails.create(email_params)
    redirect_to person_path(@person)
  end

  def email_params
    params.require(:email).permit(:email)
  end
end
