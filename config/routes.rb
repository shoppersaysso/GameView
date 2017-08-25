Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'application#index'
  get '/home', to: 'application#home', as: 'home'

  resources :game_attributes

  resources :games do
    resources :reviews
  end

  get '/users/sign_out', to: 'application#index'
  delete '/games/:game_id/reviews/:id', to: 'reviews#destroy', as: 'delete_review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
