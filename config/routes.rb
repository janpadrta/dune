Rails.application.routes.draw do
  resources :buildings
  resources :fields
  resources :planets
  resources :houses
  # House.subclasses.each do |klass|
  #   k = klass.name.pluralize.underscore.to_sym
  #   resources k, :controller => 'houses'
  # end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
