Rails.application.routes.draw do
  resources :events
  resources :groups, except: [:update, :destroy]
  devise_for :installs

  resources :users, only: [:create, :index]   
  post '/login', to: "auth#login"                      
  get '/auto_login', to: 'auth#auto_login'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
