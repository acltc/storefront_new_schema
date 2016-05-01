Rails.application.routes.draw do
  devise_for :users
  get "/" => 'products#index'
  get "/products" => 'products#index'
  get "/products/new" => 'products#new'
  post "/products" => 'products#create'
  get "/products/:id/edit" => 'products#edit'
  delete "/products/:id" => 'products#destroy'
  patch "/products/:id" => 'products#update'
  get "/products/:id" => 'products#show'
  post "/search" => 'products#search'

  get "/carted_products", to: 'carted_products#index'
  post "/carted_products", to: 'carted_products#create'
  delete "/carted_products/:id", to: 'carted_products#destroy'

  post "/orders", to: 'orders#create'
  get "/orders/:id", to: 'orders#show'
  patch "/orders/:id", to: 'orders#update'



end
