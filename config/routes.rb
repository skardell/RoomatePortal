Rails.application.routes.draw do
  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"

  resources :grocery_lists
  resources :household_users
  resources :bills
  resources :grocery_items
  resources :chores
  resources :households
  resources :users
  resources :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#homepage'
end
