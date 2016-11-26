Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :grocery_lists
  resources :household_users
  resources :bills
  resources :grocery_items
  resources :chores
  resources :households
  resources :dashboard

  root to: 'pages#homepage'
end
