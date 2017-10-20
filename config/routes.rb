Rails.application.routes.draw do

  devise_for :advisers
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :categorizations
  resources :categories
  resources :replies
  resources :posts

  #root "posts#index"
  

end
