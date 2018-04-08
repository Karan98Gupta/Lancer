Rails.application.routes.draw do

  devise_for :users
  resources :gigs
  root to: 'gigs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end