Rails.application.routes.draw do

  devise_for :users
  root to: 'application#index'


  resources :reviews
  resources :consoles
  resources :genres
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
