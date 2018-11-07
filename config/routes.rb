Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :drivers

  root 'home#index'
end
