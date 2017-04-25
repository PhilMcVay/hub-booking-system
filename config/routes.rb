Rails.application.routes.draw do

  devise_for :users
  resources :booking_details
  resources :bookings
  resources :areas
  resources :resources

  root to: "areas#index"
  
end
