Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # This controller path will be used to login the user to the system after authenticating them
  post "/login", to: "sessions#create"
  # This controller path will be used to delete the users details from the cookies session and get logged out 
  delete "/logout", to: "sessions#destroy"
  # This controller path will be used to remember the loggeg in user even after they referesh
  get "/me", to: "users#show"
end
