# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts

  get 'search', to: 'posts#index', as: 'search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
