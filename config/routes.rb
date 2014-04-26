Fithack::Application.routes.draw do

  root :to => "home#index"
  get '/thoughts/show', to: 'thoughts#show'
  get '/my_day/show', to: 'challenges#show'
  get '/health/show', to: 'fitness#show'
  get '/rewards/show', to: 'rewards#show'
  get '/thoughts/show', to: 'thoughts#show'
  
end
