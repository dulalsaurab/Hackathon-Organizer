Rails.application.routes.draw do
  #get 'sessions/new'

  root :to => "homepage#home"
  #TODO
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'homepage/home'

  get 'homepage/new'

  get 'homepage/create'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end
