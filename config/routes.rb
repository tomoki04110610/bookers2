Rails.application.routes.draw do
  resources :books
  root  'homes#top'
  devise_for :users
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
