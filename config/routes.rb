Rails.application.routes.draw do
  resources :fiche_clients
  resources :recherche_clients
  devise_for :users

  root 'recherche_clients#index'
end
