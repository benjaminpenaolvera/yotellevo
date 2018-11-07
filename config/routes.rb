Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users
  resources :drivers
  
  root 'home#index'
end
