Rails.application.routes.draw do
  root "users#index"
  #get "/users", to: "users#index"
  resources :users do
    resources :social_networks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
