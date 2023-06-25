Rails.application.routes.draw do
  resources :statuses
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  devise_for :users, controllers: { registrations: 'users/registrations' }
end
