Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about' => "home#about"
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
end
end