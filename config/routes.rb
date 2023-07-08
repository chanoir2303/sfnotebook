# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root 'people#index'
  resources :people do
    resources :networks
    resources :emails
  end
  resources :emails
  resources :networks
end
