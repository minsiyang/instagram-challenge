Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :users, only: [:show]
  resources :posts, only: [:new, :create]

  root 'home#index'

end
