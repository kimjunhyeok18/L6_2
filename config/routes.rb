Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#main'
  get 'top/main'
  resources :products #(テストするときはroot ʻproducts#indexʼ)
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
end
