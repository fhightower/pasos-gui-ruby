Rails.application.routes.draw do
  root "pasos#index"

  resources :pasos
end
