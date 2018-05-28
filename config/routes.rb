Rails.application.routes.draw do
  get "home#index", controller: "home", action: "index"

  resources :albums
  resources :artists
  devise_for :users
  
  root to: "albums#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
