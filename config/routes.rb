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

  post "/orders", to: 'orders#create'
  get "/orders/:id", to: 'orders#show'
end
