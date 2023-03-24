Rails.application.routes.draw do
  resources :data_centers
  resources :printers
  resources :display_monitors
  resources :aios
  resources :headsets
  resources :smart_phones
  resources :laptops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
