Rails.application.routes.draw do
  # Home
  root "home#index"

  #Books routes
  get "/books", to: "books#index"
  get "/books/new", to: "books#new"
  post "/books", to: "books#create"

  #Users routes
  get "/users", to:"users#index"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
end
