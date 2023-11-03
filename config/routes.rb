Rails.application.routes.draw do
  resources :meals
  resources :ingridients
  resources :condiments
  resources :restaurants
  root to: "home#index"
  devise_for :users

end
