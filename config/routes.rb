Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/show'
  root to: 'pages#home'
  get '/bio', to: 'pages#bio', as: 'bio'
  resources :events, only: [:index]
  resources :books, only: [:index]

  resources :contacts, only: [:new, :create]
  resources :blogs, only: [:index, :show]
  resources :fanarts, only: [:index]
end
