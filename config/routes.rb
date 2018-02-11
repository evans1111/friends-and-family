Rails.application.routes.draw do
  devise_for :users
  root 'welcomes#home'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/cart', to: 'order_items#index'
  # resources :order_items, path: '/cart/items'
  resources :order_items, path: '/cart'
end
