Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
