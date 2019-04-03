Rails.application.routes.draw do
  get '/', to: 'sessions#index', as: 'root'
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  resources :users
end
