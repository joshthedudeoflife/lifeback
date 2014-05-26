Fithack::Application.routes.draw do


devise_for :users
#devise_scope :user do
 #get "/login" => "devise/sessions#new"
 #root to: "devise/sessions#new"
#end
root :to => "home#index"
  get '/thoughts/show', to: 'thoughts#show'
  get '/my_day/show', to: 'challenges#show'
  get '/rewards/show', to: 'rewards#show'
  get '/routines/show', to: 'routines#show'

 resources :thoughts


  resources :routines do
    collection { post :import }
  end


  
end
