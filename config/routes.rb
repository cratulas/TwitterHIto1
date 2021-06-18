Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'likes' , to: 'likes#create', as: "likes_create"
  post 'retweets' , to: 'retweets#create_retweet', as: "retweet_create"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :home
  resources :tweets


end
