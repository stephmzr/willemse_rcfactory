Rails.application.routes.draw do
  resources :attachments
  resources :contenu_commandes
  resources :detail_commandes
  resources :liste_documents
  resources :fiche_clients
  resources :recherche_clients
  devise_for :users

  root 'recherche_clients#index'
end
