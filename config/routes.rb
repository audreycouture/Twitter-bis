Rails.application.routes.draw do
  root "static_pages#index"
  post "/", to: "static_pages#index", as: "envoi"

end
