Rails.application.routes.draw do
  resources :events
  resources :groups, except: [:update, :destroy]
  devise_for :users
  devise_for :installs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
