Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'
end
