Sten3::Application.routes.draw do

devise_for :users
devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'logout', to: 'devise/sessions#destroy'
  get 'registrera', to: 'devise/registrations#new'
  match 'sessions/user', to: 'devise/sessions#create', via: :get
end

  resources :gemstones
  resources :energies
  resources :properties
  resources :chakras
  resources :colors
  resources :users
  resources :images
  resources :linktypes
  resources :links
  resources :roles
  root to: 'gemstones#index'
  match '/:controller(/:action(/:id))', via: :get
end
