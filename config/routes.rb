Rails.application.routes.draw do
  get 'messages/new'
  devise_for :users
  root to: 'top#index'
  get 'items/search', to: 'items#search'
  resources :items do
    resources :comments
  end
end
