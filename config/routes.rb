Rails.application.routes.draw do
  get 'home/index'
  resources :statuses
  
  root to: "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :projects do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
