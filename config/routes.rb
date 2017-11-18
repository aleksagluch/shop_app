Rails.application.routes.draw do
  get 'cart/index'
  get 'cart/destroy'
  post 'cart/increase'
  post 'cart/decrease'


  post 'cart/add'

  root :to => "products#index"
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
