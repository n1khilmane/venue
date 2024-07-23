Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events
  resources :home, only: [ :index ]

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
