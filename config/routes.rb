Rails.application.routes.draw do

  resources :bookings
  root to: "areas#index"

  resources :areas
  resources :resources
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
