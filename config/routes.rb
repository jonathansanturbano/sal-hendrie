Rails.application.routes.draw do
  root to: 'pages#home'
  get '/bio', to: 'pages#bio', as: 'bio'
  resources :events, only: [:index]
  resources :books, only: [:index]

  resources :contacts, only: [:new, :create]
end
