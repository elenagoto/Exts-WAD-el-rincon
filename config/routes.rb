Rails.application.routes.draw do
  root to: 'home#index'

  # Account related routes
  get 'account/saved', to: 'account/posts#saved', as: 'saved'

  namespace :account do
    resources :posts, only: [:index]
  end

  
  # Post related routes
  resources :posts
  # Add comments here later

  get 'search', to: 'posts#index', as: 'search'
  get 'tags/:tag', to: 'posts#index', as: :tag

  # User and session related routes
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  # Login and Sign up routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Routes for external authentication
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
