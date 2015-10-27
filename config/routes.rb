Rails.application.routes.draw do
  get 'products_orders/create'

  root to:"users#index"

  #USERS ROUTES
  get "/users", to: "users#index", as: "users" 

  get "/users/new", to: "users#new", as: "new_user"

  post "/users", to: "users#create"

  get "/users/:id", to: "users#show", as: "user"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  # The update route
  patch "/users/:id", to: "users#update" 

  #sessions routes
  get "/sign_in", to: "sessions#new"  

  post "/sessions", to: "sessions#create"




  delete "/sessions", to: "sessions#destroy", as: "logout"

  #Products routes
  resources :products do
    member do
      post 'add_to_cart'
    end
    resources :orders
  end
  resources :orders_products

  # get "/products/:id", to: "products#show", as: "product_detail"

  # get "/products", to: "products#index", as: "products_index"

  # get '/products/new', to: "products#new", as: "new_product"

  #Orders routs
  get "/orders", to: "orders#index", as: "orders_index"
  post "/orders", to: "orders#index"
end
