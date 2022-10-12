Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'publicrecipes#index'

  devise_for :users

  resources :users, only: %i[index]
  resources :foods, only: %i[index]
  resources :general_shopping_list, only: %i[index]
  resources :recipes, only: %i[index show destroy] do
    resources :recipe_foods, only: %i[index]
  end
  resources :publicrecipes, only: %i[index]
end
