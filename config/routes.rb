Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Horses Controller Routes
  get "/horses",       controller: "horses", action: "index"
  get "/horses/:id",   controller: "horses", action: "show"
  post "/horses",      controller: "horses", action: "create"
  patch "/horses/:id", controller: "horses", action: "update"
  delete "/horses/:id", controller: "horses", action: "destroy"
end
