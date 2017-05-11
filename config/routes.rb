Rails.application.routes.draw do

  devise_for :users

  resources :resources
  resources :areas

  resources :bookings do
    resources :details
    post :approve
    end

  root to: "areas#index"

end
