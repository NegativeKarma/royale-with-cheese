Rails.application.routes.draw do

  get 'shop/show'

  devise_for :users
  root controller: :landing, action: :index
  post '/search', to: 'landing#search'

  resources :shopping_carts, only: [:show, :create, :update]
end
