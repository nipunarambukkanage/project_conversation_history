Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users

  # Root route points to the projects index page
  root "projects#index"

  # Projects resource with nested comments and status changes
  resources :projects do
    # Comments can only be created or deleted
    resources :comments, only: [ :create, :destroy ]

    # Status changes can only be created
    resources :status_changes, only: [ :create ]
  end
end
