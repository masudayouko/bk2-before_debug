Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about' => "home#about"
  get 'relationships/follower' => 'relationships#follower'
  get 'relationships/follow' => 'relationships#follow'


  resources :users do
  	member do
      get :followings
      get :followers
    end
  end

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
end