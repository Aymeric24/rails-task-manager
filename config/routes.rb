Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'

  # Tout Afficher
  get 'tasks', to: 'tasks#index'

  # Créer
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # Afficher spécifique
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Editer spécifique
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  patch 'tasks/:id', to: 'tasks#update'
end
