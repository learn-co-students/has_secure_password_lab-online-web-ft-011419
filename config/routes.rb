Rails.application.routes.draw do
  get '/welcome' , to:'welcome#home'

  

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



  resources :users ,only: [:new,:edit,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
