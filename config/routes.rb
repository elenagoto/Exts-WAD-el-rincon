Rails.application.routes.draw do
  root to: 'home#index'

  get 'about-us', to: 'home#show', as: 'about_us'

  # Account related routes
  get 'account/bookmarked', to: 'account/posts#bookmarked', as: 'bookmarked'
  get 'account/profile', to: 'account#index', as: 'profile'
  get  'account', to: 'account#edit'
  post 'account', to: 'account#update'

  namespace :account do
    resources :posts, only: [:index]
  end

  
  # Post related routes
  resources :posts
  # Add comments here later

  get 'search', to: 'posts#index', as: 'search'
  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'authors/:username', to: 'users#show', as: :username
  get 'authors/:username/posts', to: 'posts#index', as: :username_posts

  # User and session related routes
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    resources :bookmarks, only: [:create, :destroy]
  end


  # Login and Sign up routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Routes for external authentication
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
