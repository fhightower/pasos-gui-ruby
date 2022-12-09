Rails.application.routes.draw do
  root "pasos#index"

  get '/pasos', to: "pasos#index"
end
