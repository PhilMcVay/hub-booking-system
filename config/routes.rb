Rails.application.routes.draw do

  #devise_for :users
  devise_for :users, controllers: { 
  			sessions: 'users/sessions',
  			registrations: 'users/registrations' }
  
  resources :resources
  resources :areas

  resources :bookings do
    resources :details
    post :approve
    end

  root to: "areas#index"

end
