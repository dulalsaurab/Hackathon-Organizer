Rails.application.routes.draw do
  #get 'sessions/new'

  root :to => "homepage#home"
  #TODO
  get    '/signup',  to: 'users#new'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'homepage/home'

  get 'homepage/new'

  get 'homepage/create'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hackathons', to: 'hackathons#index', as: 'hackathons'
  get 'hackathons/new', to: 'hackathons#new', as: 'new_hackathon'
  post 'hackathons', to: 'hackathons#create'
  get 'hackathons/:id', to: 'hackathons#show', as: 'hackathon'
  get 'hackathons/:id/edit', to: 'hackathons#edit', as: 'edit_hackathon'
  put 'hackathons/:id', to: 'hackathons#update'
  patch 'hackathons/:id', to: 'hackathons#update'
  delete 'hackathons/:id', to: 'hackathons#destroy'

end
