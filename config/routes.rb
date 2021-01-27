Rails.application.routes.draw do
  root to: 'wines#index'
  resources :wines
  get 'wine_details', to: 'wines#wine_details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
