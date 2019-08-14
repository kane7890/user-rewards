Rails.application.routes.draw do

  get 'welcome/index'
  resources :genres
  resources :purchases
  resources :stores
  resources :users do
    resources :stores, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
  #  get 'sessions/new'
  resources :sessions, only: [:new, :create]


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root '/users'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # get '/show' => 'secrets#show'


end
