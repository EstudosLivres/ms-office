Rails.application.routes.draw do
  get 'reports/customs', as: :customs_reports

  # Global Resources
  resources :reports
  resources :documents do
    resources :reports
  end

  # Root global default index
  root to: 'documents#index'
end