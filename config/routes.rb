# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users, :controllers =>{registrations: 'users/registrations', sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks' }
  
  # Defined root_url for devise.
  root to: "home#index"

  resources :galleries  do
    resources :artworks
  end

  resources :artworks do
    resources :comments
  end
  
  resources :media
  resources :categories
  
end