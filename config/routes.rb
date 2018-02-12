Rails.application.routes.draw do
  devise_for :users
  root 'welcomes#home'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges

  resources :carts do
    member do
      delete :product_delete
    end
  end

  # delete "cart/:id/product_delete", to: 'carts#product_delete'

  # resources :order_items, path: '/cart/items'
  #resources :order_items, path: '/cart'
end
