Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :room_users
  resources :room_messages
  resources :rooms
end
