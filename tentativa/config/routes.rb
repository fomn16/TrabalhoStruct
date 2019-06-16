Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genders
  resources :groups
  resources :users
  resources :habilities
  resources :clans
  resources :clan_members
  resources :main
  root 'main#index'
end
