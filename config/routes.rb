Rails.application.routes.draw do
  resources :user_events
  resources :gifts
  resources :swaps
  resources :events
  resources :users

  get '/dashboard', to: 'users#show', as: 'user_dashboard'
  get '/', to: 'static#home', as: 'home_path'

  root to: 'users#dashboard'
end
