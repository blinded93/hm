Rails.application.routes.draw do
  resources :list_items
  resources :items
  resources :lists
  resources :users
  resources :households
  resources :tasks
  resources :bills
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
