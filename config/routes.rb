Rails.application.routes.draw do
<<<<<<< HEAD
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
>>>>>>> master
  post 'likes' , to: 'likes#create', as: "likes_create"
  post 'retweets' , to: 'retweets#create_retweet', as: "retweet_create"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :home
  resources :tweets

  root 'home#index'

end
