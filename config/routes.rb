Rails.application.routes.draw do
  get 'eod/index'

  resources :buildings
  resources :fields
  resources :planets
  resources :houses
  resources :systems
  # House.subclasses.each do |klass|
  #   k = klass.name.pluralize.underscore.to_sym
  #   resources k, :controller => 'houses'
  # end
  root to: 'eod#index'

  devise_for :users, path: 'devise_users', only: :registrations, controllers: { registrations: 'duna_devise/registrations' }
  devise_for :users, skip: :registrations, controllers: { passwords: 'duna_devise/passwords', sessions: 'duna_devise/sessions', unlocks: 'duna_devise/unlocks' }
  # devise_for :users

  resources :users
end
