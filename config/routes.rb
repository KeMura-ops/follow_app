Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :users do
    resource :follow
    resources :followings
    resources :followers
  end
end
