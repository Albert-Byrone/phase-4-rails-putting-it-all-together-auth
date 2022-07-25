Rails.application.routes.draw do
  resource :recipes, only: [:index, :create]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # get 'users/recipes_controller'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
