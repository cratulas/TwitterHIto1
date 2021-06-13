Rails.application.routes.draw do
  post 'likes' , to: 'likes#create', as: "likes_create"
  # post 'tweets' , to: 'tweets#create_retweet', as: "retweets_create"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :home
  resources :tweets
  # devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
