Rails.application.routes.draw do
  resources :grocery_lists
  resources :household_users
  resources :bills
  resources :grocery_items
  resources :chores
  resources :households
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#homepage'
end
