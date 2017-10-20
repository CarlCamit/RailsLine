Rails.application.routes.draw do
  devise_for :users
  resources :categorizations
  resources :categories
  resources :posts do
    resources :replies
  end

  root "posts#index"
  
end
