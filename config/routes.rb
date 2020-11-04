# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :users
  resources :posts

  get 'search', to: 'posts#index', as: 'search'
  get 'tags/:tag', to: 'posts#index', as: :tag

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
