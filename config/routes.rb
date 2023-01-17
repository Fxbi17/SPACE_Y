Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :spaceships do
    resources :bookings, only:[:new, :create]
  end

  namespace :my do
    resources :bookings, only: [:show, :index]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
