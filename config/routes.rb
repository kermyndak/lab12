Rails.application.routes.draw do  
  get 'homepage/index'
  resources :users
  root 'homepage#index'
  get 'log/sign_in'
  get 'log/sign_out'
  post 'log/log'
  get 'users/new'
  get 'root/input'
  get 'root/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
