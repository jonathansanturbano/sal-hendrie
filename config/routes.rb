Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'goodies/index'
  get 'goodies/show'
  get 'blogs/index'
  get 'blogs/show'
  root to: 'pages#home'
  get '/bio', to: 'pages#bio', as: 'bio'
  get '/basket', to: 'pages#basket', as: 'basket'
  resources :books, only: [:index, :show]

  resources :contacts, only: [:new, :create]
  resources :fanarts, only: [:index]
  resources :goodies, only: [:index, :show]
  resources :orders, only: [:new, :create, :show]

  # TO ADD BACK BLOGS AND EVENTS
  # resources :blogs, only: [:index, :show]
  # resources :events, only: [:index]
end
