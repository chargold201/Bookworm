Rails.application.routes.draw do

  resources :genres
  root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'

  resources :comments
  resources :reviews
  resources :books
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
