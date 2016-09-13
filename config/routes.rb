Rails.application.routes.draw do
  resources :fields
  resources :planets
  resources :houses
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
