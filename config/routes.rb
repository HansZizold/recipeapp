Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'publicrecipes#index'

  devise_for :users

  resources :users, only: %i[index]
  resources :foods, only: %i[index new create destroy]
  resources :shoppinglist, only: %i[index]
  resources :recipes, only: %i[index new create show destroy] do
    resources :recipefoods, only: %i[index new create destroy edit update]
  end
  resources :publicrecipes, only: %i[index]
end

