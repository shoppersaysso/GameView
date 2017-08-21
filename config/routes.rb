Rails.application.routes.draw do
  resources :reviews
  resources :consoles
  resources :genres
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
