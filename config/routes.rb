Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :users
  resources :pages
  resources :cars
  resources :favourites

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'









end
