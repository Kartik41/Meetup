Rails.application.routes.draw do
<<<<<<< HEAD
  resources :friend_variants
=======
  
  
>>>>>>> parent of 85fc773... Ruby gems will paginate, prawn, activestorage implemented
  devise_for :users
  resources :friends
  root 'home#index'
  get 'home/about'
<<<<<<< HEAD
 
  
=======
>>>>>>> parent of 85fc773... Ruby gems will paginate, prawn, activestorage implemented
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
