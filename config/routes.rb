Rails.application.routes.draw do
  # Global Resources
  resources :reports
  resources :documents

  # Root global default index
  root to: 'documents#index'
end