Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'sessions#index', as: 'root'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'

  resources 'users'
end
