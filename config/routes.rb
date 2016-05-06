Rails.application.routes.draw do

  resources :tasks
  resources :datalogs
  devise_for :users
  resources :tasks
  resources :plantdats
  resources :species



  resources :plants do
    resources :plantdats
    resources :tasks
  end

  resources :trays do
    resources :datalogs
  end

  resources :categories
  resources :grows
  resources :pics


  root 'grows#index'
end
