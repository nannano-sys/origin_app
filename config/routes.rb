Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
#deviseのコントローラを編集したいので上記を書きます
  root "users#index"
    resources :tweets do
      resources :comments, only:[:create]
    end
   
    resources :users do
      resources :relationships, only: [:create, :destroy]
      member do
        get :follows, :followers
      end
    end

      
end
