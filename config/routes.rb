Rails.application.routes.draw do
  root to: 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :posts

  get 'search', to: 'posts#index', as: 'search'
  get 'tags/:tag', to: 'posts#index', as: :tag

  # Login and Sign up routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Routes for external authentication
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
