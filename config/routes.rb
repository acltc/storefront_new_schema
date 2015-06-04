Rails.application.routes.draw do
  get "/" => 'products#index'
  get "/tacos" => 'products#index'
  get "/tacos/new" => 'products#new'
  post "/tacos" => 'products#create'
  get "/tacos/:id/edit" => 'products#edit'
  delete "/tacos/:id" => 'products#destroy'
  patch "/tacos/:id" => 'products#update'
  get "/tacos/:id" => 'products#show'
end
