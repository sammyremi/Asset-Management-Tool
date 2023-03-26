Rails.application.routes.draw do
  resources :zone_rs
  resources :zone_qs

  root 'home#index'

  resources :zone_ns
  resources :zone_is
  resources :zone_hs
  resources :zone_es
  resources :zone_ds
  
  resources :data_centers
  resources :printers
  resources :display_monitors
  resources :aios
  resources :headsets
  resources :smart_phones
  resources :laptops

  resources :access_points
  resources :ip_phones
  resources :mice
  resources :keyboards

  resources :data_centers
  resources :printers
  resources :display_monitors
  resources :aios

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
