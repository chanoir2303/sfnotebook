# frozen_string_literal: true

# app/controllers/people_controller.rb
class PeopleController < ApplicationController
  before_action :authenticate_user!
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = current_user.people.build
  end

  def create
    @person = current_user.people.build(person_params)

    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def person_params
    params.require(:person).permit(
      :first_name,
      :middle_name,
      :last_name,
      :user_name,
      :nationality,
      :birth_date,
      :currently_working_as,
      :currently_working_at,
      :currently_living_at,
      :is_privately_wanted,
      :is_publicly_wanted,
      :is_dangerous,
      :gender,
      :last_seen_date,
      :last_seen_place
    )
  end
end
