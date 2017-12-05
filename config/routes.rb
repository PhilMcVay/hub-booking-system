Rails.application.routes.draw do

  #devise_for :users
  devise_for :users, controllers: { 
  			sessions: 'users/sessions',
  			registrations: 'users/registrations' }
  
  #superadmin edits other users
  #devise_for :users,: :path_prefix => 'my'
  #resources :users
  
  resources :resources
  resources :areas

  resources :bookings do
    resources :details
    post :approve
    end

  #root to: "areas#index"
  root to: "calendar#index"

end
