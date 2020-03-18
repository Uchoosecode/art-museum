Rails.application.routes.draw do
  devise_for :users, { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :comments
  resources :media
  resources :categories
  resources :galleries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defined root_url for devise.
  root to: "home#index"

end
