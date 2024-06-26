Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  




  root "games#index"

  # get "games", to: "games#index"

  # get "/games/:id", to: "games#show"

  # resources :games <- Это создает для games CRUD

  resources :games do
    resources :comments # Это создает для всех games вложенный еще ресурс comments
  end
end
