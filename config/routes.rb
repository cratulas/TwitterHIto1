Rails.application.routes.draw do
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
