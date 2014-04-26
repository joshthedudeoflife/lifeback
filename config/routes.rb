Fithack::Application.routes.draw do

  root :to => "home#index"
  get '/thoughts/:id', to: 'thoughts#show'
  get '/challenges/:id', to: 'challenges#show'
  get '/fitness/:id', to: 'fitness#show'
  get '/rewards/:id', to: 'rewards#show'
  get '/thoughts/:id', to: 'thoughts#show'
  
end
