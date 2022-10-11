# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root 'users#index'

  resources :users, only: %i[index show] do
    resources :foods, only: %i[index show]
    resources :recipes, only: %i[index show] do
      resources :recipefoods, only: %i[create destroy]
    end
  end
end
