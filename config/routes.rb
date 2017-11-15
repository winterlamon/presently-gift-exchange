Rails.application.routes.draw do
  resources :user_events
  resources :gifts
  resources :swaps
  resources :events
  resources :users

  get '/signup', to: 'users#new', as: 'signup'
  # get '/dashboard', to: 'users#show', as: 'user_dashboard'
  #   resources :users
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'static#home', as: 'home_path'

  root to: 'static#home'
end
