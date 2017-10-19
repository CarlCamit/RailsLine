Rails.application.routes.draw do
  devise_for :advisers
  devise_for :users
  resources :categorizations
  resources :categories
  resources :replies
  resources :posts
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  
end
