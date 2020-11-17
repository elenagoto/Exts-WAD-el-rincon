Rails.application.routes.draw do
  scope '(:locale)', locale: /en|fr|es/ do
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
    resources :posts do
      resources :comments, only: [:create, :destroy]
    end
    # Add comments here later
    get 'search', to: 'posts#index', as: 'search'
    get 'authors/:username', to: 'users#show', as: :username
    get 'authors/:username/posts', to: 'posts#index', as: :username_posts
    get 'all-posts', to: 'posts#all_posts', as: 'all_posts'

    # Tags related routes
    resources :tags, only: [:create, :destroy]
    get 'tags/:name', to: 'posts#index', as: :name

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
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
