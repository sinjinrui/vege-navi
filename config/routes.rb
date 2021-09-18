Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :schedules, only: [:index]
  resources :products, only: [:index, :show]
  resources :fields, only: [:index, :show]
  resources :maps, only: [:index, :show]
end
