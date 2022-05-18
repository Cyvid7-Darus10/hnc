Rails.application.routes.draw do
  get 'reservations/index'
  get 'rooms/new'
  root 'pages#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :reservations, only: [:index, :create]
  resources :users, only: [:show]
  resources :rooms, only: [:new, :create, :index, :show]
  resources :rooms do
    member do
      get :listing
      get :price
      get :description
      get :photos
      get :amenities
      get :location
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
