Rails.application.routes.draw do
  # Define routes for authentication using Devise
  devise_for :users, path: 'auth', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Add your application-specific routes below

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
end
# config/routes.rb
Rails.application.routes.draw do
  # Other routes
  
  resources :patients
end

