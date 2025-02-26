Rails.application.routes.draw do
  devise_for :users
  
  # Ensure Devise routes are correctly mapped
  devise_scope :user do
    root to: "devise/sessions#new"  # Make the login page the homepage
  end

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
