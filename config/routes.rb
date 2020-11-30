Rails.application.routes.draw do
  devise_for :users
  root "users#index"
    resources :tweets, only: [:index, :create, :destroy, :show, :new] do
      resources :comments, only:[:create]
    end
   
    resources :users do
      resources :relationships, only: [:create, :destroy]
      member do
        get :follows, :followers
      end
    end

      
end
