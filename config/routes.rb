Rails.application.routes.draw do

  get '/' => 'sessions#index', as: 'root'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'

  resources 'users'
end
