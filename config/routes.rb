Sten3::Application.routes.draw do

#devise_for :users
devise_for :users #, controllers: { sessions: 'sessions' }
devise_scope :user do #as :user
  get 'login', to: 'devise/sessions#new'
  get 'logout', to: 'devise/sessions#destroy'
  get 'registrera', to: 'devise/registrations#new'
  match 'sessions/user', to: 'devise/sessions#create'
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
  root to: "gemstones#index"
  #, name:"Home"
  match '/:controller(/:action(/:id))'
end
