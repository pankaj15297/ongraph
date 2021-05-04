Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root to: "home#index"
  resources :posts
end
