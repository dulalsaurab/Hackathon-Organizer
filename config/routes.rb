Rails.application.routes.draw do
  root :to => "homepage#home"
  
  get 'homepage/home'

  get 'homepage/new'

  get 'homepage/create'

  get 'hackathons', to:'hackathons#index', as:'hackathons'

 
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
