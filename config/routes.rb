Rails.application.routes.draw do
  devise_for :users, :controllers =>{  sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :galleries  do
    resources :artworks
  end

  resources :comments
  resources :media
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defined root_url for devise.
  root to: "home#index"

end
