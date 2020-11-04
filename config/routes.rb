# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :posts

  get 'search', to: 'posts#index', as: 'search'
  get 'tags/:tag', to: 'posts#index', as: :tag

  # Login and Sign up routes
  get 'log_in', to: 'sessions#new', as: 'login'
  get 'sign_up', to: 'users#new', as: 'signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
