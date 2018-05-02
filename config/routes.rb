Rails.application.routes.draw do
  #get 'sessions/new'

  root :to => "homepage#home"
  get 'homepage/:id', to: 'homepage#show', as: 'homepage'
  #TODO
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'homepage/home'

  get 'homepage/new'

  get 'homepage/create'

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get 'hackathons', to: 'hackathons#index', as: 'hackathons'
  get 'hackathons/new', to: 'hackathons#new', as: 'new_hackathon'
  post 'hackathons', to: 'hackathons#create'
  get 'hackathons/:id', to: 'hackathons#show', as: 'hackathon'
  get 'hackathons/:id/edit', to: 'hackathons#edit', as: 'edit_hackathon'
  put 'hackathons/:id', to: 'hackathons#update'
  patch 'hackathons/:id', to: 'hackathons#update'
  delete 'hackathons/:id', to: 'hackathons#destroy'

  get 'proposals', to:'proposals#index', as:'proposals'
  get 'proposals/:id', to: 'proposals#show', as: 'proposal'
  #get 'upvote/:id', to: 'proposals#upvote'

  resources :users
  resources :hackathons 
  resources :searches
  
  resources :proposals do 
    member do
      put "like", to: "proposals#upvote"
      put "dislike", to: "proposals#downvote"
    end
  end
end
