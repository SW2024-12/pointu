Rails.application.routes.draw do
  get 'cartitems/new'
  resources :users
  #resources :tweets

  get 'top/main'
  post 'top/login'
  get 'top/logout'

  root 'top#main'
  
  resources :likes
  resources :products
  
  get 'carts/show'
  resources:cartitems,only:[:new,:create,:destroy]
  resources:carts,only:[:show]

end








