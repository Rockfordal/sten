Sten3::Application.routes.draw do
  devise_for :users
  resources :gemstones
  resources :linktypes
  resources :links
  resources :energies
  resources :properties
  resources :chakras
  resources :colors
  resources :users
  resources :roles
  resources :images
  root to: "gemstones#index"
#, name:"Home"
  match '/:controller(/:action(/:id))'
end
