Rails.application.routes.draw do
  resources :posts
  root "post#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
