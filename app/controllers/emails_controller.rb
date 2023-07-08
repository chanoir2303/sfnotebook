# frozen_string_literal: true

# Handle emails registration. All emails belongs to a person.
class EmailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @emails = Email.all
  end

  def create
    @person = Person.find(params[:person_id])
    @email = @person.emails.create(email_params)
    redirect_to person_path(@person)
  end

  def email_params
    params.require(:email).permit(:email)
  end
end
