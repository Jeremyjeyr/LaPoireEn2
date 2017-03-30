Rails.application.routes.draw do

	root 'static#index'

  resources :orders
  resources :products
  resources :farms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
