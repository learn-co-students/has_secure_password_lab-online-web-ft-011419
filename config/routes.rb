Rails.application.routes.draw do
  resources :users
  get '/', to: 'sessions#index', as: 'root'
  get '/login', to: 'sessions#new', as: 'login'

  post '/sessions', to: 'sessions#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
