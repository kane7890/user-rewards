Rails.application.routes.draw do

  # route for home page
  get 'welcome/index'
  # resources routes
  resources :genres
  resources :purchases, only: [:new, :create, :index]
  resources :stores do
    resources :purchases, only: [:new]
  end

  # nested routes
  resources :users, only: [:new, :create, :show, :index, :update] do
    resources :purchases, only: [:index, :new]
  end

  # KK originally implemented nested routes
  # resources :users, only: [:new, :create, :show, :index, :update] do
  #
  #   resources :purchases, only: [:index, :new]
  # end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
  #  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root '/users'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # route for facebook logging in with Omniauth
  get '/auth/facebook/callback' => 'sessions#create'
  # get '/show' => 'secrets#show'


end
