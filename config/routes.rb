Rails.application.routes.draw do

  resources :genres
  resources :purchases
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  #  get 'sessions/new'
  resources :sessions, only: [:new, :create]


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root '/users'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # get '/show' => 'secrets#show'


end
