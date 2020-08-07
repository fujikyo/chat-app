Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # こちらは削除してOKです
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end