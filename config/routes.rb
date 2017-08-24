Rails.application.routes.draw do

  devise_for :users
  root to: 'application#index'
  get '/home', to: 'application#home', as: 'home'

  resources :game_attributes

  resources :games do
    resources :reviews
  end

  get '/users/sign_out', to: 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
