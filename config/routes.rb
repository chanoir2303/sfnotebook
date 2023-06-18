# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  root 'people#index'
  resources :people do
    resources :networks
    resources :emails
  end
end
