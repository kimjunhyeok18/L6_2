Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#main'
  get 'top/main'
  get "cartitems/shows", to: "cartitems#shows"
  get "top/re", to: "top#re"
  resources :products #(テストするときはroot ʻproducts#indexʼ)
  resources :cartitems, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
end
