Rails.application.routes.draw do

  devise_for :users
  resources :booking_details
  resources :resources
  resources :areas
  resources :bookings

  root to: "areas#index"

end
