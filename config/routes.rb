Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to:'pages#home';

  get '/bio', to: 'pages#bio';
  get '/basket', to: 'baskets#show', as: 'basket';
  resources :fanarts, only: [:index]
  resources :blogs, only: [:index, :show]
  resources :books, only: [:index, :show] do
    resources :basket_items, only: [:create, :update]
  end
  resources :events, only: [:index]
  resources :goodies, only: [:index, :show] do
    resources :basket_items, only: [:create, :update]
  end
  resources :contacts, only: [:new, :create]
  resources :baskets, only: [:create, :show]
  resources :basket_items, only: [:destroy]
end
