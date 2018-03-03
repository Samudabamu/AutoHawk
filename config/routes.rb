Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :users
  resources :session
  resources :pages

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'







end
