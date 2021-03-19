Rails.application.routes.draw do
  resources :friend_variants
  devise_for :users
  resources :friends
  root 'home#index'
  get 'home/about'
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
