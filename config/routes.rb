Rails.application.routes.draw do
  resources :meals
  resources :ingridients
  resources :condiments
  resources :restaurants
  root to: "home#index"
  devise_for :users
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }
  resources :user_types, only: [] do
    collection do
      get :update_frame
    end
  end
end
