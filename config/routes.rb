Rails.application.routes.draw do
  root 'welcomes#home'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
