

Rails.application.routes.draw do

  resources :events
  resources :nutrient_calcs
  resources :nutrients
  resources :appointments, :pages, :species, :categories, :grows, :pics
  devise_for :users

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
    member do
      post 'transplant'
    end
    resources :plantdats, :plant_cycles, :tasks
  end

  resources :trays do
    resources :datalogs, :tasks
  end


end
