Rails.application.routes.draw do
  root to: 'main#index'
  resources :user_forms
end
