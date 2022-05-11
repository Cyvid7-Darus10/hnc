Rails.application.routes.draw do
  get 'rooms/new'
  root 'pages#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: [:show]
  resources :rooms, only: [:new, :create, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
