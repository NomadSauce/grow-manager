Rails.application.routes.draw do

  resources :pages
  resources :tasks
  resources :datalogs
  devise_for :users
  resources :tasks
  resources :plantdats
  resources :species

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  authenticated :user do
    root "grows#index", as: "authenticated_root"
  end

  root 'pages#index'

  resources :plants do
    resources :plantdats
    resources :tasks
  end

  resources :trays do
    resources :datalogs
    resources :tasks
  end

  resources :categories
  resources :grows
  resources :pics

end
