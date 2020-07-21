Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, onry: [:edit, :update]
  resources :rooms, only: [:new, :create, ]
end
