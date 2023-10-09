Rails.application.routes.draw do
  resources :restaurants
  root to: "home#index"
  devise_for :users

end
