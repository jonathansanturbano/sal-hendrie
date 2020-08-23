Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to:'pages#home';

  get '/bio', to: 'pages#bio';
  get '/basket', to: 'baskets#show', as: 'basket';
  resources :fanarts, only: [:index]
  resources :blogs, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :events, only: [:index]
  resources :goodies, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :baskets, only: [:create, :show]
end
