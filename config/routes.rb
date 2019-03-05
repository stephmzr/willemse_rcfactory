Rails.application.routes.draw do
  resources :attachments
  resources :complaints do
    member do
      get 'form_second'
      patch 'form_second_submit'
      get 'form_third'
      patch 'form_third_submit'
      post 'update_status'
      post 'cagnottage'
    end
  end
  resources :complaint_answers
  resources :interactions do
    member do
      post 'update_status'
      post 'cagnottage'
    end
  end
  resources :contenu_commandes
  resources :detail_commandes
  resources :liste_documents
  resources :fiche_clients
  resources :recherche_clients
  devise_for :users

  root 'recherche_clients#index'
end
