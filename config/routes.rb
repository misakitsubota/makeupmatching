Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  get 'items/search', to: 'items#search'
  resources :items do
    resources :comments, only: :create
  end
end
