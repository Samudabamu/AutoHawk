Rails.application.routes.draw do


  get '/browse' => 'cars#browse'
  get '/browse/auction' => 'cars#auction_show'

  get '/browse/:make' => 'cars#car_make_show', as: 'browse_make'
  get '/browse/:make/:model' => 'cars#car_model_show', as: 'browse_make_model'





  root :to => 'pages#index'

  resources :users
  resources :pages
  resources :cars
  resources :favourites

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/login' => 'pages#login'









end
