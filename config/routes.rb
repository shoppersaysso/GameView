Rails.application.routes.draw do

  devise_for :users, :controllers => { sessions: 'sessions', registrations: 'registrations', omniauth_callback: "users/omniauth_callbacks" }

  root to: 'application#index'
  get '/home', to: 'users#home', as: 'home'

  resources :games do
    resources :reviews
  end

<<<<<<< HEAD
  get 'games/:id/details', to: 'games#details'
  get 'reviews/:id/content', to: 'reviews#content'
=======
  get '/games/:id/details', to: 'games#details'
  get '/games/:game_id/reviews/:id/content', to: 'reviews#content'
  get '/games/:id/game_data', to: 'games#game_data'
  get '/all_games/index', to: 'all_games#index', as: 'all_games'
  get '/all_games/:id/show', to: 'all_games#show', as: 'all_games_show'
>>>>>>> final-touches

  get '/users/sign_out', to: 'application#index'
  get '/users/index', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  delete '/games/:game_id/reviews/:id', to: 'reviews#destroy', as: 'delete_review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
