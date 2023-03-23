Rails.application.routes.draw do
  resources :access_points
  resources :ip_phones
  resources :mice
  resources :keyboards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
