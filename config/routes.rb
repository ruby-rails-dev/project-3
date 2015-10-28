Rails.application.routes.draw do

  root to:"users#index" #create a welcome splash page and move homepage to there

 
  #sessions routes
  get "/sign_in", to: "sessions#new"  

  post "/sessions", to: "sessions#create"

  delete "/sessions", to: "sessions#destroy", as: "logout"

 
  resources :users 

  resources :products do
    member do
      post 'add_to_cart'
    end
  end
  resources :orders
  resources :order_product_users

  delete "/orders", to: "orders#destroy"


end







