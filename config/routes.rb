Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'carts/index'
  root "addresses#new"
  get '/addresses', to: "addresses#index"
  get '/addresses/new', to: "addresses#new"
  get '/addresses/:id', to: "addresses#show", as: "address"

  post '/filter_address', to: "addresses#filter"
  get '/filter_address', to: "addresses#filter"
  post '/filter_subaddress', to: "addresses#subfilter"

  get '/products', to: "products#index"
  get '/products/:id', to: "products#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
