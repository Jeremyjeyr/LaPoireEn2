Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'
  get 'contact' => 'pages#contact'
   get 'about' => 'pages#about'

  resources :orders
  resources :farms do
    #post "/products/:id" => "products#add_to" , as: :add_product
    post "/products/:id" => "products#order" , as: :order_product
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
