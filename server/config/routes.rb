Rails.application.routes.draw do
  mount Rswag::Ui::Engine, at: '/api-docs'

  resources :service_requests, only: [:show, :create, :update, :destroy]
  resources :service_providers, only: [:index]
  resources :zones, only: [:index]
  resources :categories, only: [:index]
end
