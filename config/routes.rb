Fithack::Application.routes.draw do


devise_for :users
#devise_scope :user do
 #get "/login" => "devise/sessions#new"
 #root to: "devise/sessions#new"
#end
root :to => "home#index"
  get '/thoughts/show', to: 'thoughts#show'
  get '/my_day/show', to: 'challenges#show'
  get '/health/show', to: 'fitness#show'
  get '/rewards/show', to: 'rewards#show'
 resources :thoughts
#resouces :challenges



  
end
