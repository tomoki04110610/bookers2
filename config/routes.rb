Rails.application.routes.draw do
  resources :books, only: [:new, :index, :show]
  root  'homes#top'
  devise_for :users
  resources :users, only: [:show, :edit, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
