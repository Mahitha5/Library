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

  #Check out books
  get "/check-outs", to:"check_outs#index"
  get "/check-outs/new", to:"check_outs#new"
  post "/check-outs", to:"check_outs#create"
  delete "/check-outs/:id", to:"check_outs#delete", as: :check_out
end
